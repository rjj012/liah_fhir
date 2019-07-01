view: patient_1559757824302963 {
  sql_table_name: sampleFHIR.Patient_1559757824302963 ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: address {
    hidden: yes
    sql: ${TABLE}.address ;;
  }

  dimension: animal {
    hidden: yes
    sql: ${TABLE}.animal ;;
  }

  dimension: birth_date {
    type: string
    sql: ${TABLE}.birthDate ;;
  }

  dimension: communication {
    hidden: yes
    sql: ${TABLE}.communication ;;
  }

  dimension: contact {
    hidden: yes
    sql: ${TABLE}.contact ;;
  }

  dimension: deceased {
    hidden: yes
    sql: ${TABLE}.deceased ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: general_practitioner {
    hidden: yes
    sql: ${TABLE}.generalPractitioner ;;
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

  dimension: link {
    hidden: yes
    sql: ${TABLE}.link ;;
  }

  dimension: managing_organization {
    hidden: yes
    sql: ${TABLE}.managingOrganization ;;
  }

  dimension: marital_status {
    hidden: yes
    sql: ${TABLE}.maritalStatus ;;
  }

  dimension: meta {
    hidden: yes
    sql: ${TABLE}.meta ;;
  }

  dimension: multiple_birth {
    hidden: yes
    sql: ${TABLE}.multipleBirth ;;
  }

  dimension: name {
    hidden: yes
    sql: ${TABLE}.name ;;
  }

  dimension: photo {
    hidden: yes
    sql: ${TABLE}.photo ;;
  }

  dimension: telecom {
    hidden: yes
    sql: ${TABLE}.telecom ;;
  }

  dimension: text {
    hidden: yes
    sql: ${TABLE}.text ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}

view: Patient_1559757824302963__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: Patient_1559757824302963__identifier {
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

view: Patient_1559757824302963__identifier__assigner {
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

view: Patient_1559757824302963__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: Patient_1559757824302963__identifier__assigner__identifier {
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

view: Patient_1559757824302963__identifier__assigner__identifier__assigner {
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

view: Patient_1559757824302963__identifier__assigner__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: Patient_1559757824302963__identifier__assigner__identifier__assigner__identifier {
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

view: Patient_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner {
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

view: Patient_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding {
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

view: Patient_1559757824302963__identifier__assigner__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: Patient_1559757824302963__identifier__assigner__identifier__type__coding {
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

view: Patient_1559757824302963__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: Patient_1559757824302963__identifier__type__coding {
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

view: Patient_1559757824302963__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: Patient_1559757824302963__deceased {
  dimension: boolean {
    type: yesno
    sql: ${TABLE}.boolean ;;
  }

  dimension: date_time {
    type: string
    sql: ${TABLE}.dateTime ;;
  }
}

view: Patient_1559757824302963__address {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: district {
    type: string
    sql: ${TABLE}.district ;;
  }

  dimension: line {
    type: string
    sql: ${TABLE}.line ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postalCode ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }
}

view: Patient_1559757824302963__address__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: Patient_1559757824302963__link__other {
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

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }

  dimension: related_person_id {
    type: string
    sql: ${TABLE}.relatedPersonId ;;
  }
}

view: Patient_1559757824302963__link__other__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: Patient_1559757824302963__link__other__identifier {
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

view: Patient_1559757824302963__link__other__identifier__assigner {
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

view: Patient_1559757824302963__link__other__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: Patient_1559757824302963__link__other__identifier__assigner__identifier {
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

view: Patient_1559757824302963__link__other__identifier__assigner__identifier__assigner {
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

view: Patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: Patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier {
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

view: Patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier__assigner {
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

view: Patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier__type__coding {
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

view: Patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: Patient_1559757824302963__link__other__identifier__assigner__identifier__type__coding {
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

view: Patient_1559757824302963__link__other__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: Patient_1559757824302963__link__other__identifier__type__coding {
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

view: Patient_1559757824302963__link__other__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: Patient_1559757824302963__link {
  dimension: other {
    hidden: yes
    sql: ${TABLE}.other ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: Patient_1559757824302963__photo {
  dimension: content_type {
    type: string
    sql: ${TABLE}.contentType ;;
  }

  dimension: creation {
    type: string
    sql: ${TABLE}.creation ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.``hash`` ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
}

view: Patient_1559757824302963__multiple_birth {
  dimension: boolean {
    type: yesno
    sql: ${TABLE}.boolean ;;
  }

  dimension: integer {
    type: number
    sql: ${TABLE}.integer ;;
  }
}

view: Patient_1559757824302963__managing_organization {
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

view: Patient_1559757824302963__managing_organization__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: Patient_1559757824302963__managing_organization__identifier {
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

view: Patient_1559757824302963__managing_organization__identifier__assigner {
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

view: Patient_1559757824302963__managing_organization__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: Patient_1559757824302963__managing_organization__identifier__assigner__identifier {
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

view: Patient_1559757824302963__managing_organization__identifier__assigner__identifier__assigner {
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

view: Patient_1559757824302963__managing_organization__identifier__assigner__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: Patient_1559757824302963__managing_organization__identifier__assigner__identifier__assigner__identifier {
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

view: Patient_1559757824302963__managing_organization__identifier__assigner__identifier__assigner__identifier__assigner {
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

view: Patient_1559757824302963__managing_organization__identifier__assigner__identifier__assigner__identifier__type__coding {
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

view: Patient_1559757824302963__managing_organization__identifier__assigner__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: Patient_1559757824302963__managing_organization__identifier__assigner__identifier__type__coding {
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

view: Patient_1559757824302963__managing_organization__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: Patient_1559757824302963__managing_organization__identifier__type__coding {
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

view: Patient_1559757824302963__managing_organization__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: Patient_1559757824302963__meta {
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

view: Patient_1559757824302963__meta__security {
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

view: Patient_1559757824302963__meta__tag {
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

view: Patient_1559757824302963__contact__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: Patient_1559757824302963__contact__address {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: district {
    type: string
    sql: ${TABLE}.district ;;
  }

  dimension: line {
    type: string
    sql: ${TABLE}.line ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postalCode ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }
}

view: Patient_1559757824302963__contact__address__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: Patient_1559757824302963__contact {
  dimension: address {
    hidden: yes
    sql: ${TABLE}.address ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: name {
    hidden: yes
    sql: ${TABLE}.name ;;
  }

  dimension: organization {
    hidden: yes
    sql: ${TABLE}.organization ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: relationship {
    hidden: yes
    sql: ${TABLE}.relationship ;;
  }

  dimension: telecom {
    hidden: yes
    sql: ${TABLE}.telecom ;;
  }
}

view: Patient_1559757824302963__contact__organization {
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

view: Patient_1559757824302963__contact__organization__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: Patient_1559757824302963__contact__organization__identifier {
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

view: Patient_1559757824302963__contact__organization__identifier__assigner {
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

view: Patient_1559757824302963__contact__organization__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: Patient_1559757824302963__contact__organization__identifier__assigner__identifier {
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

view: Patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner {
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

view: Patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: Patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier {
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

view: Patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier__assigner {
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

view: Patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier__type__coding {
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

view: Patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: Patient_1559757824302963__contact__organization__identifier__assigner__identifier__type__coding {
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

view: Patient_1559757824302963__contact__organization__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: Patient_1559757824302963__contact__organization__identifier__type__coding {
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

view: Patient_1559757824302963__contact__organization__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: Patient_1559757824302963__contact__name {
  dimension: family {
    type: string
    sql: ${TABLE}.family ;;
  }

  dimension: given {
    type: string
    sql: ${TABLE}.given ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: prefix {
    type: string
    sql: ${TABLE}.prefix ;;
  }

  dimension: suffix {
    type: string
    sql: ${TABLE}.suffix ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }
}

view: Patient_1559757824302963__contact__name__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: Patient_1559757824302963__contact__telecom__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: Patient_1559757824302963__contact__telecom {
  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
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

view: Patient_1559757824302963__contact__relationship__coding {
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

view: Patient_1559757824302963__contact__relationship {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: Patient_1559757824302963__general_practitioner {
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

  dimension: practitioner_id {
    type: string
    sql: ${TABLE}.practitionerId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

view: Patient_1559757824302963__general_practitioner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: Patient_1559757824302963__general_practitioner__identifier {
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

view: Patient_1559757824302963__general_practitioner__identifier__assigner {
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

view: Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: Patient_1559757824302963__general_practitioner__identifier__assigner__identifier {
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

view: Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__assigner {
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

view: Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__assigner__identifier__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__assigner__identifier {
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

view: Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__assigner__identifier__assigner {
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

view: Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__assigner__identifier__type__coding {
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

view: Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__type__coding {
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

view: Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: Patient_1559757824302963__general_practitioner__identifier__type__coding {
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

view: Patient_1559757824302963__general_practitioner__identifier__type {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: Patient_1559757824302963__name {
  dimension: family {
    type: string
    sql: ${TABLE}.family ;;
  }

  dimension: given {
    type: string
    sql: ${TABLE}.given ;;
  }

  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: prefix {
    type: string
    sql: ${TABLE}.prefix ;;
  }

  dimension: suffix {
    type: string
    sql: ${TABLE}.suffix ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }
}

view: Patient_1559757824302963__name__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: Patient_1559757824302963__animal__species__coding {
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

view: Patient_1559757824302963__animal__species {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: Patient_1559757824302963__animal__breed__coding {
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

view: Patient_1559757824302963__animal__breed {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: Patient_1559757824302963__animal__gender_status__coding {
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

view: Patient_1559757824302963__animal__gender_status {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: Patient_1559757824302963__telecom__period {
  dimension: end {
    type: string
    sql: ${TABLE}.``end`` ;;
  }

  dimension: start {
    type: string
    sql: ${TABLE}.start ;;
  }
}

view: Patient_1559757824302963__telecom {
  dimension: period {
    hidden: yes
    sql: ${TABLE}.period ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
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

view: Patient_1559757824302963__text {
  dimension: div {
    type: string
    sql: ${TABLE}.div ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
}

view: Patient_1559757824302963__communication__language__coding {
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

view: Patient_1559757824302963__communication__language {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: Patient_1559757824302963__communication {
  dimension: language {
    hidden: yes
    sql: ${TABLE}.language ;;
  }

  dimension: preferred {
    type: yesno
    sql: ${TABLE}.preferred ;;
  }
}

view: Patient_1559757824302963__marital_status__coding {
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

view: Patient_1559757824302963__marital_status {
  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

view: Patient_1559757824302963__animal {
  dimension: breed {
    hidden: yes
    sql: ${TABLE}.breed ;;
  }

  dimension: gender_status {
    hidden: yes
    sql: ${TABLE}.genderStatus ;;
  }

  dimension: species {
    hidden: yes
    sql: ${TABLE}.species ;;
  }
}
