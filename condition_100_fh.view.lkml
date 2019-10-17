view: condition_100_fh {
  sql_table_name: FHIR_100_FH.Condition ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: abatement {
    hidden: yes
    sql: ${TABLE}.abatement ;;
  }

  dimension: asserted_date {
    type: string
    sql: ${TABLE}.assertedDate ;;
  }

  dimension: asserter {
    hidden: yes
    sql: ${TABLE}.asserter ;;
  }

  dimension: body_site {
    hidden: yes
    sql: ${TABLE}.bodySite ;;
  }

  dimension: category {
    hidden: yes
    sql: ${TABLE}.category ;;
  }

  dimension: clinical_status {
    type: string
    sql: ${TABLE}.clinicalStatus ;;
  }

  dimension: code {
    hidden: yes
    sql: ${TABLE}.code ;;
  }

  dimension: context {
    hidden: yes
    sql: ${TABLE}.context ;;
  }

  dimension: evidence {
    hidden: yes
    sql: ${TABLE}.evidence ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: implicit_rules {
    type: string
    sql: ${TABLE}.implicitRules ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: meta {
    hidden: yes
    sql: ${TABLE}.meta ;;
  }

  dimension: note {
    hidden: yes
    sql: ${TABLE}.note ;;
  }

  dimension: onset {
    hidden: yes
    sql: ${TABLE}.onset ;;
  }

  dimension: severity {
    hidden: yes
    sql: ${TABLE}.severity ;;
  }

  dimension: stage {
    hidden: yes
    sql: ${TABLE}.stage ;;
  }

  dimension: subject {
    #hidden: yes
    sql: ${TABLE}.subject ;;
  }

  dimension: text {
    hidden: yes
    sql: ${TABLE}.text ;;
  }

  dimension: verification_status {
    type: string
    sql: ${TABLE}.verificationStatus ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

view: condition__severity__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__severity {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: condition__identifier {
  dimension: assigner {
    hidden: yes
    sql: ${TABLE}.assigner ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: type {
    hidden: yes
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: condition__identifier__assigner {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organizationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: condition__identifier__assigner__identifier {
  dimension: assigner {
    hidden: yes
    sql: ${TABLE}.assigner ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: type {
    hidden: yes
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: condition__identifier__assigner__identifier__assigner {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organizationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__identifier__assigner__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: condition__identifier__assigner__identifier__assigner__identifier {
  dimension: assigner {
    hidden: yes
    sql: ${TABLE}.assigner ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: type {
    hidden: yes
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: condition__identifier__assigner__identifier__assigner__identifier__assigner {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organizationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__identifier__assigner__identifier__assigner__identifier__type__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__identifier__assigner__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__identifier__assigner__identifier__type__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__identifier__type__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__note__author__reference {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: patient_id {
    type: string
    sql: ${TABLE}.patientId ;;
  }

  dimension: practitioner_id {
    type: string
    sql: ${TABLE}.practitionerId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }

  dimension: related_person_id {
    type: string
    sql: ${TABLE}.relatedPersonId ;;
  }
}

view: condition__note__author__reference__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: condition__note__author__reference__identifier {
  dimension: assigner {
    hidden: yes
    sql: ${TABLE}.assigner ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: type {
    hidden: yes
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: condition__note__author__reference__identifier__assigner {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organizationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__note__author__reference__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: condition__note__author__reference__identifier__assigner__identifier {
  dimension: assigner {
    hidden: yes
    sql: ${TABLE}.assigner ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: type {
    hidden: yes
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: condition__note__author__reference__identifier__assigner__identifier__assigner {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organizationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__note__author__reference__identifier__assigner__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: condition__note__author__reference__identifier__assigner__identifier__assigner__identifier {
  dimension: assigner {
    hidden: yes
    sql: ${TABLE}.assigner ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: type {
    hidden: yes
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: condition__note__author__reference__identifier__assigner__identifier__assigner__identifier__assigner {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organizationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__note__author__reference__identifier__assigner__identifier__assigner__identifier__type__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__note__author__reference__identifier__assigner__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__note__author__reference__identifier__assigner__identifier__type__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__note__author__reference__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__note__author__reference__identifier__type__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__note__author__reference__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__note__author {
  dimension: reference {
    hidden: yes
    sql: ${TABLE}.reference ;;
  }

  dimension: string {
    type: string
    sql: ${TABLE}.string ;;
  }
}

view: condition__note {
  dimension: author {
    hidden: yes
    sql: ${TABLE}.author ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }
}

view: condition__code__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__code {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__evidence__code__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__evidence__code {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__evidence__detail {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }

  dimension: resource_id {
    type: string
    sql: ${TABLE}.resourceId ;;
  }
}

view: condition__evidence__detail__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: condition__evidence__detail__identifier {
  dimension: assigner {
    hidden: yes
    sql: ${TABLE}.assigner ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: type {
    hidden: yes
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: condition__evidence__detail__identifier__assigner {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organizationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__evidence__detail__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: condition__evidence__detail__identifier__assigner__identifier {
  dimension: assigner {
    hidden: yes
    sql: ${TABLE}.assigner ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: type {
    hidden: yes
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: condition__evidence__detail__identifier__assigner__identifier__assigner {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organizationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__evidence__detail__identifier__assigner__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: condition__evidence__detail__identifier__assigner__identifier__assigner__identifier {
  dimension: assigner {
    hidden: yes
    sql: ${TABLE}.assigner ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: type {
    hidden: yes
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: condition__evidence__detail__identifier__assigner__identifier__assigner__identifier__assigner {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organizationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__evidence__detail__identifier__assigner__identifier__assigner__identifier__type__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__evidence__detail__identifier__assigner__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__evidence__detail__identifier__assigner__identifier__type__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__evidence__detail__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__evidence__detail__identifier__type__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__evidence__detail__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__subject {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: group_id {
    type: string
    sql: ${TABLE}.groupId ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: patient_id {
    type: string
    sql: ${TABLE}.patientId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__subject__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: condition__subject__identifier {
  dimension: assigner {
    hidden: yes
    sql: ${TABLE}.assigner ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: type {
    hidden: yes
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: condition__subject__identifier__assigner {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organizationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__subject__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: condition__subject__identifier__assigner__identifier {
  dimension: assigner {
    hidden: yes
    sql: ${TABLE}.assigner ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: type {
    hidden: yes
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: condition__subject__identifier__assigner__identifier__assigner {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organizationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__subject__identifier__assigner__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: condition__subject__identifier__assigner__identifier__assigner__identifier {
  dimension: assigner {
    hidden: yes
    sql: ${TABLE}.assigner ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: type {
    hidden: yes
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: condition__subject__identifier__assigner__identifier__assigner__identifier__assigner {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organizationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__subject__identifier__assigner__identifier__assigner__identifier__type__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__subject__identifier__assigner__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__subject__identifier__assigner__identifier__type__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__subject__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__subject__identifier__type__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__subject__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__onset {
  dimension: age {
    hidden: yes
    sql: ${TABLE}.age ;;
  }

  dimension: date_time {
    type: string
    sql: ${TABLE}.dateTime ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: range {
    hidden: yes
    sql: ${TABLE}.``range`` ;;
  }

  dimension: string {
    type: string
    sql: ${TABLE}.string ;;
  }
}

view: condition__onset__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: condition__onset__range__high {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}.unit ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: condition__onset__range__low {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}.unit ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: condition__onset__age {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: comparator {
    type: string
    sql: ${TABLE}.comparator ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}.unit ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: condition__body_site__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__body_site {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__asserter {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: patient_id {
    type: string
    sql: ${TABLE}.patientId ;;
  }

  dimension: practitioner_id {
    type: string
    sql: ${TABLE}.practitionerId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }

  dimension: related_person_id {
    type: string
    sql: ${TABLE}.relatedPersonId ;;
  }
}

view: condition__asserter__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: condition__asserter__identifier {
  dimension: assigner {
    hidden: yes
    sql: ${TABLE}.assigner ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: type {
    hidden: yes
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: condition__asserter__identifier__assigner {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organizationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__asserter__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: condition__asserter__identifier__assigner__identifier {
  dimension: assigner {
    hidden: yes
    sql: ${TABLE}.assigner ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: type {
    hidden: yes
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: condition__asserter__identifier__assigner__identifier__assigner {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organizationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__asserter__identifier__assigner__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: condition__asserter__identifier__assigner__identifier__assigner__identifier {
  dimension: assigner {
    hidden: yes
    sql: ${TABLE}.assigner ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: type {
    hidden: yes
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: condition__asserter__identifier__assigner__identifier__assigner__identifier__assigner {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organizationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__asserter__identifier__assigner__identifier__assigner__identifier__type__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__asserter__identifier__assigner__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__asserter__identifier__assigner__identifier__type__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__asserter__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__asserter__identifier__type__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__asserter__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__stage__summary__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__stage__summary {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__stage__assessment {
  dimension: clinical_impression_id {
    type: string
    sql: ${TABLE}.clinicalImpressionId ;;
  }

  dimension: diagnostic_report_id {
    type: string
    sql: ${TABLE}.diagnosticReportId ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: observation_id {
    type: string
    sql: ${TABLE}.observationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__stage__assessment__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: condition__stage__assessment__identifier {
  dimension: assigner {
    hidden: yes
    sql: ${TABLE}.assigner ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: type {
    hidden: yes
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: condition__stage__assessment__identifier__assigner {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organizationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__stage__assessment__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: condition__stage__assessment__identifier__assigner__identifier {
  dimension: assigner {
    hidden: yes
    sql: ${TABLE}.assigner ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: type {
    hidden: yes
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: condition__stage__assessment__identifier__assigner__identifier__assigner {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organizationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__stage__assessment__identifier__assigner__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: condition__stage__assessment__identifier__assigner__identifier__assigner__identifier {
  dimension: assigner {
    hidden: yes
    sql: ${TABLE}.assigner ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: type {
    hidden: yes
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: condition__stage__assessment__identifier__assigner__identifier__assigner__identifier__assigner {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organizationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__stage__assessment__identifier__assigner__identifier__assigner__identifier__type__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__stage__assessment__identifier__assigner__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__stage__assessment__identifier__assigner__identifier__type__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__stage__assessment__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__stage__assessment__identifier__type__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__stage__assessment__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__meta {
  dimension_group: last_updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.lastUpdated ;;
  }

  dimension: profile {
    type: string
    sql: ${TABLE}.profile ;;
  }

  dimension: security {
    hidden: yes
    sql: ${TABLE}.security ;;
  }

  dimension: tag {
    hidden: yes
    sql: ${TABLE}.tag ;;
  }

  dimension: version_id {
    type: string
    sql: ${TABLE}.versionId ;;
  }
}

view: condition__meta__security {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__meta__tag {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__context {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: encounter_id {
    type: string
    sql: ${TABLE}.encounterId ;;
  }

  dimension: episode_of_care_id {
    type: string
    sql: ${TABLE}.episodeOfCareId ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__context__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: condition__context__identifier {
  dimension: assigner {
    hidden: yes
    sql: ${TABLE}.assigner ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: type {
    hidden: yes
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: condition__context__identifier__assigner {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organizationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__context__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: condition__context__identifier__assigner__identifier {
  dimension: assigner {
    hidden: yes
    sql: ${TABLE}.assigner ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: type {
    hidden: yes
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: condition__context__identifier__assigner__identifier__assigner {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organizationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__context__identifier__assigner__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: condition__context__identifier__assigner__identifier__assigner__identifier {
  dimension: assigner {
    hidden: yes
    sql: ${TABLE}.assigner ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: type {
    hidden: yes
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: condition__context__identifier__assigner__identifier__assigner__identifier__assigner {
  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organizationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: condition__context__identifier__assigner__identifier__assigner__identifier__type__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__context__identifier__assigner__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__context__identifier__assigner__identifier__type__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__context__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__context__identifier__type__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__context__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__text {
  dimension: div {
    type: string
    sql: ${TABLE}.div ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
}

view: condition__category__coding {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: condition__category {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: condition__abatement {
  dimension: age {
    hidden: yes
    sql: ${TABLE}.age ;;
  }

  dimension: boolean {
    type: yesno
    sql: ${TABLE}.boolean ;;
  }

  dimension: date_time {
    type: string
    sql: ${TABLE}.dateTime ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: range {
    hidden: yes
    sql: ${TABLE}.``range`` ;;
  }

  dimension: string {
    type: string
    sql: ${TABLE}.string ;;
  }
}

view: condition__abatement__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: condition__abatement__range__high {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}.unit ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: condition__abatement__range__low {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}.unit ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: condition__abatement__age {
  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: comparator {
    type: string
    sql: ${TABLE}.comparator ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}.unit ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: condition__evidence {
  dimension: code {
    hidden: yes
    sql: ${TABLE}.code ;;
  }

  dimension: detail {
    hidden: yes
    sql: ${TABLE}.detail ;;
  }
}

view: condition__onset__range {
  dimension: high {
    hidden: yes
    sql: ${TABLE}.high ;;
  }

  dimension: low {
    hidden: yes
    sql: ${TABLE}.low ;;
  }
}

view: condition__stage {
  dimension: assessment {
    hidden: yes
    sql: ${TABLE}.assessment ;;
  }

  dimension: summary {
    hidden: yes
    sql: ${TABLE}.summary ;;
  }
}

view: condition__abatement__range {
  dimension: high {
    hidden: yes
    sql: ${TABLE}.high ;;
  }

  dimension: low {
    hidden: yes
    sql: ${TABLE}.low ;;
  }
}
