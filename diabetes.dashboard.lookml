- dashboard: diabetes_focussed
  title: Diabetes Focussed
  layout: newspaper
  elements:
  - title: HDL (mg/dL)
    name: HDL (mg/dL)
    model: fhir_data
    explore: patient_1000_fh
    type: single_value
    fields: [observation_1000_fh.issued_date, observation_1000_fh.value_quantity_unit,
      observation_1000_fh.hdl_cholesterol]
    filters:
      patient__name.full_name: Aaron697 Bartoletti50
      observation__code__coding.display: High Density Lipoprotein Cholesterol
    sorts: [observation_1000_fh.issued_date desc]
    limit: 10
    column_limit: 50
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    comparison_label: ''
    enable_conditional_formatting: true
    conditional_formatting: [{type: greater than, value: 59, background_color: "#00B345",
        font_color: !!null '', color_application: {collection_id: 0e5689e8-a574-416e-a728-97708aee2fa3,
          palette_id: 2d23a995-de16-451b-9994-3e56295c4fee}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: between, value: [40, 59],
        background_color: "#FFBA00", font_color: !!null '', color_application: {collection_id: 0e5689e8-a574-416e-a728-97708aee2fa3,
          palette_id: 2d23a995-de16-451b-9994-3e56295c4fee}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 40, background_color: "#CB1F47",
        font_color: !!null '', color_application: {collection_id: 0e5689e8-a574-416e-a728-97708aee2fa3,
          palette_id: 2d23a995-de16-451b-9994-3e56295c4fee}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    hidden_fields:
    series_types: {}
    y_axes: []
    note_state: collapsed
    note_display: below
    note_text: |-
      Greater than 59 = Optimal
      Between 40 and 59 = Good
      Lower than 40 = Low
    listen: {}
    row: 3
    col: 0
    width: 6
    height: 4
  - title: LDL (mg/dL)
    name: LDL (mg/dL)
    model: fhir_data
    explore: patient_1000_fh
    type: single_value
    fields: [observation_1000_fh.issued_date, observation_1000_fh.value_quantity_unit,
      observation_1000_fh.ldl_cholesterol]
    filters:
      observation__code__coding.display: Low Density Lipoprotein Cholesterol
    sorts: [observation_1000_fh.issued_date desc]
    limit: 10
    column_limit: 50
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    comparison_label: ''
    enable_conditional_formatting: true
    conditional_formatting: [{type: less than, value: 100, background_color: "#00B345",
        font_color: !!null '', color_application: {collection_id: 0e5689e8-a574-416e-a728-97708aee2fa3,
          palette_id: 2d23a995-de16-451b-9994-3e56295c4fee}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: between, value: [100, 129],
        background_color: "#FFBA00", font_color: !!null '', color_application: {collection_id: 0e5689e8-a574-416e-a728-97708aee2fa3,
          palette_id: 2d23a995-de16-451b-9994-3e56295c4fee}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: between, value: [129, 159],
        background_color: "#F56F02", font_color: !!null '', color_application: {collection_id: 0e5689e8-a574-416e-a728-97708aee2fa3,
          palette_id: 2d23a995-de16-451b-9994-3e56295c4fee}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: greater than, value: 159,
        background_color: "#CB1F47", font_color: !!null '', color_application: {collection_id: 0e5689e8-a574-416e-a728-97708aee2fa3,
          palette_id: 2d23a995-de16-451b-9994-3e56295c4fee}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    hidden_fields: [observation_1000_fh.value_quantity_unit]
    series_types: {}
    y_axes: []
    note_state: collapsed
    note_display: below
    note_text: |-
      Less than 100 = Optimal
      Between 100 and 129 = Acceptable
      Between 129 and 159 = Borderline High
      Between 160 and 189 = High
      Greater than 190 = Very High
    listen:
      Patient Name: patient__name.full_name
    row: 3
    col: 6
    width: 6
    height: 4
  - title: HbA1C (%)
    name: HbA1C (%)
    model: fhir_data
    explore: patient_1000_fh
    type: single_value
    fields: [observation_1000_fh.issued_date, observation_1000_fh.value_quantity_unit,
      observation_1000_fh.hba1c]
    filters:
      observation__code__coding.display: Hemoglobin A1c/Hemoglobin.total in Blood
    sorts: [observation_1000_fh.issued_date desc]
    limit: 10
    column_limit: 50
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    comparison_label: ''
    enable_conditional_formatting: true
    conditional_formatting: [{type: less than, value: 5.7, background_color: "#00B345",
        font_color: !!null '', color_application: {collection_id: 0e5689e8-a574-416e-a728-97708aee2fa3,
          palette_id: 2d23a995-de16-451b-9994-3e56295c4fee}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: between, value: [5.7, 6.4],
        background_color: "#FFBA00", font_color: !!null '', color_application: {collection_id: 0e5689e8-a574-416e-a728-97708aee2fa3,
          palette_id: 2d23a995-de16-451b-9994-3e56295c4fee}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: greater than, value: 6.4,
        background_color: "#CB1F47", font_color: !!null '', color_application: {collection_id: 0e5689e8-a574-416e-a728-97708aee2fa3,
          palette_id: 2d23a995-de16-451b-9994-3e56295c4fee}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    hidden_fields: [observation_1000_fh.value_quantity_unit]
    series_types: {}
    y_axes: []
    note_state: expanded
    note_display: hover
    note_text: |-
      Less than 5.7% = Good
      Between 5.7% and 6.4% = Higher Chance of Diabetes
      Greater than 6.5% = Diabetes
    listen:
      Patient Name: patient__name.full_name
    row: 3
    col: 12
    width: 6
    height: 4
  - title: Glucose Levels (mg/dL)
    name: Glucose Levels (mg/dL)
    model: fhir_data
    explore: patient_1000_fh
    type: single_value
    fields: [observation_1000_fh.issued_date, observation_1000_fh.value_quantity_unit,
      observation_1000_fh.glucose]
    filters:
      observation__code__coding.display: Glucose
    sorts: [observation_1000_fh.issued_date desc]
    limit: 10
    column_limit: 50
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    comparison_label: ''
    enable_conditional_formatting: true
    conditional_formatting: [{type: less than, value: 72, background_color: "#CB1F47",
        font_color: !!null '', color_application: {collection_id: 0e5689e8-a574-416e-a728-97708aee2fa3,
          palette_id: 2d23a995-de16-451b-9994-3e56295c4fee}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: between, value: [72, 99],
        background_color: "#00B345", font_color: !!null '', color_application: {collection_id: 0e5689e8-a574-416e-a728-97708aee2fa3,
          palette_id: 2d23a995-de16-451b-9994-3e56295c4fee}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: between, value: [99, 140],
        background_color: "#F56F02", font_color: !!null '', color_application: {collection_id: 0e5689e8-a574-416e-a728-97708aee2fa3,
          palette_id: 2d23a995-de16-451b-9994-3e56295c4fee}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: greater than, value: 140,
        background_color: "#CB1F47", font_color: !!null '', color_application: {collection_id: 0e5689e8-a574-416e-a728-97708aee2fa3,
          palette_id: 2d23a995-de16-451b-9994-3e56295c4fee}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    hidden_fields: [observation_1000_fh.value_quantity_unit]
    series_types: {}
    y_axes: []
    note_state: collapsed
    note_display: below
    note_text: |-
      Less than 72 = Low
      Between 72 and 99 = Good
      Between 99 and 140 = Slightly High
      Greater than 140 = High
      *Note: Glucose levels are dependent on when a person last ate for healthy levels to be determined.
    listen:
      Patient Name: patient__name.full_name
    row: 3
    col: 18
    width: 6
    height: 4
  - name: Foot Exam
    type: text
    title_text: Foot Exam
    row: 7
    col: 0
    width: 6
    height: 5
  - name: Metformin
    type: text
    title_text: Metformin
    row: 7
    col: 6
    width: 6
    height: 5
  - title: BMI (kg/m2)
    name: BMI (kg/m2)
    model: fhir_data
    explore: patient_1000_fh
    type: single_value
    fields: [observation_1000_fh.issued_date, observation_1000_fh.value_quantity_unit,
      observation_1000_fh.body_mass_index]
    filters:
      observation__code__coding.display: Body Mass Index
    sorts: [observation_1000_fh.issued_date desc]
    limit: 10
    column_limit: 50
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    comparison_label: ''
    enable_conditional_formatting: true
    conditional_formatting: [{type: less than, value: 18.5, background_color: "#CB1F47",
        font_color: !!null '', color_application: {collection_id: 0e5689e8-a574-416e-a728-97708aee2fa3,
          palette_id: 2d23a995-de16-451b-9994-3e56295c4fee}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: between, value: [18.5, 24.9],
        background_color: "#00B345", font_color: !!null '', color_application: {collection_id: 0e5689e8-a574-416e-a728-97708aee2fa3,
          palette_id: 2d23a995-de16-451b-9994-3e56295c4fee}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: between, value: [24.9, 30],
        background_color: "#F56F02", font_color: !!null '', color_application: {collection_id: 0e5689e8-a574-416e-a728-97708aee2fa3,
          palette_id: 2d23a995-de16-451b-9994-3e56295c4fee}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: greater than, value: 30,
        background_color: "#CB1F47", font_color: !!null '', color_application: {collection_id: 0e5689e8-a574-416e-a728-97708aee2fa3,
          palette_id: 2d23a995-de16-451b-9994-3e56295c4fee}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    hidden_fields: [observation_1000_fh.value_quantity_unit]
    series_types: {}
    y_axes: []
    note_state: collapsed
    note_display: below
    note_text: |-
      Less than 18.5 = Underweight
      Between 18.5 and 24.9 = Good
      Between 24.9 and 30 = Overweight
      Greater than 30 = Obese
    listen:
      Patient Name: patient__name.full_name
    row: 7
    col: 18
    width: 6
    height: 5
  - name: Heart Rate
    type: text
    title_text: Heart Rate
    row: 16
    col: 0
    width: 6
    height: 4
  - name: Respiratory Rate
    type: text
    title_text: Respiratory Rate
    row: 16
    col: 6
    width: 6
    height: 4
  - title: Blood Pressure (mm/Hg)
    name: Blood Pressure (mm/Hg)
    model: fhir_data
    explore: patient_1000_fh
    type: single_value
    fields: [observation_1000_fh.issued_date, observation__component.average_diastolic_blood_pressure,
      observation__component.average_systolic_blood_pressure, observation__component.blood_pressure]
    fill_fields: [observation_1000_fh.issued_date]
    filters: {}
    sorts: [observation_1000_fh.issued_date desc]
    limit: 1
    column_limit: 50
    dynamic_fields: [{table_calculation: null_filter, label: Null Filter, expression: "${observation__component.average_diastolic_blood_pressure}\
          \ > 0", value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}, {table_calculation: blood_pressure, label: Blood Pressure,
        expression: 'concat(${observation__component.average_systolic_blood_pressure},"/",${observation__component.average_diastolic_blood_pressure},
          "|", ${observation_1000_fh.issued_date})', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: string}]
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting: []
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
    hidden_fields: [observation__component.average_diastolic_blood_pressure, observation__component.average_systolic_blood_pressure]
    y_axes: []
    series_types: {}
    note_state: collapsed
    note_display: below
    note_text: |-
      120 over 80 = Normal
      120-130 over 80 = Elevated
      130-140 or 80-90  = Hypertension Stage 1
      140-180or 90-120 = Hypertension Stage 2
      180+ and/or 120+ = Hypertensive Crisis
    listen:
      Patient Name: patient__name.full_name
    row: 7
    col: 12
    width: 6
    height: 6
  - title: Weight (kg)
    name: Weight (kg)
    model: fhir_data
    explore: patient_1000_fh
    type: single_value
    fields: [observation_1000_fh.issued_date, observation_1000_fh.weight, observation_1000_fh.value_quantity_unit]
    filters: {}
    sorts: [observation_1000_fh.issued_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: null_filter, label: Null Filter, expression: "${observation_1000_fh.weight}\
          \ > 0", value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: yesno}]
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
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
    hidden_fields: [observation_1000_fh.value_quantity_unit]
    y_axes: []
    note_state: expanded
    note_display: below
    note_text: Not colour coded due to the ambiguity of healthy weight to height ratio
      question. Could code in some general rules, but seems redundant when that is
      what BMI is meant to do
    listen:
      Patient Name: patient__name.full_name
    row: 12
    col: 18
    width: 6
    height: 6
  - name: Diet
    type: text
    title_text: Diet
    body_text: Would need Nutrition Order table populated
    row: 12
    col: 0
    width: 6
    height: 4
  - name: Eye Check
    type: text
    title_text: Eye Check
    body_text: No values for vision check
    row: 12
    col: 6
    width: 6
    height: 4
  - title: Last General Exam
    name: Last General Exam
    model: fhir_data
    explore: patient_1000_fh
    type: single_value
    fields: [encounter_1000_fh.most_recent_encounter]
    filters:
      encounter__type.text: General examination of patient (procedure)
      patient__name.full_name: Aaron697 Bartoletti50
    limit: 500
    dynamic_fields: [{table_calculation: months_since_last_check_up, label: Months
          Since Last Check-Up, expression: 'diff_months(${encounter_1000_fh.most_recent_encounter},now())',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: check_up_status, label: Check-up
          Status, expression: "concat(${encounter_1000_fh.most_recent_encounter},\"\
          \ \",\n  if(${months_since_last_check_up} < 12,\"✅\",  \n    if(${months_since_last_check_up}\
          \ <= 14,\"\U0001f536\",\n      if(${months_since_last_check_up} > 14,\"❌\
          \",\"\")))\n  \n  \n)", value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: string}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields: [encounter_1000_fh.most_recent_encounter, months_since_last_check_up]
    note_state: collapsed
    note_display: below
    note_text: |-
      In the past 12 months = Green
      Between 12 and 14 months = Yellow
      Greater than 14 months = Red
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 3
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
