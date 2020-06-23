- dashboard: condition_summary_dashboard
  title: Condition Summary Dashboard
  layout: newspaper
  elements:
  - title: Condition Abatement Ranges
    name: Condition Abatement Ranges
    model: fhir_data
    explore: patient_1000_fh
    type: looker_boxplot
    fields: [condition_1000_fh.condition_grouping, condition_1000_fh.min_age_at_abatement,
      condition_1000_fh.median_age_at_abatement, condition_1000_fh.max_age_at_abatement]
    filters:
      condition_1000_fh.median_age_at_abatement: ">0"
    sorts: [condition_1000_fh.median_age_at_abatement]
    limit: 500
    query_timezone: America/New_York
    color_application:
      collection_id: 0e5689e8-a574-416e-a728-97708aee2fa3
      palette_id: 6a17b45b-12ed-48a6-a29d-858cdfed6698
      options:
        steps: 5
        reverse: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: !!null '', orientation: left, series: [{axisId: condition_1000_fh.count,
            id: condition_1000_fh.count, name: Condition Occurrences}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    up_color: "#00B345"
    down_color: "#0088D2"
    total_color: "#645DAC"
    note_state: expanded
    note_display: below
    note_text: Please note that conditions without abatement dates will not be displayed
      here. Additionally, these ranges may be skewed by long-outstanding and chronic
      conditions.
    listen: {}
    row: 8
    col: 12
    width: 12
    height: 9
  - title: Condition Onset Ranges
    name: Condition Onset Ranges
    model: fhir_data
    explore: patient_1000_fh
    type: looker_boxplot
    fields: [condition_1000_fh.condition_grouping, condition_1000_fh.min_age_at_onset,
      condition_1000_fh.median_age_at_onset, condition_1000_fh.max_age_at_onset]
    sorts: [condition_1000_fh.median_age_at_onset]
    limit: 500
    query_timezone: America/New_York
    color_application:
      collection_id: 0e5689e8-a574-416e-a728-97708aee2fa3
      palette_id: 6a17b45b-12ed-48a6-a29d-858cdfed6698
      options:
        steps: 5
        reverse: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: !!null '', orientation: left, series: [{axisId: condition_1000_fh.count,
            id: condition_1000_fh.count, name: Condition Occurrences}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    up_color: "#00B345"
    down_color: "#0088D2"
    total_color: "#645DAC"
    row: 8
    col: 0
    width: 12
    height: 9
  - title: Conditions by Grouping
    name: Conditions by Grouping
    model: fhir_data
    explore: patient_1000_fh
    type: looker_grid
    fields: [condition_1000_fh.condition_grouping, condition_1000_fh.condition_text_dummy,
      patient_1000_fh.count]
    filters:
      condition_1000_fh.condition_text_dummy: "-NULL"
    sorts: [condition_1000_fh.condition_grouping]
    limit: 500
    theme: white
    show_full_field_name: true
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 0
    col: 0
    width: 12
    height: 8
  - title: Conditions Without Abatement
    name: Conditions Without Abatement
    model: fhir_data
    explore: patient_1000_fh
    type: looker_grid
    fields: [condition_1000_fh.condition_grouping, condition_1000_fh.condition_text_dummy,
      patient_1000_fh.count]
    filters:
      condition_1000_fh.condition_abatement_date: 'NULL'
      condition_1000_fh.condition_text_dummy: "-NULL"
    sorts: [condition_1000_fh.condition_grouping]
    limit: 500
    theme: white
    show_full_field_name: true
    hidden_fields: []
    series_types: {}
    y_axes: []
    listen: {}
    row: 0
    col: 12
    width: 12
    height: 8
