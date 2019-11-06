view: dt_immunization_schedules {
  label: "Immunization Schedules"
  derived_table: {
    persist_for: "100 hours"
    sql: select
        distinct immunization.vaccinecode.text  AS vaccine_text
        , c.code as vaccine_code
        , case
              when c.code = '03'
                  then '1'
              when c.code = '08'
                  then '0'
              when c.code = '10'
                  then '0.67'
              when c.code = '20'
                  then '0.17'
              when c.code = '21'
                  then '1'
              when c.code = '33'
                  then '65'
              when c.code = '43'
                  then '18'
              when c.code = '49'
                  then '0.17'
              when c.code = '52'
                  then '18'
              when c.code = '62'
                  then '11'
              when c.code = '83' /*was unclear*/
                  then '1'
              when c.code = '113'
                  then 'TBD' /*needs further work*/
              when c.code = '114'
                  then '11'
              when c.code = '115'
                  then '11'
              when c.code = '119'
                  then '0.115'
              when c.code = '121'
                  then '50'
              when c.code = '133'
                  then '0.17'
              when c.code = '140'
                  then '.5'
              else null
          end as first_dosage_lower_bound_in_years

          , case
              when c.code = '03'
                  then '1.25'
              when c.code = '08'
                  then null
              when c.code = '10'
                  then null
              when c.code = '20'
                  then null
              when c.code = '21'
                  then '1.25'
              when c.code = '33'
                  then null
              when c.code = '43'
                  then null
              when c.code = '49'
                  then null
              when c.code = '52'
                  then null
              when c.code = '62'
                  then '12'
              when c.code = '83' /*was unclear*/
                  then '2'
              when c.code = '113'
                  then 'TBD' /*Needs more work*/
              when c.code = '114'
                  then '12'
              when c.code = '115'
                  then '18'
              when c.code = '119'
                  then null
              when c.code = '121'
                  then null
              when c.code = '133'
                  then null
              when c.code = '140'
                  then null
              else null
          end as first_dosage_upper_bound_in_years


          , case
              when c.code = '03'
                  then '4'
              when c.code = '08'
                  then '.0833'
              when c.code = '10'
                  then '.33'
              when c.code = '20' #dtap
                  then '.33'
              when c.code = '21'
                  then '4'
              when c.code = '33'
                  then null
              when c.code = '43' /*dose is 1 to 2 months after the first*/
                  then 'One month after first dose'
              when c.code = '49'
                  then '0.33'
              when c.code = '52'
                  then '6 months after fist dose'
              when c.code = '62'
                  then '2 months after first dose'
              when c.code = '83'
                  then '1.5'
              when c.code = '113'
                  then 'Every ten years following 1 dose Tdap'
              when c.code = '114'
                  then '16'
              when c.code = '115'
                  then null
              when c.code = '119'
                  then '0.2'
              when c.code = '121'
                  then '50.167'
              when c.code = '133'
                  then '0.33'
              when c.code = '140'
                  then 'Annually for flu season'
              else null
          end as second_dose_lower_bound

          , case
              when c.code = '03'
                  then '6'
              when c.code = '08'
                  then null
              when c.code = '10'
                  then null
              when c.code = '20' /*more work needed part of dtap*/
                  then null
              when c.code = '21'
                  then '6'
              when c.code = '33'
                  then null
              when c.code = '43' /*dose is 1 to 2 months after the first*/
                  then '2 months after first dose'
              when c.code = '49'
                  then null
              when c.code = '52'
                  then '18 months after first dose'
              when c.code = '62'
                  then null
              when c.code = '83'
                  then null
              when c.code = '113'
                  then null
              when c.code = '114'
                  then null
              when c.code = '115'
                  then null
              when c.code = '119'
                  then '0.46'
              when c.code = '121'
                  then '50.5'
              when c.code = '133'
                  then null
              when c.code = '140'
                  then null
              else null
          end as second_dose_upper_bound


          , case
              when c.code = '03'
                  then null
              when c.code = '08'
                  then '0.5' /*also has conditions on min time between*/
              when c.code = '10'
                  then '0.5'
              when c.code = '20'
                  then '0.5'
              when c.code = '21'
                  then null
              when c.code = '33'
                  then null
              when c.code = '43'
                  then 'At least 16 weeks after dose 1 and 8 weeks after dose 2'
              when c.code = '49'
                  then '0.5 (may be optional)'
              when c.code = '52'
                  then null
              when c.code = '62'
                  then '6 months after first dose'
              when c.code = '83'
                  then null
              when c.code = '113'
                  then 'Every ten years following 1 dose Tdap'
              when c.code = '114'
                  then null
              when c.code = '115'
                  then null
              when c.code = '119'
                  then null
              when c.code = '121'
                  then null
              when c.code = '133'
                  then '0.5'
              when c.code = '140'
                  then null
              else null
          end as third_dose_lower_bound

          , case
              when c.code = '03'
                  then null
              when c.code = '08'
                  then null
              when c.code = '10'
                  then '1.5'
              when c.code = '20'
                  then null
              when c.code = '21'
                  then null
              when c.code = '33'
                  then null
              when c.code = '43'
                  then null
              when c.code = '49'
                  then null
              when c.code = '52'
                  then null
              when c.code = '62'
                  then null
              when c.code = '83'
                  then null
              when c.code = '113'
                  then null
              when c.code = '114'
                  then null
              when c.code = '115'
                  then null
              when c.code = '119'
                  then null
              when c.code = '121'
                  then null
              when c.code = '133'
                  then null
              when c.code = '140'
                  then null
              else null
          end as third_dose_upper_bound


          , case
              when c.code = '03'
                  then null
              when c.code = '08'
                  then null
              when c.code = '10'
                  then '4'
              when c.code = '20'
                  then '1.25'
              when c.code = '21'
                  then null
              when c.code = '33'
                  then null
              when c.code = '43'
                  then null
              when c.code = '49'
                  then '1'
              when c.code = '52'
                  then null
              when c.code = '62'
                  then null
              when c.code = '83'
                  then null
              when c.code = '113'
                  then 'Every ten years following 1 dose Tdap'
              when c.code = '114'
                  then null
              when c.code = '115'
                  then null
              when c.code = '119'
                  then null
              when c.code = '121'
                  then null
              when c.code = '133'
                  then '1'
              when c.code = '140'
                  then null
              else null
          end as fourth_dose_lower_bound

          , case
              when c.code = '03'
                  then null
              when c.code = '08'
                  then null
              when c.code = '10'
                  then '6'
              when c.code = '20'
                  then '1.5'
              when c.code = '21'
                  then null
              when c.code = '33'
                  then null
              when c.code = '43'
                  then null
              when c.code = '49'
                  then '1.25'
              when c.code = '52'
                  then null
              when c.code = '62'
                  then null
              when c.code = '83'
                  then null
              when c.code = '113'
                  then null
              when c.code = '114'
                  then null
              when c.code = '115'
                  then null
              when c.code = '119'
                  then null
              when c.code = '121'
                  then null
              when c.code = '133'
                  then '1.25'
              when c.code = '140'
                  then null
              else null
          end as fourth_dose_upper_bound


          , case
              when c.code = '03'
                  then null
              when c.code = '08'
                  then null
              when c.code = '10'
                  then null
              when c.code = '20'
                  then '4'
              when c.code = '21'
                  then null
              when c.code = '33'
                  then null
              when c.code = '43'
                  then null
              when c.code = '49'
                  then null
              when c.code = '52'
                  then null
              when c.code = '62'
                  then null
              when c.code = '83'
                  then null
              when c.code = '113'
                  then 'Every ten years following 1 dose Tdap'
              when c.code = '114'
                  then null
              when c.code = '115'
                  then null
              when c.code = '119'
                  then null
              when c.code = '121'
                  then null
              when c.code = '133'
                  then null
              when c.code = '140'
                  then null
              else null
          end as fifth_dose_lower_bound

          , case
              when c.code = '03'
                  then null
              when c.code = '08'
                  then null
              when c.code = '10'
                  then null
              when c.code = '20'
                  then '6'
              when c.code = '21'
                  then null
              when c.code = '33'
                  then null
              when c.code = '43'
                  then null
              when c.code = '49'
                  then null
              when c.code = '52'
                  then null
              when c.code = '62'
                  then null
              when c.code = '83'
                  then null
              when c.code = '113'
                  then null
              when c.code = '114'
                  then null
              when c.code = '115'
                  then null
              when c.code = '119'
                  then null
              when c.code = '121'
                  then null
              when c.code = '133'
                  then null
              when c.code = '140'
                  then null
              else null
          end as fifth_dose_upper_bound

          , case
              when c.code = '03'
                  then '2'
              when c.code = '08'
                  then '3'
              when c.code = '10'
                  then '4'
              when c.code = '20'
                  then '5'
              when c.code = '21'
                  then '2'
              when c.code = '33'
                  then '1'
              when c.code = '43'
                  then '3'
              when c.code = '49'
                  then '4'
              when c.code = '52'
                  then '2'
              when c.code = '62'
                  then '3'
              when c.code = '83'
                  then '2'
              when c.code = '113'
                  then null
              when c.code = '114'
                  then '2'
              when c.code = '115'
                  then '1'
              when c.code = '119'
                  then '2'
              when c.code = '121'
                  then '2'
              when c.code = '133'
                  then '4'
              when c.code = '140'
                  then null
              else 'Not Classified'
          end as total_doses

      from
        FHIR_1000_FH.Immunization
      left join
        unnest(immunization.vaccineCode.coding) as c
      group by
        1,2
       ;;
  }

  measure: count {
    type: count
  }

  dimension: vaccine_text {
    type: string
    sql: ${TABLE}.vaccine_text ;;
  }

  dimension: vaccine_code {
    type: string
    sql: ${TABLE}.vaccine_code ;;
  }

  dimension: first_dosage_lower_bound_in_years {
    type: string
    sql: ${TABLE}.first_dosage_lower_bound_in_years ;;
  }

  dimension: first_dosage_upper_bound_in_years {
    type: string
    sql: ${TABLE}.first_dosage_upper_bound_in_years ;;
  }

  dimension: second_dose_lower_bound {
    type: string
    sql: ${TABLE}.second_dose_lower_bound ;;
  }

  dimension: second_dose_upper_bound {
    type: string
    sql: ${TABLE}.second_dose_upper_bound ;;
  }

  dimension: third_dose_lower_bound {
    type: string
    sql: ${TABLE}.third_dose_lower_bound ;;
  }

  dimension: third_dose_upper_bound {
    type: string
    sql: ${TABLE}.third_dose_upper_bound ;;
  }

  dimension: fourth_dose_lower_bound {
    type: string
    sql: ${TABLE}.fourth_dose_lower_bound ;;
  }

  dimension: fourth_dose_upper_bound {
    type: string
    sql: ${TABLE}.fourth_dose_upper_bound ;;
  }

  dimension: fifth_dose_lower_bound {
    type: string
    sql: ${TABLE}.fifth_dose_lower_bound ;;
  }

  dimension: fifth_dose_upper_bound {
    type: string
    sql: ${TABLE}.fifth_dose_upper_bound ;;
  }

  dimension: total_number_of_doses {
    label: "Recommended Doses"
    type: number
    sql: ${TABLE}.total_doses ;;
  }

  ###Further alteration in LookML###
}
