Rails.application.routes.draw do
  # rubocop:disable AlignHash
  # rubocop:disable MultilineOperationIndentation
  # default routes for each controller
  default_routes = %w(
    report_data
  )

  # grouped routes
  adv_search_post = %w(
    adv_search_button
    adv_search_clear
    adv_search_load_choice
    adv_search_name_typed
    adv_search_toggle
    adv_search_text_clear
  )

  button_post = %w(
    button_create
    button_update
  )

  compare_get = %w(
    compare_miq
    compare_to_csv
    compare_to_pdf
    compare_to_txt
  )

  compare_post = %w(
    compare_cancel
    compare_choose_base
    compare_compress
    compare_miq
    compare_miq_all
    compare_miq_differences
    compare_miq_same
    compare_mode
    compare_remove
    compare_set_state
  )

  dialog_runner_post = %w(
    dialog_field_changed
    dialog_form_button_pressed
    dynamic_checkbox_refresh
    dynamic_date_refresh
    dynamic_radio_button_refresh
    dynamic_text_box_refresh
    open_url_after_dialog
  )

  discover_get_post = %w(
    discover
    discover_field_changed
  )

  drift_get = %w(
    drift
    drift_history
    drift_to_csv
    drift_to_pdf
    drift_to_txt
  )

  drift_post = %w(
    drift_all
    drift_compress
    drift_differences
    drift_history
    drift_mode
    drift_same
  )

  exp_post = %w(
    exp_button
    exp_changed
    exp_token_pressed
  )

  evm_relationship_post = %w(
    evm_relationship_field_changed
    evm_relationship_update
  )

  ownership_post = %w(
    ownership
    ownership_field_changed
    ownership_update
  )

  perf_post = %w(
    perf_chart_chooser
    perf_top_chart
  )

  policy_post = %w(
    policy_options
    policy_show_options
    policy_sim
    policy_sim_add
    policy_sim_remove
  )

  pre_prov_post = %w(
    pre_prov
    pre_prov_continue
  )

  save_post = %w(
    save_default_search
  )

  snap_post = %w(
    snap_pressed
    snap_vm
  )

  x_post = %w(
    x_button
    x_history
    x_search_by_name
    x_show
  )

  controller_routes = {
    :auth_key_pair_cloud      => {
      :get  => %w(
        download_data
        download_summary_pdf
        index
        new
        protect
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
        ems_form_choices
        download_private_key
        ownership
      ) +
        compare_get,
      :post => %w(
        button
        create
        dynamic_checkbox_refresh
        form_field_changed
        listnav_search_selected
        ownership_form_fields
        ownership_update
        protect
        quick_search
        sections_field_changed
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
        wait_for_task
      ) +
        adv_search_post +
        compare_post +
        exp_post +
        save_post
    },

    :automation_manager => {
      :get  => %w(
        download_data
        download_summary_pdf
        explorer
        form_fields
        show
        x_show
        x_button
        show_list
        tagging_edit
      ),
      :post => %w(
        accordion_select
        authentication_validate
        button
        change_tab
        delete
        edit
        explorer
        form_field_changed
        new
        provision
        quick_search
        refresh
        reload
        show
        show_list
        tagging
        tagging_edit
        tag_edit_form_field_changed
        tree_autoload
        tree_select
        cs_form_field_changed
        users
        wait_for_task
      ) +
        adv_search_post +
        exp_post +
        x_post
    },

    :availability_zone        => {
      :get  => %w(
        dialog_load
        download_data
        download_summary_pdf
        index
        perf_top_chart
        protect
        show
        show_list
        tagging_edit
      ) +
        compare_get,
      :post => %w(
        button
        listnav_search_selected
        protect
        quick_search
        sections_field_changed
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
        tl_chooser
        wait_for_task
      ) +
        adv_search_post +
        compare_post +
        dialog_runner_post +
        exp_post +
        perf_post +
        save_post
    },

    :host_aggregate           => {
      :get  => %w(
        add_host_select
        download_data
        download_summary_pdf
        edit
        host_aggregate_form_fields
        index
        new
        perf_top_chart
        protect
        remove_host_select
        show
        show_list
        tagging_edit
      ) +
        compare_get,
      :post => %w(
        add_host
        add_host_select
        button
        listnav_search_selected
        create
        protect
        quick_search
        remove_host
        remove_host_select
        sections_field_changed
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
        tl_chooser
        update
        wait_for_task
      ) +
        adv_search_post +
        compare_post +
        exp_post +
        perf_post +
        save_post
    },

    :catalog                  => {
      :get  => %w(
        catalog_item_form_fields
        copy_catalog
        download_data
        explorer
        ot_edit
        ot_orchestration_managers
        ot_show
        servicetemplates_names
        show
      ),
      :post => %w(
        ab_group_reorder
        accordion_select
        ae_tree_select
        ae_tree_select_discard
        ae_tree_select_toggle
        atomic_form_field_changed
        atomic_st_edit
        automate_button_field_changed
        playbook_options_field_changed
        explorer
        get_ae_tree_edit_key
        group_create
        group_form_field_changed
        group_reorder_field_changed
        group_update
        identify_catalog
        orchestration_template_add
        orchestration_template_copy
        orchestration_template_edit
        ot_add_form_field_changed
        ot_tags_edit
        ownership_form_fields
        ownership_update
        prov_field_changed
        reload
        resolve
        resource_delete
        save_copy_catalog
        service_dialog_from_ot_submit
        servicetemplate_edit
        servicetemplate_copy
        servicetemplate_copy_cancel
        servicetemplate_copy_saved
        sort_ds_grid
        sort_host_grid
        sort_iso_img_grid
        sort_pxe_img_grid
        sort_vc_grid
        sort_vm_grid
        st_catalog_edit
        st_catalog_form_field_changed
        st_edit
        st_form_field_changed
        st_tags_edit
        st_upload_image
        svc_catalog_provision
        tag_edit_form_field_changed
        tree_autoload
        tree_select
        x_button
        x_history
        x_show
      ) +
               button_post +
               exp_post +
               dialog_runner_post
    },

    :chargeback               => {
      :get  => %w(
        explorer
        render_csv
        render_pdf
        render_txt
        report_only
      ),
      :post => %w(
        accordion_select
        explorer
        cb_assign_field_changed
        cb_assign_update
        cb_rate_edit
        cb_rate_form_field_changed
        cb_rate_show
        cb_rates_delete
        cb_rates_list
        cb_tier_add
        cb_tier_remove
        saved_report_paging
        tree_autoload
        tree_select
        x_button
        x_show
      )
    },

    :configuration_job      => {
      :get  => %w(
        download_data
        download_summary_pdf
        index
        outputs
        parameters
        resources
        show
        show_list
        tagging_edit
        protect
      ),
      :post => %w(
        button
        outputs
        listnav_search_selected
        panel_control
        parameters
        quick_search
        resources
        sections_field_changed
        show
        show_list
        protect
        tagging_edit
        tag_edit_form_field_changed
      ) +
        adv_search_post +
        exp_post +
        save_post
    },

    :consumption                  => {
      :get => %w(
        show
      )
    },

    :cloud_object_store_container => {
      :get => %w(
        dialog_load
        download_data
        download_summary_pdf
        index
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
        new
      ),
      :post => %w(
        button
        dynamic_checkbox_refresh
        form_field_changed
        listnav_search_selected
        quick_search
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
        create
        wait_for_task
      ) + adv_search_post + exp_post + save_post + dialog_runner_post
    },

    :cloud_tenant             => {
      :get => %w(
        cloud_tenant_form_fields
        dialog_load
        download_data
        download_summary_pdf
        edit
        index
        new
        protect
        show
        show_list
        tagging_edit
      ) +
        compare_get,
      :post => %w(
        button
        listnav_search_selected
        create
        protect
        quick_search
        sections_field_changed
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
        update
        wait_for_task
      ) +
        adv_search_post +
        compare_post +
        dialog_runner_post +
        exp_post +
        save_post
    },

    :cloud_tenant_dashboard      => {
      :get => %w(
        show
        data
        recent_instances_data
        recent_images_data
        aggregate_status_data
      )
    },

    :cloud_object_store_object => {
      :get => %w(
        download_data
        download_summary_pdf
        edit
        index
        new
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
      ),
      :post => %w(
        button
        create
        dynamic_checkbox_refresh
        form_field_changed
        listnav_search_selected
        quick_search
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
        update
      ) + adv_search_post + exp_post + save_post
    },

    :cloud_volume             => {
      :get  => %w(
        dialog_load
        download_data
        download_summary_pdf
        attach
        detach
        backup_new
        backup_select
        snapshot_new
        edit
        delete_volumes
        cloud_volume_tenants
        index
        new
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
      ) +
        compare_get,
      :post => %w(
        attach_volume
        detach_volume
        backup_create
        backup_restore
        snapshot_create
        button
        create
        dynamic_checkbox_refresh
        form_field_changed
        listnav_search_selected
        quick_search
        sections_field_changed
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
        update
        wait_for_task
      ) +
        adv_search_post +
        compare_post +
        dialog_runner_post +
        exp_post +
        save_post
    },

    :cloud_volume_snapshot    => {
      :get  => %w(
        download_data
        download_summary_pdf
        index
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
      ),
      :post => %w(
        button
        dynamic_checkbox_refresh
        form_field_changed
        listnav_search_selected
        quick_search
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
      ) + adv_search_post + exp_post + save_post
    },

    :cloud_volume_backup    => {
      :get  => %w(
        volume_select
        volume_form_choices
        download_data
        edit
        index
        new
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
      ),
      :post => %w(
        backup_restore
        button
        create
        dynamic_checkbox_refresh
        form_field_changed
        listnav_search_selected
        quick_search
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
        update
        wait_for_task
      ) + adv_search_post + exp_post + save_post
    },

    :cloud_volume_type        => {
      :get  => %w(
        download_data
        index
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
      ),
      :post => %w(
        button
        dynamic_checkbox_refresh
        listnav_search_selected
        quick_search
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
        wait_for_task
      ) + adv_search_post + exp_post + save_post
    },

    :configuration            => {
      # TODO: routes for new/edit/copy buttons need to be revisited
      # TODO: so they can be changed to send up POST request instead of GET
      :get  => %w(
        change_tab
        index
        show
        timeprofile_copy
        timeprofile_edit
        timeprofile_new
        time_profile_form_fields
      ),
      :post => %w(
        button
        filters_field_changed
        form_field_changed
        theme_changed
        timeprofile_create
        timeprofile_delete
        timeprofile_field_changed
        timeprofile_update
        tree_autoload
        update
        view_selected
      )
    },

    :container                => {
      :get  => %w(
        download_data
        download_summary_pdf
        perf_top_chart
        show
        tl_chooser
        wait_for_task
        show_list
        tagging_edit
        tag_edit_form_field_changed
      ),
      :post => %w(
        accordion_select
        button
        container_form_field_changed
        show
        show_list
        tl_chooser
        wait_for_task
        quick_search
        reload
        tree_autoload
        tree_select
        tagging_edit
        tag_edit_form_field_changed
        listnav_search_selected
      ) +
               adv_search_post +
               exp_post +
               perf_post +
               save_post +
               x_post
    },

    :container_group          => {
      :get  => %w(
        dialog_load
        download_data
        download_summary_pdf
        edit
        index
        new
        perf_top_chart
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
        protect
      ),
      :post => %w(
        button
        create
        dynamic_checkbox_refresh
        form_field_changed
        listnav_search_selected
        quick_search
        sections_field_changed
        show
        show_list
        tl_chooser
        update
        wait_for_task
        tagging_edit
        tag_edit_form_field_changed
        protect
      ) +
               adv_search_post +
               exp_post +
               perf_post +
               save_post +
               dialog_runner_post
    },

    :container_node           => {
      :get  => %w(
        dialog_load
        download_data
        download_summary_pdf
        edit
        index
        new
        perf_top_chart
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
        protect
      ),
      :post => %w(
        button
        create
        dynamic_checkbox_refresh
        form_field_changed
        listnav_search_selected
        quick_search
        sections_field_changed
        show
        show_list
        tl_chooser
        update
        wait_for_task
        tagging_edit
        tag_edit_form_field_changed
        protect
        launch_cockpit
        launch_external_logging
      ) +
               adv_search_post +
               dialog_runner_post +
               exp_post +
               perf_post +
               save_post
    },

    :container_replicator     => {
      :get  => %w(
        download_data
        download_summary_pdf
        edit
        index
        new
        perf_top_chart
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
        protect
      ),
      :post => %w(
        button
        create
        dynamic_checkbox_refresh
        form_field_changed
        listnav_search_selected
        quick_search
        sections_field_changed
        show
        show_list
        tl_chooser
        update
        wait_for_task
        tagging_edit
        tag_edit_form_field_changed
        protect
      ) +
               adv_search_post +
               exp_post +
               perf_post +
               save_post
    },

    :container_image          => {
      :get  => %w(
        dialog_load
        download_data
        download_summary_pdf
        edit
        index
        new
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
        guest_applications
        openscap_rule_results
        openscap_html
        protect
      ),
      :post => %w(
        button
        create
        dynamic_checkbox_refresh
        form_field_changed
        listnav_search_selected
        quick_search
        sections_field_changed
        show
        show_list
        update
        tagging_edit
        tag_edit_form_field_changed
        guest_applications
        openscap_rule_results
        protect
      ) + adv_search_post + exp_post + save_post + dialog_runner_post
    },

    :container_image_registry => {
      :get  => %w(
        download_data
        download_summary_pdf
        edit
        index
        new
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
      ),
      :post => %w(
        button
        create
        dynamic_checkbox_refresh
        form_field_changed
        listnav_search_selected
        quick_search
        sections_field_changed
        show
        show_list
        update
        tagging_edit
        tag_edit_form_field_changed
      ) + adv_search_post + exp_post + save_post
    },

    :container_service        => {
      :get  => %w(
        download_data
        download_summary_pdf
        edit
        index
        new
        perf_top_chart
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
      ),
      :post => %w(
        button
        create
        dynamic_checkbox_refresh
        form_field_changed
        listnav_search_selected
        quick_search
        sections_field_changed
        show
        show_list
        update
        wait_for_task
        tagging_edit
        tag_edit_form_field_changed
      ) +
               adv_search_post +
               exp_post +
               perf_post +
               save_post
    },

    :container_project        => {
      :get  => %w(
        dialog_load
        download_data
        download_summary_pdf
        edit
        index
        new
        perf_top_chart
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
      ),
      :post => %w(
        button
        create
        dynamic_checkbox_refresh
        form_field_changed
        listnav_search_selected
        quick_search
        sections_field_changed
        show
        show_list
        tl_chooser
        update
        wait_for_task
        tagging_edit
        tag_edit_form_field_changed
      ) +
               adv_search_post +
               exp_post +
               perf_post +
               save_post +
               dialog_runner_post
    },

    :container_route          => {
      :get  => %w(
        download_data
        download_summary_pdf
        edit
        index
        new
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
      ),
      :post => %w(
        button
        create
        dynamic_checkbox_refresh
        form_field_changed
        listnav_search_selected
        quick_search
        sections_field_changed
        show
        show_list
        update
        tagging_edit
        tag_edit_form_field_changed
      ) + adv_search_post + exp_post + save_post
    },

    :persistent_volume        => {
      :get  => %w(
        dialog_load
        download_data
        download_summary_pdf
        edit
        index
        new
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
      ),
      :post => %w(
        button
        create
        dynamic_checkbox_refresh
        form_field_changed
        listnav_search_selected
        quick_search
        sections_field_changed
        show
        show_list
        update
        tagging_edit
        tag_edit_form_field_changed
      ) + adv_search_post + exp_post + save_post + dialog_runner_post
    },

    :container_build          => {
      :get  => %w(
        download_data
        download_summary_pdf
        edit
        index
        new
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
      ),
      :post => %w(
        button
        create
        dynamic_checkbox_refresh
        form_field_changed
        listnav_search_selected
        quick_search
        sections_field_changed
        show
        show_list
        update
        tagging_edit
        tag_edit_form_field_changed
      ) + adv_search_post + exp_post + save_post
    },

    :container_template          => {
      :get  => %w(
        dialog_load
        download_data
        download_summary_pdf
        index
        service_dialog_from_ct
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
      ),
      :post => %w(
        button
        ct_form_field_changed
        dynamic_checkbox_refresh
        form_field_changed
        listnav_search_selected
        quick_search
        sections_field_changed
        service_dialog_from_ct_submit
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
      ) + adv_search_post + exp_post + save_post + dialog_runner_post
    },

    :container_topology       => {
      :get => %w(
        show
        data
      )
    },

    :container_project_topology => {
      :get => %w(
        show
        data
      )
    },

    :network_topology         => {
      :get => %w(
        show
        data
      )
    },

    :cloud_topology         => {
      :get => %w(
        show
        data
      )
    },

    :infra_topology         => {
      :get => %w(
        show
        data
      )
    },

    :physical_infra_topology         => {
      :get => %w(
        show
        data
      )
    },

    :physical_infra_overview => {
      :get => %w(
        show
      )
    },

    :container_dashboard      => {
      :get => %w(
        show
        data
        ems_utilization_data
        heatmaps_data
        image_metrics_data
        network_metrics_data
        pod_metrics_data
        project_data
      )
    },

    :alerts_overview      => {
      :get => %w(
        show
      )
    },

    :alerts_list      => {
      :get => %w(
        show
        class_icons
      )
    },

    :alerts_most_recent      => {
      :get => %w(
        show
      )
    },

    :dashboard                => {
      :get  => %w(
        auth_error
        cockpit_redirect
        iframe
        change_tab
        index
        login
        logout
        saml_login
        oidc_login
        maintab
        render_csv
        render_pdf
        render_txt
        render_chart
        report_only
        show
        timeline
        timeline_data
        start_url
        widget_to_pdf
        widget_chart_data
        widget_menu_data
        widget_report_data
      ),
      :post => %w(
        dialog_definition
        external_authenticate
        kerberos_authenticate
        initiate_saml_login
        initiate_oidc_login
        authenticate
        change_group
        csp_report
        timeline_data
        login_retry
        reset_widgets
        tl_generate
        tree_select
        wait_for_task
        widget_add
        widget_close
        widget_dd_done
        widget_toggle_minmax
        widget_zoom
      )
    },

    :ems_cloud                => {
      :get  => %w(
        dialog_load
        discover
        download_data
        download_summary_pdf
        ems_cloud_form_fields
        protect
        show
        show_list
        sync_users
        tagging_edit
      ) +
        compare_get,
      :post => %w(
        new
        button
        create
        dynamic_checkbox_refresh
        dynamic_list_refresh
        dynamic_radio_button_refresh
        dynamic_text_box_refresh
        form_field_changed
        listnav_search_selected
        protect
        provider_type_field_changed
        quick_search
        sections_field_changed
        show
        show_list
        sync_users
        tag_edit_form_field_changed
        tagging_edit
        tl_chooser
        update
        wait_for_task
      ) +
               adv_search_post +
               compare_post +
               dialog_runner_post +
               discover_get_post +
               exp_post +
               save_post
    },

    :ems_cloud_dashboard      => {
      :get => %w(
        show
        data
        recent_instances_data
        recent_images_data
        aggregate_status_data
      )
    },

    :ems_cluster              => {
      :get  => %w(
        columns_json
        dialog_load
        download_data
        download_summary_pdf
        index
        perf_top_chart
        protect
        rows_json
        show
        show_list
        tagging_edit
      ) +
               compare_get +
               drift_get,
      :post => %w(
        button
        listnav_search_selected
        protect
        quick_search
        sections_field_changed
        show
        show_list
        tag_edit_form_field_changed
        tagging_edit
        tl_chooser
        tree_autoload
        wait_for_task
      ) +
               adv_search_post +
               compare_post +
               dialog_runner_post +
               drift_post +
               exp_post +
               perf_post +
               save_post
    },

    :ems_infra                => {
      :get  => %w(
        dialog_load
        discover
        download_data
        download_summary_pdf
        ems_infra_form_fields
        register_nodes
        introspect_nodes
        protect
        scaledown
        scaling
        show
        show_list
        tagging_edit
      ) +
               compare_get,
      :post => %w(
        new
        button
        create
        form_field_changed
        register_nodes
        introspect_nodes
        listnav_search_selected
        protect
        quick_search
        sections_field_changed
        show
        show_list
        tag_edit_form_field_changed
        tagging_edit
        tl_chooser
        tree_autoload
        update
        wait_for_task
        x_show
        scaling
        scaledown
        open_admin_ui
        open_admin_ui_done
      ) +
               adv_search_post +
               compare_post +
               dialog_runner_post +
               discover_get_post +
               exp_post +
               save_post
    },

    :ems_infra_dashboard      => {
      :get => %w(
        show
        data
        cluster_metrics_data
        ems_utilization_data
        recent_hosts_data
        recent_vms_data
        aggregate_status_data
      )
    },

    :ems_physical_infra                => {
      :get  => %w(
        discover
        download_data
        download_summary_pdf
        ems_physical_infra_form_fields
        protect
        show
        show_list
        tagging_edit
        change_password
      ),
      :post => %w(
        new
        button
        create
        listnav_search_selected
        protect
        quick_search
        show
        show_list
        tag_edit_form_field_changed
        tagging_edit
        tl_chooser
        tree_autoload
        update
        wait_for_task
        x_show
        launch_console
      ) +
               adv_search_post +
               dialog_runner_post +
               discover_get_post +
               exp_post +
               save_post
    },

    :physical_switch    =>  {
      :get  =>  %w(
        download_data
        download_summary_pdf
        show_list
        show
      ),

      :post   =>  %w(
        button
        listnav_search_selected
        show_list
        create
        create_del
        update
        update_del
        quick_search
      ) + adv_search_post + save_post,
    },

    :physical_server    =>  {
      :get  =>  %w(
        download_data
        download_summary_pdf
        perf_top_chart
        protect
        show_list
        show
        tagging_edit
        console_file
      ),

      :post   =>  %w(
        button
        show_list
        create
        create_del
        listnav_search_selected
        protect
        tagging_edit
        tag_edit_form_field_changed
        update
        update_del
        quick_search
        tl_chooser
        wait_for_task
        provision
        console
      ) +
          adv_search_post +
          exp_post +
          save_post
    },

    :physical_rack    =>  {
      :get  =>  %w(
        download_data
        perf_top_chart
        protect
        show_list
        show
      ),

      :post   =>  %w(
        button
        show_list
        quick_search
        create
        update
      )
    },

    :physical_network_port    => {
      :get  => %w(
        download_data
        show_list
        show
      ),

      :post  => %w(
        button
        show_list
      )
    },

    :physical_storage    => {
      :get  => %w(
        download_data
        show_list
        show
      ),

      :post  => %w(
        button
        show_list
        create
        update
        quick_search
      ) + adv_search_post + save_post,
    },

    :physical_chassis    => {
      :get  => %w(
        download_data
        perf_top_chart
        protect
        show_list
        show
      ),

      :post  => %w(
        button
        show_list
        quick_search
      )
    },

    :guest_device    =>  {
      :get  =>  %w(
        show_list
        show
        quick_search
      ),

      :post   =>  %w(
        button
        show_list
      ) +
          adv_search_post +
          exp_post +
          save_post
    },

    :ems_physical_infra_dashboard      => {
      :get => %w(
        show
        data
        recent_servers_data
        aggregate_status_data
        servers_group_data
      )
    },

    :ems_container            => {
      :get  => %w(
        dialog_load
        download_data
        download_summary_pdf
        perf_top_chart
        protect
        show
        show_list
        tagging_edit
        ems_container_form_fields
        tag_edit_form_field_changed
      ),
      :post => %w(
        new
        button
        create
        dynamic_checkbox_refresh
        form_field_changed
        listnav_search_selected
        protect
        quick_search
        sections_field_changed
        show
        show_list
        tl_chooser
        update
        wait_for_task
        tagging_edit
        tag_edit_form_field_changed
        launch_external_logging
      ) +
               adv_search_post +
               dialog_runner_post +
               exp_post +
               perf_post +
               save_post
    },

    :ems_network              => {
      :get  => %w(
        dialog_load
        download_data
        download_summary_pdf
        ems_network_form_fields
        index
        protect
        show_list
        tagging_edit
        tag_edit_form_field_changed
      ),
      :post => %w(
        new
        button
        create
        dynamic_checkbox_refresh
        dynamic_list_refresh
        dynamic_radio_button_refresh
        dynamic_text_box_refresh
        form_field_changed
        listnav_search_selected
        protect
        provider_type_field_changed
        quick_search
        sections_field_changed
        show_list
        tag_edit_form_field_changed
        tagging_edit
        tl_chooser
        update
        wait_for_task
      ) +
        adv_search_post +
        dialog_runner_post +
        exp_post +
        save_post
    },

    :security_group           => {
      :get  => %w(
        dialog_load
        edit
        download_data
        download_summary_pdf
        index
        new
        show
        show_list
        tagging_edit
      ) +
        compare_get,
      :post => %w(
        button
        create
        form_field_changed
        quick_search
        listnav_search_selected
        sections_field_changed
        show
        show_list
        tag_edit_form_field_changed
        tagging_edit
        update
        wait_for_task
      ) +
        adv_search_post +
        compare_post +
        save_post +
        exp_post +
        dialog_runner_post
    },

    :floating_ip              => {
      :get  => %w(
        download_data
        download_summary_pdf
        edit
        floating_ip_form_fields
        index
        networks_by_ems
        new
        show
        show_list
        tagging_edit
      ),
      :post => %w(
        button
        create
        form_field_changed
        listnav_search_selected
        quick_search
        show
        show_list
        tag_edit_form_field_changed
        tagging_edit
        update
        wait_for_task
      ) +
        adv_search_post +
        save_post +
        exp_post
    },

    :cloud_subnet             => {
      :get  => %w(
        dialog_load
        download_data
        download_summary_pdf
        cloud_subnet_form_fields
        cloud_subnet_networks_by_ems
        cloud_tenants_by_ems
        edit
        index
        new
        show
        show_list
        tagging_edit
      ) +
        compare_get,
      :post => %w(
        button
        create
        dynamic_checkbox_refresh
        form_field_changed
        listnav_search_selected
        quick_search
        sections_field_changed
        show
        show_list
        tag_edit_form_field_changed
        tagging_edit
        update
        wait_for_task
      ) +
        adv_search_post +
        compare_post +
        save_post +
        exp_post +
        dialog_runner_post
    },

    :cloud_network             => {
      :get  => %w(
        dialog_load
        download_data
        download_summary_pdf
        edit
        index
        new
        show
        show_list
        tagging_edit
      ) +
        compare_get,
      :post => %w(
        button
        create
        dynamic_checkbox_refresh
        form_field_changed
        quick_search
        listnav_search_selected
        sections_field_changed
        show
        show_list
        tag_edit_form_field_changed
        tagging_edit
        update
        wait_for_task
      ) +
        adv_search_post +
        compare_post +
        save_post +
        exp_post +
        dialog_runner_post
    },

    :network_port             => {
      :get  => %w(
        download_data
        download_summary_pdf
        index
        show
        show_list
        tagging_edit
      ),
      :post => %w(
        button
        create
        form_field_changed
        quick_search
        listnav_search_selected
        sections_field_changed
        show
        show_list
        tag_edit_form_field_changed
        tagging_edit
        update
        wait_for_task
      ) +
        adv_search_post +
        save_post +
        exp_post
    },

    :network_router           => {
      :get  => %w(
        add_interface_select
        dialog_load
        download_data
        download_summary_pdf
        edit
        index
        new
        remove_interface_select
        show
        show_list
        tagging_edit
      ) +
        compare_get,
      :post => %w(
        add_interface
        add_interface_select
        button
        create
        form_field_changed
        listnav_search_selected
        quick_search
        remove_interface
        remove_interface_select
        sections_field_changed
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
        update
        wait_for_task
      ) +
        adv_search_post +
        compare_post +
        save_post +
        exp_post +
        dialog_runner_post
    },

    :flavor                   => {
      # FIXME: Change tagging_edit to POST only; We need to remove the redirects
      # in app/controllers/application_controller/tags.rb#tag that are used in
      # a role of a method call.
      # Then remove this route from all other controllers too.
      :get  => %w(
        download_data
        download_summary_pdf
        index
        protect
        show
        show_list
        new
        tagging_edit
        ems_list
        cloud_tenants
      ) +
        compare_get,
      :post => %w(
        button
        listnav_search_selected
        protect
        quick_search
        sections_field_changed
        show
        show_list
        tag_edit_form_field_changed
        tagging_edit
      ) +
               adv_search_post +
               compare_post +
               exp_post +
               save_post
    },

    :host                     => {
      :get  => %w(
        advanced_settings
        dialog_load
        download_data
        download_summary_pdf
        edit
        filesystem_download
        filesystems
        firewall_rules
        timeline_data
        groups
        guest_applications
        host_form_fields
        host_services
        host_cloud_services
        index
        list
        new
        patches
        perf_top_chart
        protect
        show
        show_association
        show_details
        show_list
        start
        tagging_edit
        users
      ) +
               compare_get +
               discover_get_post +
               drift_get,
      :post => %w(
        advanced_settings
        button
        create
        drift_all
        drift_compress
        drift_differences
        drift_mode
        drift_same
        filesystems
        firewall_rules
        firewallrules
        form_field_changed
        groups
        guest_applications
        host_services
        host_cloud_services
        listnav_search_selected
        quick_search
        patches
        protect
        sections_field_changed
        show
        show_list
        tag_edit_form_field_changed
        tagging_edit
        tl_chooser
        tree_autoload
        update
        users
        wait_for_task
      ) +
               adv_search_post +
               compare_post +
               dialog_runner_post +
               discover_get_post +
               exp_post +
               perf_post +
               save_post
    },

    :infra_networking         => {
      :get  => %w(
        dialog_load
        download_data
        download_summary_pdf
        explorer
        hosts
        show
        show_list
        tagging
        tagging_edit
        x_show
      ),
      :post => %w(
        button
        custom_button_events
        explorer
        hosts
        listnav_search_selected
        panel_control
        quick_search
        reload
        show
        show_list
        tag_edit_form_field_changed
        tagging
        tagging_edit
        tree_select
        tree_autoload
        x_button
        x_show
        x_search_by_name
      ) +
        adv_search_post +
        exp_post +
        save_post +
        x_post +
        dialog_runner_post
    },

    :generic_object => {
      :get => %w(
        show
        show_list
        tagging_edit
      ),
      :post => %w(
        button
        tag_edit_form_field_changed
        tagging_edit
      )
    },

    :generic_object_definition => {
      :get => %w(
        custom_buttons_in_set
        download_data
        download_summary_pdf
        edit
        new
        retrieve_distinct_instances_across_domains
        service_template_ansible_playbooks
        show
        show_list
        tagging_edit
      ),
      :post => %w(
        add_button_in_group
        button
        create_del
        custom_button_group_new
        custom_button_group_edit
        custom_button_new
        custom_button_edit
        edit
        exp_button
        exp_changed
        exp_token_pressed
        listnav_search_selected
        new
        update_del
        quick_search
        show_list
        tag_edit_form_field_changed
        tagging_edit
        tree_select
        x_show
      ) +
        adv_search_post +
        save_post
    },

    :ansible_credential => {
      :get => %w(
        download_data
        download_summary_pdf
        edit
        new
        show
        show_list
        tagging_edit
      ),
      :post => %w(
        button
        show_list
        tag_edit_form_field_changed
        tagging_edit
      )
    },

    :ansible_playbook => {
      :get => %w(
        download_data
        download_summary_pdf
        show
        show_list
        tagging_edit
      ),
      :post => %w(
        button
        show_list
        tag_edit_form_field_changed
        tagging_edit
      )
    },

    :ansible_repository => {
      :get => %w(
        download_data
        download_summary_pdf
        edit
        new
        show
        show_list
        tagging_edit
      ),
      :post => %w(
        button
        edit
        new
        repository_refresh
        show_list
        tag_edit_form_field_changed
        tagging_edit
      )
    },

    :miq_ae_class             => {
      :get  => %w(
        explorer
        method_form_fields
        namespace
      ),
      :post => %w(
        add_update_method
        ae_tree_select
        ae_tree_select_toggle
        change_tab
        copy_objects
        create
        create_instance
        create_method
        create_namespace
        domains_priority_edit
        embedded_methods_add
        embedded_methods_remove
        explorer
        expand_toggle
        field_accept
        field_delete
        field_method_accept
        field_method_delete
        field_method_select
        field_select
        fields_form_field_changed
        fields_seq_edit
        fields_seq_field_changed
        form_copy_objects_field_changed
        form_field_changed
        form_instance_field_changed
        form_method_field_changed
        priority_form_field_changed
        refresh_git_domain
        reload
        tree_select
        tree_autoload
        update
        update_fields
        update_instance
        update_method
        update_namespace
        validate_method_data
        x_button
        x_history
        x_show
      ) + adv_search_post +
        exp_post
    },
    :miq_ae_customization     => {
      :get  => %w(
        dialog_accordion_json
        explorer
        editor
        export_service_dialogs
        show
      ),
      :post => %w(
        ab_group_reorder
        accordion_select
        automate_button_field_changed
        playbook_options_field_changed
        cancel_import
        change_tab
        dialog_copy_editor
        dialog_edit_editor
        dialog_new_editor
        dialog_list
        enablement_expression
        visibility_expression
        explorer
        group_create
        group_form_field_changed
        group_reorder_field_changed
        group_update
        import_service_dialogs
        old_dialogs_form_field_changed
        old_dialogs_list
        old_dialogs_update
        reload
        resolve
        tree_autoload
        tree_select
        upload_import_file
        x_button
        x_history
        x_show
      ) +
               button_post + exp_post
    },

    :miq_ae_tools             => {
      :get  => %w(
        automate_json
        check_git_task
        export_datastore
        fetch_log
        import_export
        log
        resolve
        review_import
      ),
      :post => %w(
        button
        cancel_import
        form_field_changed
        import_automate_datastore
        import_via_git
        reset_datastore
        resolve
        retrieve_git_datastore
        upload
        upload_import_file
        wait_for_task
      )
    },

    :utilization              => {
      :get  => %w(
        index
        report_download
        timeline_data
      ),
      :post => %w(
        change_tab
        chart_chooser
        tree_autoload
        tree_select
        wait_for_task
      )
    },

    :miq_policy               => {
      :get  => %w(
        explorer
        export
        fetch_log
        fetch_yaml
        get_json
        import
        log
        rsop
      ),
      :post => %w(
        accordion_select
        action_edit
        action_field_changed
        action_get_all
        action_tag_pressed
        alert_delete
        alert_edit
        alert_field_changed
        alert_get_all
        alert_profile_assign
        alert_profile_assign_changed
        alert_profile_delete
        alert_profile_edit
        alert_profile_field_changed
        button
        condition_edit
        condition_field_changed
        event_edit
        export
        export_field_changed
        import
        policy_edit
        policy_get_all
        policy_field_changed
        profile_edit
        profile_field_changed
        quick_search
        reload
        rsop
        rsop_option_changed
        rsop_show_options
        rsop_toggle
        tree_autoload
        tree_select
        upload
        wait_for_task
      ) +
               adv_search_post +
               exp_post +
               x_post
    },

    :miq_request              => {
      # FIXME: Change stamp to POST only; We need to remove the redirect
      :get  => %w(
        index
        post_install_callback
        pre_prov
        prov_copy
        prov_edit
        show
        show_list
        stamp
      ),
      :post => %w(
        button
        filter
        post_install_callback
        pre_prov
        prov_continue
        prov_edit
        prov_field_changed
        prov_load_tab
        prov_show_option
        request_copy
        request_edit
        retrieve_email
        show_list
        sort_configured_system_grid
        sort_ds_grid
        sort_host_grid
        sort_iso_img_grid
        sort_pxe_img_grid
        sort_template_grid
        sort_vc_grid
        sort_vm_grid
        sort_windows_image_grid
        stamp
        stamp_field_changed
        vm_pre_prov
        upload
      ) +
               dialog_runner_post
    },

    :miq_task                 => {
      :get  => %w(
        change_tab
        index
        jobs
        tasks_show_option
      ),
      :post => %w(
        button
        jobs
        tasks_button
        tasks_change_options
      )
    },

    :miq_template             => {
      :get  => %w(
        download_summary_pdf
        edit
        show
        ownership
      ),
      :post => %w(
        edit
        edit_vm
        form_field_changed
        ownership_form_fields
        show
      ) +
               ownership_post
    },

    :ems_block_storage              => {
      :get  => %w(
        dialog_load
        download_data
        download_summary_pdf
        edit
        ems_storage_form_fields
        index
        new
        protect
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
      ),
      :post => %w(
        button
        create
        dynamic_checkbox_refresh
        dynamic_list_refresh
        dynamic_radio_button_refresh
        dynamic_text_box_refresh
        form_field_changed
        listnav_search_selected
        protect
        provider_type_field_changed
        quick_search
        sections_field_changed
        show
        show_list
        quick_search
        tag_edit_form_field_changed
        tagging_edit
        tl_chooser
        update
        wait_for_task
      ) +
        adv_search_post +
        dialog_runner_post +
        exp_post +
        save_post
    },

    :ems_object_storage              => {
      :get  => %w(
        dialog_load
        download_data
        download_summary_pdf
        edit
        ems_storage_form_fields
        index
        new
        protect
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
      ),
      :post => %w(
        button
        create
        dynamic_checkbox_refresh
        dynamic_list_refresh
        dynamic_radio_button_refresh
        dynamic_text_box_refresh
        form_field_changed
        listnav_search_selected
        protect
        provider_type_field_changed
        quick_search
        sections_field_changed
        show
        show_list
        tag_edit_form_field_changed
        tagging_edit
        tl_chooser
        update
        wait_for_task
      ) +
        adv_search_post +
        dialog_runner_post +
        exp_post +
        save_post
    },

    :ems_storage              => {
      :get  => %w(
        dialog_load
        download_data
        download_summary_pdf
        edit
        ems_storage_form_fields
        index
        new
        protect
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
      ),
      :post => %w(
        button
        create
        dynamic_checkbox_refresh
        dynamic_list_refresh
        dynamic_radio_button_refresh
        dynamic_text_box_refresh
        form_field_changed
        listnav_search_selected
        protect
        provider_type_field_changed
        quick_search
        sections_field_changed
        show
        show_list
        tag_edit_form_field_changed
        tagging_edit
        tl_chooser
        update
        wait_for_task
      ) +
        adv_search_post +
        dialog_runner_post +
        exp_post +
        save_post
    },

    :ops                      => {
      :get  => %w(
        dialog_load
        explorer
        fetch_audit_log
        fetch_build
        fetch_log
        fetch_production_log
        log_collection_form_fields
        log_protocol_changed
        pglogical_subscriptions_form_fields
        schedule_form_fields
        show
        show_product_update
        tenant_quotas_form_fields
        tenant_form_fields
      ),
      :post => %w(
        accordion_select
        activate
        apply_imports
        ap_ce_delete
        ap_ce_select
        ap_edit
        ap_form_field_changed
        ap_set_active_tab
        aps_list
        automate_schedules_set_vars
        button
        category_delete
        category_edit
        category_field_changed
        category_update
        ce_accept
        ce_delete
        ce_new_cat
        ce_select
        change_tab
        cu_collection_field_changed
        cu_collection_update
        cu_repair
        cu_repair_field_changed
        db_backup
        db_backup_form_field_changed
        db_gc_collection
        db_list
        diagnostics_server_list
        diagnostics_tree_select
        edit_rhn
        explorer
        fetch_build
        fetch_target_ids
        forest_accept
        forest_delete
        forest_form_field_changed
        forest_select
        help_menu_form_field_changed
        invalidate_miq_product_feature_caches
        label_tag_mapping_delete
        label_tag_mapping_edit
        label_tag_mapping_update
        label_tag_mapping_field_changed
        log_depot_edit
        log_depot_field_changed
        log_depot_validate
        orphaned_records_delete
        perf_chart_chooser
        pglogical_save_subscriptions
        pglogical_validate_subscription
        product_updates_list
        rbac_group_edit
        rbac_group_field_changed
        rbac_group_load_tab
        rbac_group_seq_edit
        rbac_group_user_lookup
        rbac_groups_list
        rbac_role_edit
        rbac_role_field_changed
        rbac_roles_list
        rbac_tags_edit
        rbac_tenant_edit
        rbac_tenants_list
        rbac_tenant_manage_quotas
        rbac_user_edit
        rbac_user_field_changed
        rbac_users_list
        region_edit
        region_form_field_changed
        repo_default_name
        restart_server
        rhn_buttons
        rhn_default_server
        rhn_validate
        schedule_edit
        schedule_form_field_changed
        schedule_form_filter_type_field_changed
        schedules_list
        schedule_update
        settings_form_field_changed
        settings_update
        settings_update_help_menu
        show
        show_product_update
        smartproxy_affinity_field_changed
        tag_edit_form_field_changed
        tl_chooser
        tree_autoload
        tree_select
        update
        upload_csv
        upload_form_field_changed
        upload_login_brand
        upload_login_logo
        upload_logo
        upload_favicon
        validate_replcation_worker
        wait_for_task
        x_button
        x_show
        zone_edit
        zone_field_changed
        ls_select
        ls_delete
      ) + exp_post + dialog_runner_post
    },

    :optimization => {
      :get => %w[
        index
        show_list
        show
        json_list
      ],
      :post => %w[
        queue_report
      ],
    },

    :orchestration_stack      => {
      :get  => %w(
        cloud_networks
        dialog_load
        download_data
        download_summary_pdf
        retirement_info
        index
        outputs
        parameters
        resources
        retire
        show
        show_list
        stacks_ot_info
        tagging_edit
        protect
      ) +
        compare_get,
      :post => %w(
        button
        cloud_networks
        outputs
        listnav_search_selected
        parameters
        quick_search
        resources
        retire
        sections_field_changed
        show
        show_list
        stacks_ot_copy
        protect
        tagging_edit
        tag_edit_form_field_changed
      ) +
               adv_search_post +
               compare_post +
               exp_post +
               save_post +
               dialog_runner_post
    },

    :provider_foreman         => {
      :get  => %w(
        download_data
        download_summary_pdf
        explorer
        form_fields
        show
        show_list
        tagging_edit
      ),
      :post => %w(
        accordion_select
        authentication_validate
        button
        change_tab
        delete
        edit
        explorer
        form_field_changed
        new
        provision
        quick_search
        refresh
        reload
        show
        show_list
        tagging
        tagging_edit
        tag_edit_form_field_changed
        tree_autoload
        tree_select
        cs_form_field_changed
        users
        wait_for_task
        x_button
      ) +
               adv_search_post +
               exp_post +
               x_post
    },

    :pxe                      => {
      :get  => %w(
        explorer
      ),
      :post => %w(
        accordion_select
        explorer
        iso_datastore_create
        iso_datastore_form_field_changed
        iso_datastore_list
        iso_image_edit
        iso_img_form_field_changed
        log_depot_validate
        pxe_image_edit
        pxe_image_type_edit
        pxe_image_type_form_field_changed
        pxe_image_type_list
        pxe_img_form_field_changed
        pxe_server_async_cred_validation
        pxe_server_list
        pxe_wimg_edit
        pxe_wimg_form_field_changed
        reload
        template_create_update
        template_form_field_changed
        template_list
        tree_autoload
        tree_select
        x_button
        x_history
      )
    },

    :report                   => {
      :get  => %w(
        dashboard_get
        db_copy
        db_widget_dd_done
        download_report
        explorer
        export_widgets
        miq_report_edit
        miq_report_new
        preview_chart
        preview_timeline
        render_chart
        report_only
        sample_chart
        sample_timeline
        send_report_data
        tree_autoload
        tree_select
      ),
      :post => %w(
        accordion_select
        change_tab
        create
        dashboard_render
        db_copy
        db_edit
        db_form_field_changed
        db_seq_edit
        db_widget_dd_done
        db_widget_remove
        discard_changes
        explorer
        export_field_changed
        filter_change
        form_field_changed
        get_report
        import_widgets
        menu_editor
        menu_field_changed
        menu_folder_message_display
        menu_update
        miq_report_edit
        reload
        rep_change_tab
        saved_report_paging
        schedule_edit
        schedule_form_field_changed
        show_preview
        show_saved
        tree_autoload
        tree_select
        upload
        upload_widget_import_file
        wait_for_task
        widget_edit
        widget_form_field_changed
        widget_shortcut_dd_done
        widget_shortcut_remove
        widget_shortcut_reset
        x_button
        x_history
        x_show
      ) +
               exp_post
    },

    :resource_pool            => {
      :get  => %w(
        download_data
        download_summary_pdf
        index
        protect
        show
        show_list
        tagging_edit
      ) +
        compare_get,
      :post => %w(
        button
        listnav_search_selected
        protect
        sections_field_changed
        show
        show_list
        tagging_edit
        tag_edit_form_field_changed
        tree_autoload
        quick_search
      ) +
               adv_search_post +
               compare_post +
               exp_post +
               save_post
    },

    :restful_redirect => {
      :get => %w(
        index
      )
    },

    :service                  => {
      :get  => %w(
        dialog_load
        download_data
        edit
        explorer
        retirement_info
        reconfigure_form_fields
        retire
        service_form_fields
        show
        generic_object
        tagging_edit
      ),
      :post => %w(
        button
        explorer
        listnav_search_selected
        ownership_field_changed
        ownership_update
        quick_search
        reload
        retire
        service_edit
        service_tag
        show
        generic_object
        show_list
        tag_edit_form_field_changed
        tagging_edit
        tree_autoload
        tree_select
        x_button
        x_history
        x_show
        ownership_form_fields
        wait_for_task
      ) +
               dialog_runner_post +
               adv_search_post +
               exp_post +
               save_post +
               x_post
    },

    :storage                  => {
      :get  => %w(
        button
        debris_files
        dialog_load
        disk_files
        download_data
        download_summary_pdf
        explorer
        files
        perf_chart_chooser
        protect
        show
        show_list
        snapshot_files
        tagging_edit
        tree_select
        vm_ram_files
        vm_misc_files
        x_show
      ) +
               compare_get,
      :post => %w(
        accordion_select
        button
        debris_files
        explorer
        files
        listnav_search_selected
        disk_files
        perf_chart_chooser
        protect
        quick_search
        reload
        sections_field_changed
        show
        show_association
        show_details
        show_list
        storage_list
        storage_pod_list
        snapshot_files
        tag_edit_form_field_changed
        tagging
        tagging_edit
        tree_autoload
        tree_select
        vm_misc_files
        vm_ram_files
        wait_for_task
        x_search_by_name
        x_show
      ) +
               adv_search_post +
               compare_post +
               dialog_runner_post +
               exp_post +
               save_post +
               x_post
    },

    :support                  => {
      :get  => %w(index)
    },

    :vm                       => {
      :get  => %w(
        download_data
        download_summary_pdf
        edit
        retirement_info
        ownership
        policy_sim
        reconfigure
        reconfigure_form_fields
        resize
        resize_form_fields
        evacuate
        evacuate_form_fields
        live_migrate
        live_migrate_form_fields
        associate_floating_ip
        associate_floating_ip_form_fields
        disassociate_floating_ip
        disassociate_floating_ip_form_fields
        add_security_group
        remove_security_group
        rename_vm
        retire
        right_size
        show
        show_list
      ),
      :post => %w(
        edit_vm
        form_field_changed
        name_changed
        policy_sim
        policy_sim_add
        policy_sim_cancel
        policy_sim_remove
        provision
        reconfigure
        reconfigure_form_fields
        reconfigure_update
        resize_vm
        evacuate_vm
        live_migrate_vm
        associate_floating_ip_vm
        disassociate_floating_ip_vm
        rename_vm
        retire
        right_size
        set_checked_items
        show_list
        tree_autoload
        genealogy_tree_selected
        ownership_update
        wait_for_task
        ownership_form_fields
      ) +
               ownership_post +
               pre_prov_post
    },

    :vm_cloud                 => {
      :get  => %w(
        download_data
        download_summary_pdf
        drift_to_csv
        drift_to_pdf
        drift_to_txt
        explorer
        filesystem_download
        retirement_info
        reconfigure_form_fields
        launch_html5_console
        launch_vmrc_console
        perf_chart_chooser
        protect
        retire
        right_size_print
        show
        tagging_edit
        resize
        resize_form_fields
        migrate
        live_migrate_form_fields
        attach
        detach
        evacuate
        evacuate_form_fields
        associate_floating_ip
        associate_floating_ip_form_fields
        disassociate_floating_ip
        disassociate_floating_ip_form_fields
        add_security_group
        remove_security_group
      ) +
               compare_get,
      :post => %w(
        advanced_settings
        accordion_select
        button
        edit_vm
        resize_vm
        resize_field_changed
        event_logs
        explorer
        launch_html5_console
        launch_cockpit
        filesystems
        filesystem_drivers
        form_field_changed
        guest_applications
        groups
        html5_console
        kernel_drivers
        linux_initprocesses
        ownership_field_changed
        ownership_update
        patches
        perf_chart_chooser
        policies
        processes
        protect
        prov_edit
        prov_field_changed
        quick_search
        registry_items
        reload
        retire
        reconfigure_update
        scan_histories
        sections_field_changed
        security_groups
        sort_template_grid
        floating_ips
        network_routers
        network_ports
        cloud_subnets
        cloud_networks
        cloud_volumes
        show
        tagging_edit
        tag_edit_form_field_changed
        tl_chooser
        tree_autoload
        tree_select
        users
        vm_pre_prov
        wait_for_task
        win32_services
        live_migrate_vm
        attach_volume
        detach_volume
        evacuate_vm
        ownership_update
        associate_floating_ip_vm
        disassociate_floating_ip_vm
        ownership_form_fields
      ) +
               adv_search_post +
               compare_post +
               dialog_runner_post +
               drift_post +
               evm_relationship_post +
               exp_post +
               policy_post +
               pre_prov_post +
               snap_post +
               x_post
    },

    :vm_infra                 => {
      :get  => %w(
        download_data
        download_summary_pdf
        drift_to_csv
        drift_to_pdf
        drift_to_txt
        explorer
        filesystem_download
        retirement_info
        reconfigure_form_fields
        right_size_print
        launch_html5_console
        launch_vmrc_console
        perf_chart_chooser
        policies
        protect
        retire
        show
        tagging_edit
      ) +
               compare_get,
      :post => %w(
        accordion_select
        advanced_settings
        button
        edit_vm
        event_logs
        explorer
        filesystems
        filesystem_drivers
        form_field_changed
        guest_applications
        groups
        kernel_drivers
        linux_initprocesses
        name_changed
        ownership_field_changed
        ownership_update
        patches
        perf_chart_chooser
        policies
        protect
        processes
        prov_edit
        prov_field_changed
        quick_search
        reconfigure_field_changed
        reconfigure_update
        registry_items
        reload
        rename_vm
        retire
        scan_histories
        sections_field_changed
        security_groups
        show
        show_list
        sort_ds_grid
        sort_host_grid
        sort_iso_img_grid
        sort_vc_grid
        sort_template_grid
        sort_vm_grid
        tagging_edit
        tag_edit_form_field_changed
        tl_chooser
        tree_autoload
        tree_select
        users
        vmrc_console
        launch_cockpit
        vm_pre_prov
        vm_vdi
        html5_console
        wait_for_task
        win32_services
        ownership_update
        ownership_form_fields
      ) +
               adv_search_post +
               compare_post +
               dialog_runner_post +
               drift_post +
               evm_relationship_post +
               exp_post +
               policy_post +
               pre_prov_post +
               snap_post +
               x_post
    },

    :vm_or_template           => {
      :get  => %w(
        download_data
        download_summary_pdf
        drift_to_csv
        drift_to_pdf
        drift_to_txt
        explorer
        launch_html5_console
        launch_vmrc_console
        retirement_info
        reconfigure_form_fields
        policies
        protect
        retire
        show
        tagging_edit
        util_report_download
        utilization
        vm_show
      ) +
               compare_get,
      :post => %w(
        accordion_select
        advanced_settings
        button
        drift_all
        drift_differences
        drift_history
        drift_mode
        drift_same
        edit_vm
        event_logs
        explorer
        filesystem_drivers
        filesystems
        form_field_changed
        groups
        guest_applications
        kernel_drivers
        linux_initprocesses
        name_changed
        ownership_field_changed
        ownership_update
        patches
        perf_chart_chooser
        policies
        processes
        protect
        prov_edit
        prov_field_changed
        quick_search
        reconfigure_field_changed
        reconfigure_update
        registry_items
        reload
        rename_vm
        retire
        scan_histories
        sections_field_changed
        security_groups
        floating_ips
        network_routers
        network_ports
        cloud_subnets
        cloud_networks
        cloud_volumes
        show
        sort_ds_grid
        sort_host_grid
        sort_iso_img_grid
        sort_vc_grid
        tagging_edit
        tag_edit_form_field_changed
        tl_chooser
        tree_select
        users
        util_chart_chooser
        vm_pre_prov
        vmrc_console
        html5_console
        wait_for_task
        win32_services
        x_button
        x_history
        x_search_by_name
        x_show
        ownership_update
        ownership_form_fields
      ) +
               adv_search_post +
               compare_post +
               dialog_runner_post +
               evm_relationship_post +
               exp_post +
               policy_post +
               pre_prov_post +
               snap_post
    },

    :firmware_registry => {
      :get => %w[
        download_data
        download_summary_pdf
        show
        show_list
      ],
      :post => %w[
        show_list
      ]
    },

    :firmware_binary => {
      :get => %w[
        download_data
        download_summary_pdf
        show
      ]
    },

    :firmware_target => {
      :get => %w[
        download_data
        download_summary_pdf
        show
      ]
    },
  }

  if Rails.env.development?
    controller_routes[:graphql_explorer] = {
      :get  => %w(index),
      :post => %w()
    }
  end

  root :to => 'dashboard#login'

  # Let's serve pictures directly from the DB
  get '/pictures/:basename' => 'picture#show', :basename => /[\da-zA-Z]+\.[\da-zA-Z]+/

  get '/saml_login(/*path)' => 'dashboard#saml_login'
  get '/oidc_login(/*path)' => 'dashboard#oidc_login'

  # ping response for load balancing
  get '/ping' => 'ping#index'

  controller_routes.each do |controller_name, controller_actions|
    # Default route with no action to controller's index action
    unless [
      :ems_cloud, :ems_infra, :ems_physical_infra, :ems_container, :ems_network
    ].include?(controller_name)
      match controller_name.to_s, :controller => controller_name, :action => :index, :via => :get
    end

    default_routes.each do |action_name|
      post "#{controller_name}/#{action_name}(/:id)",
          :action     => action_name,
          :controller => controller_name
    end

    # One-by-one get/post routes for defined controllers
    if controller_actions.kind_of?(Hash)
      unless controller_actions[:get].nil?
        controller_actions[:get].each do |action_name|
          get "#{controller_name}/#{action_name}(/:id)",
              :action     => action_name,
              :controller => controller_name
        end
      end

      unless controller_actions[:post].nil?
        controller_actions[:post].each do |action_name|
          post "#{controller_name}/#{action_name}(/:id)",
               :action     => action_name,
               :controller => controller_name
        end
      end
    end
  end

  # API-like JSON trees
  get '/tree/automate_entrypoint', :to => 'tree#automate_entrypoint'
  get '/tree/automate_inline_methods', :to => 'tree#automate_inline_methods'

  # pure-angular templates
  get '/static/*id' => 'static#show', :format => false

  # prevent No route matches [GET] "/favicon.ico"
  get '/favicon.ico' => 'static#favicon', :format => false

  resources :ems_cloud,          :as => :ems_clouds
  resources :ems_infra,          :as => :ems_infras
  resources :ems_physical_infra, :as => :ems_physical_infras
  resources :ems_container,      :as => :ems_containers
  resources :ems_network,        :as => :ems_networks
end
