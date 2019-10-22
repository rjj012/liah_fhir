####Written due to an inability to link medicationrequest to condition with unnesting ordering###
view: dt_condition_and_medication_link_rj {
  derived_table: {
    persist_for: "100 hours"
    sql:
      select
        rr.conditionId as condition_id
        , m.id as medication_id
      from
        `healthtest.FHIR_100_FH.MedicationRequest` as m
      left join
        unnest(reasonreference) as rr
      left join
        `healthtest.FHIR_100_FH.Condition` as c
          on c.id = rr.conditionid
       ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [detail*]
  }

  dimension: condition_id {
    hidden: yes
    type: string
    sql: ${TABLE}.condition_id ;;
  }

  dimension: medication_id {
    hidden: yes
    type: string
    sql: ${TABLE}.medication_id ;;
  }

  set: detail {
    fields: [condition_id, medication_id]
  }
}
