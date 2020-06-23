- dashboard: condition_specific_dashboard
  title: Condition Specific Dashboard
  layout: newspaper
  elements:
  - title: Patients with Condition
    name: Patients with Condition
    model: fhir_data
    explore: patient_1000_fh
    type: single_value
    fields: [patient_1000_fh.count]
    filters: {}
    sorts: [patient_1000_fh.count desc]
    limit: 500
    query_timezone: America/New_York
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Condition Name: condition_1000_fh.condition_text_dummy
      Date of Condition Onset: condition_1000_fh.condition_onset_date
      Age at Condition Onset: condition_1000_fh.age_at_onset
      Patient Name: patient__name.full_name
      Condition Grouping: condition_1000_fh.condition_grouping
    row: 3
    col: 0
    width: 8
    height: 4
  - title: Occurrences of Condition
    name: Occurrences of Condition
    model: fhir_data
    explore: patient_1000_fh
    type: single_value
    fields: [condition_1000_fh.count]
    filters: {}
    sorts: [condition_1000_fh.count desc]
    limit: 5000
    query_timezone: America/New_York
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Condition Name: condition_1000_fh.condition_text_dummy
      Date of Condition Onset: condition_1000_fh.condition_onset_date
      Age at Condition Onset: condition_1000_fh.age_at_onset
      Patient Name: patient__name.full_name
      Condition Grouping: condition_1000_fh.condition_grouping
    row: 3
    col: 8
    width: 8
    height: 4
  - title: Condition Abatement Rate
    name: Condition Abatement Rate
    model: fhir_data
    explore: patient_1000_fh
    type: single_value
    fields: [condition_1000_fh.count, condition_1000_fh.condition_abated]
    filters: {}
    sorts: [condition_1000_fh.count desc]
    limit: 5000
    dynamic_fields: [{table_calculation: percentage_abatement, label: Percentage Abatement,
        expression: 'if(${condition_1000_fh.condition_abated}="Yes",${condition_1000_fh.count}
          / sum(${condition_1000_fh.count}),null)', value_format: !!null '', value_format_name: percent_1,
        _kind_hint: measure, _type_hint: number}]
    query_timezone: America/New_York
    series_types: {}
    hidden_fields: [condition_1000_fh.count]
    y_axes: []
    listen:
      Condition Name: condition_1000_fh.condition_text_dummy
      Date of Condition Onset: condition_1000_fh.condition_onset_date
      Age at Condition Onset: condition_1000_fh.age_at_onset
      Patient Name: patient__name.full_name
      Condition Grouping: condition_1000_fh.condition_grouping
    row: 3
    col: 16
    width: 8
    height: 4
  - title: Condition Average Duration
    name: Condition Average Duration
    model: fhir_data
    explore: patient_1000_fh
    type: single_value
    fields: [condition_1000_fh.condition_duration_average_months, condition_1000_fh.median_age_at_onset,
      condition_1000_fh.median_age_at_abatement]
    filters:
      condition_1000_fh.condition_abated: 'Yes'
    sorts: [condition_1000_fh.condition_duration_average_months desc]
    limit: 5000
    query_timezone: America/New_York
    series_types: {}
    hidden_fields: [condition_1000_fh.median_age_at_onset, condition_1000_fh.median_age_at_abatement]
    y_axes: []
    listen:
      Condition Name: condition_1000_fh.condition_text_dummy
      Date of Condition Onset: condition_1000_fh.condition_onset_date
      Age at Condition Onset: condition_1000_fh.age_at_onset
      Patient Name: patient__name.full_name
      Condition Grouping: condition_1000_fh.condition_grouping
    row: 7
    col: 16
    width: 8
    height: 4
  - title: Onset Age Median
    name: Onset Age Median
    model: fhir_data
    explore: patient_1000_fh
    type: single_value
    fields: [condition_1000_fh.condition_duration_average_months, condition_1000_fh.median_age_at_onset,
      condition_1000_fh.median_age_at_abatement]
    filters:
      condition_1000_fh.condition_abated: 'Yes'
    sorts: [condition_1000_fh.condition_duration_average_months desc]
    limit: 5000
    query_timezone: America/New_York
    series_types: {}
    hidden_fields: [condition_1000_fh.median_age_at_abatement, condition_1000_fh.condition_duration_average_months]
    y_axes: []
    listen:
      Condition Name: condition_1000_fh.condition_text_dummy
      Date of Condition Onset: condition_1000_fh.condition_onset_date
      Age at Condition Onset: condition_1000_fh.age_at_onset
      Patient Name: patient__name.full_name
      Condition Grouping: condition_1000_fh.condition_grouping
    row: 7
    col: 0
    width: 8
    height: 4
  - title: Abatement Age Median
    name: Abatement Age Median
    model: fhir_data
    explore: patient_1000_fh
    type: single_value
    fields: [condition_1000_fh.condition_duration_average_months, condition_1000_fh.median_age_at_onset,
      condition_1000_fh.median_age_at_abatement]
    filters:
      condition_1000_fh.condition_abated: 'Yes'
    sorts: [condition_1000_fh.condition_duration_average_months desc]
    limit: 5000
    query_timezone: America/New_York
    series_types: {}
    hidden_fields: [condition_1000_fh.median_age_at_onset, condition_1000_fh.condition_duration_average_months]
    y_axes: []
    listen:
      Condition Name: condition_1000_fh.condition_text_dummy
      Date of Condition Onset: condition_1000_fh.condition_onset_date
      Age at Condition Onset: condition_1000_fh.age_at_onset
      Patient Name: patient__name.full_name
      Condition Grouping: condition_1000_fh.condition_grouping
    row: 7
    col: 8
    width: 8
    height: 4
  - title: Condition Onset Age Distribution
    name: Condition Onset Age Distribution
    model: fhir_data
    explore: patient_1000_fh
    type: looker_column
    fields: [condition_1000_fh.condition_duration_average_months, condition_1000_fh.median_age_at_onset,
      condition_1000_fh.median_age_at_abatement, condition_1000_fh.median_age_at_onset_groups,
      condition_1000_fh.count]
    filters:
      condition_1000_fh.condition_abated: 'Yes'
      condition_1000_fh.median_age_at_onset_groups: -"(-inf,0.0)"
    sorts: [condition_1000_fh.median_age_at_onset]
    limit: 5000
    column_limit: 50
    total: true
    query_timezone: America/New_York
    series_types: {}
    hidden_fields: [condition_1000_fh.condition_duration_average_months, condition_1000_fh.median_age_at_abatement,
      condition_1000_fh.median_age_at_onset]
    y_axes: []
    listen:
      Condition Name: condition_1000_fh.condition_text_dummy
      Date of Condition Onset: condition_1000_fh.condition_onset_date
      Age at Condition Onset: condition_1000_fh.age_at_onset
      Patient Name: patient__name.full_name
      Condition Grouping: condition_1000_fh.condition_grouping
    row: 11
    col: 0
    width: 12
    height: 8
  - title: Age at Abatement Distribution
    name: Age at Abatement Distribution
    model: fhir_data
    explore: patient_1000_fh
    type: looker_column
    fields: [condition_1000_fh.median_age_at_abatement_groups, condition_1000_fh.count]
    filters:
      condition_1000_fh.condition_abated: 'Yes'
      condition_1000_fh.median_age_at_abatement_groups: -"(-inf,0.0)"
    sorts: [condition_1000_fh.median_age_at_abatement_groups]
    limit: 5000
    column_limit: 50
    total: true
    query_timezone: America/New_York
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Condition Name: condition_1000_fh.condition_text_dummy
      Date of Condition Onset: condition_1000_fh.condition_onset_date
      Age at Condition Onset: condition_1000_fh.age_at_onset
      Patient Name: patient__name.full_name
      Condition Grouping: condition_1000_fh.condition_grouping
    row: 11
    col: 12
    width: 12
    height: 8
  - title: Medication Requests for Condition
    name: Medication Requests for Condition
    model: fhir_data
    explore: patient_1000_fh
    type: looker_grid
    fields: [medication_request_1000_fh.medication_type_dummy, medication_request_1000_fh.count]
    filters:
      medication_request_1000_fh.medication_type_dummy: "-NULL"
    sorts: [medication_request_1000_fh.count desc]
    limit: 500
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Condition Name: condition_1000_fh.condition_text_dummy
      Date of Condition Onset: condition_1000_fh.condition_onset_date
      Age at Condition Onset: condition_1000_fh.age_at_onset
      Patient Name: patient__name.full_name
      Condition Grouping: condition_1000_fh.condition_grouping
    row: 24
    col: 0
    width: 12
    height: 5
  - title: Procedures for Condition
    name: Procedures for Condition
    model: fhir_data
    explore: patient_1000_fh
    type: looker_grid
    fields: [procedure_1000_fh.procedure_name_dummy, procedure_1000_fh.count]
    filters:
      procedure_1000_fh.procedure_name_dummy: "-NULL"
    sorts: [procedure_1000_fh.count desc]
    limit: 500
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Condition Name: condition_1000_fh.condition_text_dummy
      Date of Condition Onset: condition_1000_fh.condition_onset_date
      Age at Condition Onset: condition_1000_fh.age_at_onset
      Patient Name: patient__name.full_name
      Condition Grouping: condition_1000_fh.condition_grouping
    row: 24
    col: 12
    width: 12
    height: 5
  - title: Patients with Condition
    name: Patients with Condition (2)
    model: fhir_data
    explore: patient_1000_fh
    type: looker_grid
    fields: [patient__name.full_name, patient_1000_fh.birth_date, patient_1000_fh.age,
      patient_1000_fh.deceased_boolean, patient_1000_fh.gender, condition_1000_fh.count]
    sorts: [patient_1000_fh.birth_date desc]
    limit: 500
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Condition Name: condition_1000_fh.condition_text_dummy
      Date of Condition Onset: condition_1000_fh.condition_onset_date
      Age at Condition Onset: condition_1000_fh.age_at_onset
      Patient Name: patient__name.full_name
      Condition Grouping: condition_1000_fh.condition_grouping
    row: 19
    col: 0
    width: 12
    height: 5
  - title: Encounters Due to Condition
    name: Encounters Due to Condition
    model: fhir_data
    explore: patient_1000_fh
    type: looker_grid
    fields: [encounter__type.text, encounter__reason__coding.display, encounter_1000_fh.count]
    filters:
      condition_1000_fh.condition_onset_date: ''
      condition_1000_fh.age_at_onset: ''
      patient__name.full_name: ''
      condition_1000_fh.condition_text_dummy: Viral sinusitis (disorder)
    sorts: [encounter_1000_fh.count desc]
    limit: 500
    column_limit: 50
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Condition Grouping: condition_1000_fh.condition_grouping
    row: 19
    col: 12
    width: 12
    height: 5
  - title: Conditions and Groupings Shown
    name: Conditions and Groupings Shown
    model: fhir_data
    explore: patient_1000_fh
    type: looker_single_record
    fields: [condition_1000_fh.condition_text_dummy, condition_1000_fh.condition_grouping]
    sorts: [condition_1000_fh.condition_text_dummy desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Condition Name: condition_1000_fh.condition_text_dummy
      Condition Grouping: condition_1000_fh.condition_grouping
    row: 0
    col: 0
    width: 24
    height: 3
  filters:
  - name: Condition Name
    title: Condition Name
    type: field_filter
    default_value: Viral sinusitis (disorder)
    allow_multiple_values: true
    required: false
    model: fhir_data
    explore: patient_1000_fh
    listens_to_filters: []
    field: condition_1000_fh.condition_text_dummy
  - name: Date of Condition Onset
    title: Date of Condition Onset
    type: date_filter
    default_value: ''
    allow_multiple_values: true
    required: false
  - name: Age at Condition Onset
    title: Age at Condition Onset
    type: date_filter
    default_value: ''
    allow_multiple_values: true
    required: false
  - name: Patient Name
    title: Patient Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: fhir_data
    explore: patient_1000_fh
    listens_to_filters: []
    field: patient__name.full_name
  - name: Condition Grouping
    title: Condition Grouping
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: fhir_data
    explore: patient_1000_fh
    listens_to_filters: []
    field: condition_1000_fh.condition_grouping
