view: dt_patient_immunization_lookup_rj {
  label: "Patient Immunization Lookup"
  derived_table: {
    persist_for: "100 hours"
    sql:
      with vaccines as
        (
          select
            distinct immunization.vaccinecode.text  AS vaccine_text
            , c.code as vaccine_code
          from
            FHIR_1000_FH.Immunization
          left join
            unnest(immunization.vaccineCode.coding) as c
          group by
            1,2
        )
      , patient_immunization as
        (
          select
            i.id as immunization_id
            , i.patient.patientid as patient_id
            , ic.code as vaccine_code
            , i.date
          from
            FHIR_1000_FH.Immunization as i
          left join
            unnest(i.vaccineCode.coding) as ic
        )
      select
        pi.immunization_id
        , v.vaccine_code
        , v.vaccine_text
        , p.id as  patient_id
        , pi.vaccine_code as patient_vaccine_code
        , pi.date as patient_immunization_date
      from
        vaccines as v
        , FHIR_1000_FH.Patient as p
      left join
        patient_immunization as pi
          on pi.patient_id = p.id
          and pi.vaccine_code = v.vaccine_code
      order by 1
       ;;
  }

  measure: count {
    label: "Immunizations"
    type: count
  }

  dimension: immunization_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.immunization_id ;;
  }

  dimension: vaccine_code {
    type: string
    sql: ${TABLE}.vaccine_code ;;
  }

  dimension: vaccine_name {
    type: string
    sql: ${TABLE}.vaccine_text ;;
  }

  dimension: patient_id {
    type: string
    sql: ${TABLE}.patient_id ;;
  }

  dimension: patient_vaccine_code {
    type: string
    sql: ${TABLE}.patient_vaccine_code ;;
  }

  dimension_group: patient_immunization {
    type: time
    timeframes: [
      raw
      , time
      , date
      , month
      , year
    ]
    sql: timestamp(${TABLE}.patient_immunization_date) ;;
  }

  ###Calculated Fields###
  dimension: age_at_immunization_months {
    type: number
    sql: date_diff(${patient_immunization_date}, ${patient_1000_fh.birth_date}, month) ;;
  }

  measure: most_recent_immunization_date {
    type: date
    sql: max(${patient_immunization_date}) ;;
  }

  dimension: flu_shot_required {
    description: "If patient is 50 or older and has not been vaccinated for the flu in past year."
    type: string
    sql:
      case
        when ${patient_1000_fh.age} > 49
        and ${patient_immunization_date} < date_sub(current_date(), interval 365 day)
        and ${vaccine_name} = 'Influenza, seasonal, injectable, preservative free'
          then 'Yes'
        else 'No'
      end
    ;;
  }

  dimension: ppsv23_shot_required {
    label: "PPSV23 Shot Required"
    description: "If patient is 65 or older and has not been vaccinated in the past."
    type: string
    sql:
      case
        when ${patient_1000_fh.age} >= 65
        and ${patient_immunization_date} is null
        and ${vaccine_name} = 'pneumococcal polysaccharide vaccine, 23 valent'
          then 'Yes'
        else 'No'
      end
    ;;
  }

  dimension: dtap_tdap_td_logic {
    type: string
    sql:
      case
        when ${patient_1000_fh.age} <= 6
          then "DTaP"
        when ${patient_1000_fh.age} > 6
          and ${patient_1000_fh.age} <= 18
            then "Tdap"
        when ${patient_1000_fh.age} > 18
          then "TD"
        else null
      end
    ;;
  }

  measure: immunization_recommendations { #This is ignoring the TD/Tdap/DTap flow requirements
    type: string
    sql:
      case
        when ${vaccine_name} = "Influenza, seasonal, injectable, preservative free"
          and (${most_recent_immunization_date} < date_sub(current_date(), interval 9 month)
            or ${most_recent_immunization_date} is null)
          then "Immunization Recommended"
        when ${vaccine_name} = "Influenza, seasonal, injectable, preservative free"
          and ${most_recent_immunization_date} >= date_sub(current_date(), interval 9 month)
          then "Up to date"
        when ${vaccine_name} = "Td (adult) preservative free"
          and (${most_recent_immunization_date} < date_sub(current_date(), interval 10 year)
            or ${most_recent_immunization_date} is null)
          then "Immunization Recommended"
        when ${vaccine_name} = "Td (adult) preservative free"
          and ${most_recent_immunization_date} >= date_sub(current_date(), interval 10 year)
          then "Up to date"
        when cast(${dt_immunization_schedules.total_number_of_doses} as int64) <= ${count}
          then "Up to date"
        when cast(${dt_immunization_schedules.total_number_of_doses} as int64) > ${count}
          then "Immunization Recommended"
      end
    ;;
  }
}
