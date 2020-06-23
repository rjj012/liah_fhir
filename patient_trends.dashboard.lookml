- dashboard: patient_trends
  title: Patient Trends
  layout: newspaper
  elements:
  - title: BMI Trend
    name: BMI Trend
    model: fhir_data
    explore: patient_1000_fh
    type: looker_line
    fields: [observation_1000_fh.issued_date, observation_1000_fh.body_mass_index]
    fill_fields: [observation_1000_fh.issued_date]
    sorts: [observation_1000_fh.issued_date]
    limit: 500
    dynamic_fields: [{table_calculation: null_filter, label: Null Filter, expression: "${observation_1000_fh.body_mass_index}\
          \ > 0", value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}]
    query_timezone: America/New_York
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_points_if_no: [null_filter]
    hidden_fields: []
    y_axes: []
    listen:
      Patient Name: patient__name.full_name
    row: 36
    col: 0
    width: 12
    height: 6
  - title: Blood Pressure Over Time
    name: Blood Pressure Over Time
    model: fhir_data
    explore: patient_1000_fh
    type: looker_line
    fields: [observation_1000_fh.issued_date, observation__component.average_diastolic_blood_pressure,
      observation__component.average_systolic_blood_pressure]
    fill_fields: [observation_1000_fh.issued_date]
    sorts: [observation_1000_fh.issued_date]
    limit: 500
    dynamic_fields: [{table_calculation: null_filter, label: Null Filter, expression: "${observation__component.average_diastolic_blood_pressure}\
          \ > 0", value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}]
    query_timezone: America/New_York
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_points_if_no: [null_filter]
    hidden_fields: []
    y_axes: []
    listen:
      Patient Name: patient__name.full_name
    row: 30
    col: 16
    width: 8
    height: 6
  - title: Cholesterol Over Time
    name: Cholesterol Over Time
    model: fhir_data
    explore: patient_1000_fh
    type: looker_line
    fields: [observation_1000_fh.issued_date, observation_1000_fh.cholesterol]
    fill_fields: [observation_1000_fh.issued_date]
    sorts: [observation_1000_fh.issued_date]
    limit: 500
    dynamic_fields: [{table_calculation: null_filter, label: Null Filter, expression: "${observation_1000_fh.cholesterol}\
          \ > 0", value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}]
    query_timezone: America/New_York
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_points_if_no: [null_filter]
    hidden_fields: []
    y_axes: []
    listen:
      Patient Name: patient__name.full_name
    row: 24
    col: 0
    width: 16
    height: 6
  - title: Glucose Over Time
    name: Glucose Over Time
    model: fhir_data
    explore: patient_1000_fh
    type: looker_line
    fields: [observation_1000_fh.issued_date, observation_1000_fh.glucose]
    fill_fields: [observation_1000_fh.issued_date]
    sorts: [observation_1000_fh.issued_date]
    limit: 500
    dynamic_fields: [{table_calculation: null_filter, label: Null Filter, expression: "${observation_1000_fh.glucose}\
          \ > 0", value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}]
    query_timezone: America/New_York
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_points_if_no: [null_filter]
    hidden_fields: []
    y_axes: []
    listen:
      Patient Name: patient__name.full_name
    row: 30
    col: 0
    width: 16
    height: 6
  - title: Height Over Time
    name: Height Over Time
    model: fhir_data
    explore: patient_1000_fh
    type: looker_line
    fields: [observation_1000_fh.issued_date, observation_1000_fh.height]
    fill_fields: [observation_1000_fh.issued_date]
    sorts: [observation_1000_fh.issued_date]
    limit: 500
    dynamic_fields: [{table_calculation: null_filter, label: Null Filter, expression: "${observation_1000_fh.height}\
          \ > 0", value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}]
    query_timezone: America/New_York
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_points_if_no: [null_filter]
    hidden_fields: []
    y_axes: []
    listen:
      Patient Name: patient__name.full_name
    row: 24
    col: 16
    width: 8
    height: 6
  - title: Weight Over Time
    name: Weight Over Time
    model: fhir_data
    explore: patient_1000_fh
    type: looker_line
    fields: [observation_1000_fh.issued_date, observation_1000_fh.weight]
    fill_fields: [observation_1000_fh.issued_date]
    sorts: [observation_1000_fh.issued_date]
    limit: 500
    dynamic_fields: [{table_calculation: null_filter, label: Null Filter, expression: "${observation_1000_fh.weight}\
          \ > 0", value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}]
    query_timezone: America/New_York
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_points_if_no: [null_filter]
    hidden_fields: []
    y_axes: []
    listen:
      Patient Name: patient__name.full_name
    row: 36
    col: 12
    width: 12
    height: 6
  - title: Patient Timeline of Conditions
    name: Patient Timeline of Conditions
    model: fhir_data
    explore: patient_1000_fh
    type: looker_timeline
    fields: [condition_1000_fh.condition_text_dummy, condition_1000_fh.condition_onset_date,
      condition_1000_fh.condition_abatement_date, condition_1000_fh.condition_abatement_timeline]
    sorts: [condition_1000_fh.condition_onset_date]
    limit: 500
    dynamic_fields: [{table_calculation: days_of_condition, label: Days of Condition,
        expression: 'diff_days(${condition_1000_fh.condition_onset_date}, ${condition_1000_fh.condition_abatement_timeline})',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: dimension,
        _type_hint: number}, {table_calculation: null_filter, label: Null Filter,
        expression: "${days_of_condition} >0", value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, _type_hint: yesno}]
    query_timezone: America/New_York
    color_application:
      collection_id: 0e5689e8-a574-416e-a728-97708aee2fa3
      custom:
        id: c5cdd7d2-14d2-fe5c-128e-7387341b3664
        label: Custom
        type: continuous
        stops:
        - color: "#0919ff"
          offset: 0
        - color: "#cb11d6"
          offset: 50
        - color: "#bf0a31"
          offset: 100
      options:
        steps: 5
        reverse: true
    groupBars: true
    labelSize: 10pt
    showLegend: false
    series_types: {}
    hidden_fields: [condition_1000_fh.condition_abatement_date]
    hidden_points_if_no: [null_filter]
    y_axes: []
    listen:
      Patient Name: patient__name.full_name
    row: 10
    col: 0
    width: 24
    height: 14
  - name: "<b>Patient History</b>"
    type: text
    title_text: "<b>Patient History</b>"
    row: 8
    col: 0
    width: 24
    height: 2
  - title: Most Recent Glucose Level
    name: Most Recent Glucose Level
    model: fhir_data
    explore: patient_1000_fh
    type: single_value
    fields: [observation_1000_fh.issued_date, observation_1000_fh.glucose, observation_1000_fh.value_quantity_unit]
    sorts: [observation_1000_fh.issued_date desc]
    limit: 10
    dynamic_fields: [{table_calculation: null_filter, label: Null Filter, expression: "${observation_1000_fh.glucose}\
          \ > 0", value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}, {table_calculation: test, label: Test, expression: 'concat(${observation_1000_fh.glucose},"
          ",${observation_1000_fh.value_quantity_unit})', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: string}]
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_points_if_no: [null_filter]
    series_types: {}
    hidden_fields: [observation_1000_fh.glucose, observation_1000_fh.value_quantity_unit]
    y_axes: []
    listen:
      Patient Name: patient__name.full_name
    row: 0
    col: 8
    width: 8
    height: 4
  - title: Cholesterol
    name: Cholesterol
    model: fhir_data
    explore: patient_1000_fh
    type: single_value
    fields: [observation_1000_fh.issued_date, observation_1000_fh.cholesterol, observation_1000_fh.value_quantity_unit]
    sorts: [observation_1000_fh.issued_date desc]
    limit: 10
    dynamic_fields: [{table_calculation: null_filter, label: Null Filter, expression: "${observation_1000_fh.cholesterol}\
          \ > 0", value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}, {table_calculation: cholesterol, label: Cholesterol, expression: 'concat(${observation_1000_fh.cholesterol},"
          ",${observation_1000_fh.value_quantity_unit})', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: string}]
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_points_if_no: [null_filter]
    hidden_fields: [observation_1000_fh.cholesterol, observation_1000_fh.value_quantity_unit]
    series_types: {}
    y_axes: []
    listen:
      Patient Name: patient__name.full_name
    row: 4
    col: 8
    width: 8
    height: 4
  - title: Height
    name: Height
    model: fhir_data
    explore: patient_1000_fh
    type: single_value
    fields: [observation_1000_fh.issued_date, observation_1000_fh.height, observation_1000_fh.value_quantity_unit]
    sorts: [observation_1000_fh.issued_date desc]
    limit: 10
    dynamic_fields: [{table_calculation: null_filter, label: Null Filter, expression: "${observation_1000_fh.height}\
          \ > 0", value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}, {table_calculation: height, label: Height, expression: 'concat(${observation_1000_fh.height},"
          ",${observation_1000_fh.value_quantity_unit})', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: string}]
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_points_if_no: [null_filter]
    hidden_fields: [observation_1000_fh.value_quantity_unit, observation_1000_fh.height]
    series_types: {}
    y_axes: []
    listen:
      Patient Name: patient__name.full_name
    row: 0
    col: 16
    width: 8
    height: 4
  - title: Weight
    name: Weight
    model: fhir_data
    explore: patient_1000_fh
    type: single_value
    fields: [observation_1000_fh.issued_date, observation_1000_fh.weight, observation_1000_fh.value_quantity_unit]
    sorts: [observation_1000_fh.issued_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: null_filter, label: Null Filter, expression: "${observation_1000_fh.weight}\
          \ > 0", value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}, {table_calculation: weight, label: Weight, expression: 'concat(${observation_1000_fh.weight},"
          ",${observation_1000_fh.value_quantity_unit})', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: string}]
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_points_if_no: [null_filter]
    series_types: {}
    hidden_fields: [observation_1000_fh.weight, observation_1000_fh.value_quantity_unit]
    y_axes: []
    listen:
      Patient Name: patient__name.full_name
    row: 0
    col: 0
    width: 8
    height: 4
  - title: Body Mass Index
    name: Body Mass Index
    model: fhir_data
    explore: patient_1000_fh
    type: single_value
    fields: [observation_1000_fh.issued_date, observation_1000_fh.body_mass_index,
      observation_1000_fh.value_quantity_unit]
    sorts: [observation_1000_fh.issued_date desc]
    limit: 10
    dynamic_fields: [{table_calculation: null_filter, label: Null Filter, expression: "${observation_1000_fh.body_mass_index}\
          \ > 0", value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}, {table_calculation: body_mass_index, label: Body Mass
          Index, expression: 'concat(${observation_1000_fh.body_mass_index}," ",${observation_1000_fh.value_quantity_unit})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: string}]
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_points_if_no: [null_filter]
    series_types: {}
    hidden_fields: [observation_1000_fh.body_mass_index, observation_1000_fh.value_quantity_unit]
    y_axes: []
    listen:
      Patient Name: patient__name.full_name
    row: 4
    col: 0
    width: 8
    height: 4
  - title: Blood Pressure
    name: Blood Pressure
    model: fhir_data
    explore: patient_1000_fh
    type: single_value
    fields: [observation_1000_fh.issued_date, observation__component.average_diastolic_blood_pressure,
      observation__component.average_systolic_blood_pressure]
    fill_fields: [observation_1000_fh.issued_date]
    filters: {}
    sorts: [observation_1000_fh.issued_date desc]
    limit: 1
    column_limit: 50
    dynamic_fields: [{table_calculation: null_filter, label: Null Filter, expression: "${observation__component.average_diastolic_blood_pressure}\
          \ > 0", value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}, {table_calculation: blood_pressure, label: Blood Pressure,
        expression: 'concat(${observation__component.average_systolic_blood_pressure},"/",${observation__component.average_diastolic_blood_pressure})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: string}]
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_points_if_no: [null_filter]
    hidden_fields: [observation__component.average_systolic_blood_pressure, observation__component.average_diastolic_blood_pressure]
    y_axes: []
    series_types: {}
    listen:
      Patient Name: patient__name.full_name
    row: 4
    col: 16
    width: 8
    height: 4
  - name: Immunizations
    type: text
    title_text: Immunizations
    row: 42
    col: 0
    width: 24
    height: 2
  - title: Complete Record of Immunizations
    name: Complete Record of Immunizations
    model: fhir_data
    explore: patient_1000_fh
    type: looker_grid
    fields: [dt_immunization_schedules.vaccine_text, dt_immunization_schedules.total_number_of_doses,
      dt_patient_immunization_lookup_rj.count, dt_patient_immunization_lookup_rj.most_recent_immunization_date]
    filters: {}
    sorts: [dt_immunization_schedules.vaccine_text]
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_points_if_no: []
    hidden_fields: []
    y_axes: []
    series_types: {}
    listen:
      Patient Name: patient__name.full_name
    row: 44
    col: 12
    width: 12
    height: 10
  - title: Immunization Recommendations
    name: Immunization Recommendations
    model: fhir_data
    explore: patient_1000_fh
    type: looker_grid
    fields: [dt_patient_immunization_lookup_rj.vaccine_name, dt_immunization_schedules.total_number_of_doses,
      dt_patient_immunization_lookup_rj.count, dt_patient_immunization_lookup_rj.immunization_recommendations]
    filters: {}
    sorts: [dt_immunization_schedules.total_number_of_doses]
    limit: 500
    query_timezone: America/New_York
    series_types: {}
    hidden_fields: [dt_patient_immunization_lookup_rj.count, dt_immunization_schedules.total_number_of_doses]
    listen:
      Patient Name: patient__name.full_name
    row: 44
    col: 0
    width: 12
    height: 10
  filters:
  - name: Patient Name
    title: Patient Name
    type: field_filter
    default_value: Aaron697 Bartoletti50
    allow_multiple_values: true
    required: false
    model: fhir_data
    explore: patient_1000_fh
    listens_to_filters: []
    field: patient__name.full_name
