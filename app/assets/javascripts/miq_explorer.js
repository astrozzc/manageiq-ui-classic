/* global miqAccordionSwap miqAddNodeChildren miqAsyncAjax miqBuildCalendar miqButtons miqDeleteTreeCookies miqDomElementExists miqExpandParentNodes miqInitDashboardCols
 * miqInitAccordions miqInitMainContent miqInitToolbars miqRemoveNodeChildren miqSparkle miqSparkleOff miqTreeActivateNode miqTreeActivateNodeSilently miqTreeFindNodeByKey miqTreeObject load_c3_charts miqGtlSetExtraClasses */
ManageIQ.explorer = {};

ManageIQ.explorer.updateElement = function(element, options) {
  if (_.isString(options.legend)) {
    $('#' + element).html(options.legend);
  } else if (_.isString(options.title)) {
    $('#' + element).attr( {'title': options.title});
  } else if (_.isString(options.class)) {
    if (options.add) {
      $('#' + element).addClass(options.class);
    } else {
      $('#' + element).removeClass(options.class);
    }
  }
};

ManageIQ.explorer.buildCalendar = function(options) {
  ManageIQ.calendar.calDateFrom = _.isString(options.dateFrom) ? new Date(options.dateFrom) : undefined;
  ManageIQ.calendar.calDateTo = _.isString(options.dateTo) ? new Date(options.dateTo) : undefined;
  ManageIQ.calendar.calSkipDays = _.isObject(options.skipDays) ? options.skipDays : undefined;

  miqBuildCalendar();
};

ManageIQ.explorer.lockSidebar = function(lock) {
  $('.sidebar-pf-left').toggleClass('sidebar-disabled', lock);
};

ManageIQ.explorer.clearSearchToggle = function(show) {
  if (show) {
    $('#clear_search').show();
  } else {
    $('#clear_search').hide();
  }
};

ManageIQ.explorer.process = function(data) {
  switch (data.explorer) {
    case 'flash':
      ManageIQ.explorer.processFlash(data);
      break;
    case 'replace_right_cell':
      ManageIQ.explorer.processReplaceRightCell(data);
      break;
    case 'replace_main_div':
      ManageIQ.explorer.processReplaceMainDiv(data);
      break;
    case 'buttons':
      ManageIQ.explorer.processButtons(data);
      break;
    case 'window':
      ManageIQ.explorer.processWindow(data);
      break;
    case 'rx':
      ManageIQ.explorer.processRx(data);
      break;
    default:
  }
};

ManageIQ.explorer.processWindow = function(data) {
  if (_.isString(data.openUrl)) {
    window.open(data.openUrl);
  }
  ManageIQ.explorer.spinnerOff(data);
};

ManageIQ.explorer.processButtons = function(data) {
  ManageIQ.explorer.miqButtons(data);
};

ManageIQ.explorer.processReplaceMainDiv = function(data) {
  ManageIQ.explorer.updateRightCellText(data);
  ManageIQ.explorer.updatePartials(data);
  ManageIQ.explorer.setVisibility(data);
};

ManageIQ.explorer.processFlash = function(data) {
  ManageIQ.explorer.replacePartials(data);
  ManageIQ.explorer.spinnerOff(data);
  ManageIQ.explorer.scrollTop(data);
  ManageIQ.explorer.focus(data);

  if (!_.isUndefined(data.activateNode)) {
    miqTreeActivateNode(data.activateNode.tree, data.activateNode.node);
  }
};

ManageIQ.explorer.processRx = function(data) {
  ManageIQ.explorer.rx(data);
};

ManageIQ.explorer.replacePartials = function(data) {
  if (_.isObject(data.replacePartials)) {
    _.forEach(data.replacePartials, function(content, element) {
      if (!miqDomElementExists(element)) {
        console.error('replacePartials: #' + element + ' does not exist in the DOM');
      }

      $('#' + element).replaceWith(content);
    });
  }
};

ManageIQ.explorer.updatePartials = function(data) {
  if (_.isObject(data.updatePartials)) {
    _.forEach(data.updatePartials, function(content, element) {
      if (!miqDomElementExists(element)) {
        console.error('updatePartials: #' + element + ' does not exist in the DOM');
      }

      $('#' + element).html(content);
    });
  }
};

ManageIQ.explorer.reloadTrees = function(data) {
  if (_.isObject(data.reloadTrees)) {
    sendDataWithRx({reloadTrees: data.reloadTrees});
  }
};

ManageIQ.explorer.spinnerOff = function(data) {
  if (data.spinnerOff) {
    miqSparkle(false);
  }
};

ManageIQ.explorer.rx = function(data) {
  if (data.rx) {
    sendDataWithRx(data.rx);
  }
};

ManageIQ.explorer.scrollTop = function(data) {
  if (data.scrollTop) {
    $('#main_div').scrollTop(0);
  }
};

ManageIQ.explorer.miqButtons = function(data) {
  miqButtons(data.showMiqButtons ? 'show' : 'hide');
};

ManageIQ.explorer.focus = function(data) {
  if (_.isString(data.focus)) {
    var element = $('#' + data.focus);
    if (element.length) {
      element.focus();
    }
  }
};

ManageIQ.explorer.removePaging = function() {
  miqGtlSetExtraClasses();
};

ManageIQ.explorer.updateRightCellText = function(data) {
  if (_.isString(data.rightCellText)) {
    $('h1#explorer_title > span#explorer_title_text')
      .html(data.rightCellText);
  }
};

