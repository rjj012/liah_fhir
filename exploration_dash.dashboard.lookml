- dashboard: exploration_dashboard
  title: Exploration Dashboard
  layout: newspaper
  elements:
  - title: Patients
    name: Patients
    model: fhir_data
    explore: patient_1000_fh
    type: looker_grid
    fields: [patient_1000_fh.id, patient__name.full_name, patient_1000_fh.gender,
      patient_1000_fh.birth_date, patient_1000_fh.age, patient_1000_fh.deceased_boolean,
      encounter_1000_fh.count]
    sorts: [patient__name.full_name]
    limit: 500
    query_timezone: America/New_York
    hidden_fields: []
    y_axes: []
    listen:
      Patient: patient__name.full_name
      Gender: patient_1000_fh.gender
      Birthdate: patient_1000_fh.birth_date
      Encounter Type: encounter__type.text
      Medication Type: medication_request_1000_fh.medication_type
      Procedure Name: procedure_1000_fh.procedure_name_dummy
      Age: patient_1000_fh.age
      Condition Grouping: condition_1000_fh.condition_grouping
      Condition Name: condition_1000_fh.condition_text_dummy
    row: 0
    col: 0
    width: 24
    height: 6
  - title: Encounter Reason
    name: Encounter Reason
    model: fhir_data
    explore: patient_1000_fh
    type: looker_grid
    fields: [encounter_1000_fh.count, encounter__type.text]
    sorts: [encounter_1000_fh.count desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_cell_visualizations:
      encounter_100_fh.count:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Patient: patient__name.full_name
      Gender: patient_1000_fh.gender
      Birthdate: patient_1000_fh.birth_date
      Encounter Type: encounter__type.text
      Medication Type: medication_request_1000_fh.medication_type
      Procedure Name: procedure_1000_fh.procedure_name_dummy
      Age: patient_1000_fh.age
      Condition Grouping: condition_1000_fh.condition_grouping
      Condition Name: condition_1000_fh.condition_text_dummy
    row: 6
    col: 0
    width: 12
    height: 6
  - title: Grouped Conditions
    name: Grouped Conditions
    model: fhir_data
    explore: patient_1000_fh
    type: looker_grid
    fields: [condition_1000_fh.count, condition_1000_fh.condition_grouping]
    sorts: [condition_1000_fh.count desc]
    limit: 500
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Patient: patient__name.full_name
      Gender: patient_1000_fh.gender
      Birthdate: patient_1000_fh.birth_date
      Encounter Type: encounter__type.text
      Medication Type: medication_request_1000_fh.medication_type
      Procedure Name: procedure_1000_fh.procedure_name_dummy
      Age: patient_1000_fh.age
      Condition Grouping: condition_1000_fh.condition_grouping
      Condition Name: condition_1000_fh.condition_text_dummy
    row: 6
    col: 12
    width: 12
    height: 6
  - title: Medication Requests
    name: Medication Requests
    model: fhir_data
    explore: patient_1000_fh
    type: looker_grid
    fields: [medication_request_1000_fh.count, medication_request_1000_fh.medication_type_dummy]
    sorts: [medication_request_1000_fh.count desc]
    limit: 500
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Patient: patient__name.full_name
      Gender: patient_1000_fh.gender
      Birthdate: patient_1000_fh.birth_date
      Encounter Type: encounter__type.text
      Medication Type: medication_request_1000_fh.medication_type
      Procedure Name: procedure_1000_fh.procedure_name_dummy
      Age: patient_1000_fh.age
      Condition Grouping: condition_1000_fh.condition_grouping
      Condition Name: condition_1000_fh.condition_text_dummy
    row: 12
    col: 0
    width: 12
    height: 6
  - title: Procedures
    name: Procedures
    model: fhir_data
    explore: patient_1000_fh
    type: looker_grid
    fields: [procedure_1000_fh.procedure_name_dummy, procedure_1000_fh.count]
    sorts: [procedure_1000_fh.count desc]
    limit: 500
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Patient: patient__name.full_name
      Gender: patient_1000_fh.gender
      Birthdate: patient_1000_fh.birth_date
      Encounter Type: encounter__type.text
      Medication Type: medication_request_1000_fh.medication_type
      Procedure Name: procedure_1000_fh.procedure_name_dummy
      Age: patient_1000_fh.age
      Condition Grouping: condition_1000_fh.condition_grouping
      Condition Name: condition_1000_fh.condition_text_dummy
    row: 18
    col: 12
    width: 12
    height: 6
  - title: Conditions
    name: Conditions
    model: fhir_data
    explore: patient_1000_fh
    type: looker_grid
    fields: [condition_1000_fh.condition_text_dummy, condition_1000_fh.count]
    sorts: [condition_1000_fh.count desc]
    limit: 500
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 12
    col: 12
    width: 12
    height: 6
  filters:
  - name: Patient
    title: Patient
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: fhir_data
    explore: patient_1000_fh
    listens_to_filters: []
    field: patient__name.full_name
  - name: Gender
    title: Gender
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: fhir_data
    explore: patient_1000_fh
    listens_to_filters: []
    field: patient_1000_fh.gender
  - name: Birthdate
    title: Birthdate
    type: date_filter
    default_value: ''
    allow_multiple_values: true
    required: false
  - name: Encounter Type
    title: Encounter Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: fhir_data
    explore: patient_1000_fh
    listens_to_filters: []
    field: encounter__type.text
  - name: Medication Type
    title: Medication Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: fhir_data
    explore: patient_1000_fh
    listens_to_filters: []
    field: medication_request_1000_fh.medication_type
  - name: Procedure Name
    title: Procedure Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: fhir_data
    explore: patient_1000_fh
    listens_to_filters: []
    field: procedure_1000_fh.procedure_name_dummy
  - name: Age
    title: Age
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: fhir_data
    explore: patient_1000_fh
    listens_to_filters: []
    field: patient_1000_fh.age
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
  - name: Condition Name
    title: Condition Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: fhir_data
    explore: patient_1000_fh
    listens_to_filters: []
    field: condition_1000_fh.condition_text_dummy