ManageIQ.explorer.setVisibility = function(data) {
  if (_.isObject(data.setVisibility)) {
    _.forEach(data.setVisibility, function(visible, element) {
      if ( miqDomElementExists(element) ) {
        if ( visible ) {
          $('#' + element).show();
        } else {
          $('#' + element).hide();
        }
      }
    });
  }
};

ManageIQ.explorer.processReplaceRightCell = function(data) {
  /* variables for the expression editor */
  if (_.isObject(data.expEditor)) {
    if (_.isObject(data.expEditor.first)) {
      if (!_.isUndefined(data.expEditor.first.type)) {
        ManageIQ.expEditor.first.type   = data.expEditor.first.type;
      }
      if (!_.isUndefined(data.expEditor.first.title)) {
        ManageIQ.expEditor.first.title  = data.expEditor.first.title;
      }
    }

    if (_.isObject(data.expEditor.second)) {
      if (!_.isUndefined(data.expEditor.second.type)) {
        ManageIQ.expEditor.second.type   = data.expEditor.second.type;
      }
      if (!_.isUndefined(data.expEditor.second.title)) {
        ManageIQ.expEditor.second.title  = data.expEditor.second.title;
      }
    }
  }

  ManageIQ.explorer.miqButtons(data);

  if (_.isString(data.clearTreeCookies)) {
    miqDeleteTreeCookies(data.clearTreeCookies);
  }
  if (_.isBoolean(data.treeExpandAll)) {
    ManageIQ.tree.expandAll = data.treeExpandAll;
  }
  if (_.isString(data.accordionSwap)) {
    miqAccordionSwap('#accordion .panel-collapse.collapse.in', '#' + data.accordionSwap + '_accord');
  }

  /* dealing with tree nodes */
  if (!_.isUndefined(data.addNodes)) {
    if (data.addNodes.remove) {
      miqRemoveNodeChildren(data.addNodes.activeTree, data.addNodes.key);
    }

    miqAddNodeChildren(data.addNodes.activeTree,
      data.addNodes.key,
      data.addNodes.osf,
      data.addNodes.nodes);
  }


  if (!_.isUndefined(data.deleteNode)) {
    var delNode = miqTreeFindNodeByKey(data.deleteNode.activeTree, data.deleteNode.node);
    miqTreeObject(data.deleteNode.activeTree).deleteNode(delNode);
  }

  if (_.isString(data.dashboardUrl)) {
    ManageIQ.widget.dashboardUrl = data.dashboardUrl;
  }

  if ($('#advsearchModal').hasClass('modal fade in')) {
    $('#advsearchModal').modal('hide');
  }

  ManageIQ.explorer.updatePartials(data);

  if (_.isObject(data.updateElements)) {
    _.forEach(data.updateElements, function(options, element) {
      ManageIQ.explorer.updateElement(element, options);
    });
  }

  ManageIQ.explorer.replacePartials(data);

  ManageIQ.explorer.reloadTrees(data);

  if (_.isObject(data.buildCalendar)) {
    ManageIQ.explorer.buildCalendar(data.buildCalendar);
  }

  if (data.initDashboard) {
    miqInitDashboardCols();
  }

  if (data.clearGtlListGrid) {
    ManageIQ.grids.gtl_list_grid = undefined;
  }

  ManageIQ.explorer.setVisibility(data);
  ManageIQ.explorer.scrollTop(data);
  ManageIQ.explorer.updateRightCellText(data);

  if (data.providerPaused === true) {
    $('#providerPaused').show();
  } else {
    $('#providerPaused').hide();
  }

  if (data.reportData && _.isObject(data.reportData)) {
    sendDataWithRx({initController: {
      name: data.reportData.controller_name,
      data: data.reportData.data,
    }});
  }

  if (_.isArray(data.reloadToolbars) && data.reloadToolbars.length) {
    sendDataWithRx({
      redrawToolbar: data.reloadToolbars,
    });
  } else if (_.isObject(data.reloadToolbars) && !_.isArray(data.reloadToolbars)) {
    // FIXME remove this branch completely once sure
    console.error('Found a toolbar using the obsolete path! Please report or fix');

    _.forEach(data.reloadToolbars, function(content, element) {
      $('#' + element).html(content);
    });
    miqInitToolbars();
  }

  ManageIQ.record = data.record;

  if (!_.isUndefined(data.activateNode)) {
    miqExpandParentNodes(data.activateNode.activeTree, data.activateNode.osf);
    miqTreeActivateNodeSilently(data.activateNode.activeTree, data.activateNode.osf);
  }

  if (_.isObject(data.chartData)) {
    ManageIQ.charts.chartData = data.chartData;
    load_c3_charts();
  }

  if (data.resetChanges) {
    ManageIQ.changes = null;
  }
  if (data.resetOneTrans) {
    ManageIQ.oneTransition.oneTrans = 0;
  }

  ManageIQ.explorer.focus(data);

  if (!_.isUndefined(data.clearSearch)) {
    ManageIQ.explorer.clearSearchToggle(data.clearSearch);
  }

  setTimeout(miqInitMainContent);
  miqInitAccordions();

  if (data.hideModal) {
    $('#quicksearchbox').modal('hide');
  }
  if (data.initAccords) {
    miqInitAccordions();
  }
  if (data.lockSidebar !== undefined) {
    ManageIQ.explorer.lockSidebar(data.lockSidebar);
  }

  if (data.removePaging) {
    ManageIQ.explorer.removePaging();
  }

  if (_.isString(data.ajaxUrl)) {
    miqAsyncAjax(data.ajaxUrl);
  } else {
    miqSparkleOff();
  }

  return null;
};
