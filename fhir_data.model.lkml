connection: "googlebigquerystd"

# include all the views
include: "*.view"

datagroup: fhir_data_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: fhir_data_default_datagroup

explore: patient_1559757824302963 {

#   joins:
      join: patient_1559757824302963__identifier__period {
       view_label: "Patient:  ID Period"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__identifier.period}]) as patient_1559757824302963__identifier__period ;;
       relationship: one_to_one
}
      join: patient_1559757824302963__identifier {
       view_label: "Patient:  ID"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963.identifier}) as patient_1559757824302963__identifier ;;
       relationship: one_to_many
}
      join: patient_1559757824302963__identifier__assigner {
       view_label: "Patient:  ID Assigner"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__identifier.assigner}]) as patient_1559757824302963__identifier__assigner ;;
       relationship: one_to_one
}
      join: patient_1559757824302963__identifier__assigner__identifier__period {
       view_label: "Patient:  ID Assigner ID Period"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__identifier__assigner__identifier.period}]) as patient_1559757824302963__identifier__assigner__identifier__period ;;
       relationship: one_to_one
}
      join: patient_1559757824302963__identifier__assigner__identifier {
       view_label: "Patient:  ID Assigner ID"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__identifier__assigner.identifier}]) as patient_1559757824302963__identifier__assigner__identifier ;;
       relationship: one_to_one
}
      join: patient_1559757824302963__identifier__assigner__identifier__assigner {
       view_label: "Patient:  ID Assigner ID Assigner"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__identifier__assigner__identifier.assigner}]) as patient_1559757824302963__identifier__assigner__identifier__assigner ;;
       relationship: one_to_one
}
      join: patient_1559757824302963__identifier__assigner__identifier__assigner__identifier__period {
       view_label: "Patient:  ID Assigner ID Assigner ID Period"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__identifier__assigner__identifier__assigner__identifier.period}]) as patient_1559757824302963__identifier__assigner__identifier__assigner__identifier__period ;;
       relationship: one_to_one
}
      join: patient_1559757824302963__identifier__assigner__identifier__assigner__identifier {
       view_label: "Patient:  ID Assigner ID Assigner ID"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__identifier__assigner__identifier__assigner.identifier}]) as patient_1559757824302963__identifier__assigner__identifier__assigner__identifier ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner {
       view_label: "Patient:  ID Assigner ID Assigner ID Assigner"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__identifier__assigner__identifier__assigner__identifier.assigner}]) as patient_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding {
       view_label: "Patient:  ID Assigner ID Assigner ID Type Coding"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__identifier__assigner__identifier__assigner__identifier__type.coding}) as patient_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding ;;
       relationship: one_to_many
      }
      join: patient_1559757824302963__identifier__assigner__identifier__assigner__identifier__type {
       view_label: "Patient:  ID Assigner ID Assigner ID Type"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__identifier__assigner__identifier__assigner__identifier.type}]) as patient_1559757824302963__identifier__assigner__identifier__assigner__identifier__type ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__identifier__assigner__identifier__type__coding {
       view_label: "Patient:  ID Assigner ID Type Coding"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__identifier__assigner__identifier__type.coding}) as patient_1559757824302963__identifier__assigner__identifier__type__coding ;;
       relationship: one_to_many
      }
      join: patient_1559757824302963__identifier__assigner__identifier__type {
       view_label: "Patient:  ID Assigner ID Type"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__identifier__assigner__identifier.type}]) as patient_1559757824302963__identifier__assigner__identifier__type ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__identifier__type__coding {
       view_label: "Patient:  ID Type Coding"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__identifier__type.coding}) as patient_1559757824302963__identifier__type__coding ;;
       relationship: one_to_many
    }
      join: patient_1559757824302963__identifier__type {
       view_label: "Patient:  ID Type"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__identifier.type}]) as patient_1559757824302963__identifier__type ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__deceased {
       view_label: "Patient:  Deceased"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963.deceased}]) as patient_1559757824302963__deceased ;;
       relationship: one_to_one
}
      join: patient_1559757824302963__address {
       view_label: "Patient:  Address"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963.address}) as patient_1559757824302963__address ;;
       relationship: one_to_many
}

      join: patient_1559757824302963__address__period {
       view_label: "Patient:  Address Period"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__address.period}]) as patient_1559757824302963__address__period ;;
       relationship: one_to_one
}


      join: patient_1559757824302963__link__other{
       view_label: "Patient:  Link Other"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__link.other}]) as patient_1559757824302963__link__other ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__link__other__identifier__period{
       view_label: "Patient:  Link Other ID Period"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__link__other__identifier.period}]) as patient_1559757824302963__link__other__identifier__period ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__link__other__identifier{
       view_label: "Patient:  Link Other ID"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__link__other.identifier}]) as patient_1559757824302963__link__other__identifier ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__link__other__identifier__assigner{
       view_label: "Patient:  Link Other ID Assigner"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__link__other__identifier.assigner}]) as patient_1559757824302963__link__other__identifier__assigner ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__link__other__identifier__assigner__identifier__period{
       view_label: "Patient:  Link Other ID Assigner ID Period"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__link__other__identifier__assigner__identifier.period}]) as patient_1559757824302963__link__other__identifier__assigner__identifier__period ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__link__other__identifier__assigner__identifier{
       view_label: "Patient:  Link Other ID Assigner ID"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__link__other__identifier__assigner.identifier}]) as patient_1559757824302963__link__other__identifier__assigner__identifier ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__link__other__identifier__assigner__identifier__assigner{
       view_label: "Patient:  Link Other ID Assigner ID Assigner"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__link__other__identifier__assigner__identifier.assigner}]) as patient_1559757824302963__link__other__identifier__assigner__identifier__assigner ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier__period{
       view_label: "Patient:  Link Other ID Assigner ID Assigner ID Period"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier.period}]) as patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier__period ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier{
       view_label: "Patient:  Link Other ID Assigner ID Assigner ID"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__link__other__identifier__assigner__identifier__assigner.identifier}]) as patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier__assigner{
       view_label: "Patient:  Link Other ID Assigner ID Assigner ID Assigner"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier.assigner}]) as patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier__assigner ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier__type__coding{
       view_label: "Patient:  Link Other ID Assigner ID Assigner ID Type Coding"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier__type.coding}) as patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier__type__coding ;;
       relationship: one_to_many
      }
      join: patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier__type{
       view_label: "Patient:  Link Other ID Assigner ID Assigner ID Type"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier.type}]) as patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier__type ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__link__other__identifier__assigner__identifier__type__coding{
       view_label: "Patient:  Link Other ID Assigner ID Type Coding"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__link__other__identifier__assigner__identifier__type.coding}) as patient_1559757824302963__link__other__identifier__assigner__identifier__type__coding ;;
       relationship: one_to_many
      }
      join: patient_1559757824302963__link__other__identifier__assigner__identifier__type{
       view_label: "Patient:  Link Other ID Assigner ID Type"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__link__other__identifier__assigner__identifier.type}]) as patient_1559757824302963__link__other__identifier__assigner__identifier__type ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__link__other__identifier__type__coding{
       view_label: "Patient:  Link Other ID Type Coding"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__link__other__identifier__type.coding}) as patient_1559757824302963__link__other__identifier__type__coding ;;
       relationship: one_to_many
      }
      join: patient_1559757824302963__link__other__identifier__type{
       view_label: "Patient:  Link Other ID Type"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__link__other__identifier.type}]) as patient_1559757824302963__link__other__identifier__type ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__link{
       view_label: "Patient:  Link"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963.link}) as patient_1559757824302963__link ;;
       relationship: one_to_many
      }
      join: patient_1559757824302963__photo{
       view_label: "Patient:  Photo"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963.photo}) as patient_1559757824302963__photo ;;
       relationship: one_to_many
      }
      join: patient_1559757824302963__multipleBirth{
       view_label: "Patient:  Multiplebirth"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963.multiple_birth}]) as patient_1559757824302963__multipleBirth ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__managingOrganization{
       view_label: "Patient:  Managing Organization"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963.managing_organization}]) as patient_1559757824302963__managingOrganization ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__managingOrganization__identifier__period{
       view_label: "Patient:  Managing Organization ID Period"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__managingOrganization__identifier.period}]) as patient_1559757824302963__managingOrganization__identifier__period ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__managingOrganization__identifier{
       view_label: "Patient:  Managing Organization ID"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__managingOrganization.identifier}]) as patient_1559757824302963__managingOrganization__identifier ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__managingOrganization__identifier__assigner{
       view_label: "Patient:  Managing Organization ID Assigner"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__managingOrganization__identifier.assigner}]) as patient_1559757824302963__managingOrganization__identifier__assigner ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__managingOrganization__identifier__assigner__identifier__period{
       view_label: "Patient:  Managing Organization ID Assigner ID Period"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__managingOrganization__identifier__assigner__identifier.period}]) as patient_1559757824302963__managingOrganization__identifier__assigner__identifier__period ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__managingOrganization__identifier__assigner__identifier{
       view_label: "Patient:  Managing Organization ID Assigner ID"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__managingOrganization__identifier__assigner.identifier}]) as patient_1559757824302963__managingOrganization__identifier__assigner__identifier ;;
       relationship: one_to_one
      }
      join: patient_1559757824302963__managingOrganization__identifier__assigner__identifier__assigner{
       view_label: "Patient:  Managing Organization ID Assigner ID Assigner"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__managingOrganization__identifier__assigner__identifier.assigner}]) as patient_1559757824302963__managingOrganization__identifier__assigner__identifier__assigner ;;
       relationship: one_to_one
      }
     join: patient_1559757824302963__managingOrganization__identifier__assigner__identifier__assigner__identifier__period{
       view_label: "Patient:  Managing Organization ID Assigner ID Assigner ID Period"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__managingOrganization__identifier__assigner__identifier__assigner__identifier.period}]) as patient_1559757824302963__managingOrganization__identifier__assigner__identifier__assigner__identifier__period ;;
       relationship: one_to_one
      }
     join: patient_1559757824302963__managingOrganization__identifier__assigner__identifier__assigner__identifier{
       view_label: "Patient:  Managing Organization ID Assigner ID Assigner ID"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__managingOrganization__identifier__assigner__identifier__assigner.identifier}]) as patient_1559757824302963__managingOrganization__identifier__assigner__identifier__assigner__identifier ;;
       relationship: one_to_one
      }
     join: patient_1559757824302963__managingOrganization__identifier__assigner__identifier__assigner__identifier__assigner{
       view_label: "Patient:  Managing Organization ID Assigner ID Assigner ID Assigner"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__managingOrganization__identifier__assigner__identifier__assigner__identifier.assigner}]) as patient_1559757824302963__managingOrganization__identifier__assigner__identifier__assigner__identifier__assigner ;;
       relationship: one_to_one
      }
     join: patient_1559757824302963__managingOrganization__identifier__assigner__identifier__assigner__identifier__type__coding{
       view_label: "Patient:  Managing Organization ID Assigner ID Assigner ID Type Coding"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__managingOrganization__identifier__assigner__identifier__assigner__identifier__type.coding}) as patient_1559757824302963__managingOrganization__identifier__assigner__identifier__assigner__identifier__type__coding ;;
       relationship: one_to_many
      }
     join: patient_1559757824302963__managingOrganization__identifier__assigner__identifier__assigner__identifier__type{
       view_label: "Patient:  Managing Organization ID Assigner ID Assigner ID Type"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__managingOrganization__identifier__assigner__identifier__assigner__identifier.type}]) as patient_1559757824302963__managingOrganization__identifier__assigner__identifier__assigner__identifier__type ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__managingOrganization__identifier__assigner__identifier__type__coding{
       view_label: "Patient:  Managing Organization ID Assigner ID Type Coding"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__managingOrganization__identifier__assigner__identifier__type.coding}) as patient_1559757824302963__managingOrganization__identifier__assigner__identifier__type__coding ;;
       relationship: one_to_many
      }
     join:   patient_1559757824302963__managingOrganization__identifier__assigner__identifier__type{
       view_label: "Patient:  Managing Organization ID Assigner ID Type"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__managingOrganization__identifier__assigner__identifier.type}]) as patient_1559757824302963__managingOrganization__identifier__assigner__identifier__type ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__managingOrganization__identifier__type__coding{
       view_label: "Patient:  Managing Organization ID Type Coding"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__managingOrganization__identifier__type.coding}) as patient_1559757824302963__managingOrganization__identifier__type__coding ;;
       relationship: one_to_many
      }
     join:   patient_1559757824302963__managingOrganization__identifier__type{
       view_label: "Patient:  Managing Organization ID Type"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__managingOrganization__identifier.type}]) as patient_1559757824302963__managingOrganization__identifier__type ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__meta{
       view_label: "Patient:  Meta"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963.meta}]) as patient_1559757824302963__meta ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__meta__security{
       view_label: "Patient:  Meta Security"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__meta.security}) as patient_1559757824302963__meta__security ;;
       relationship: one_to_many
      }
     join:   patient_1559757824302963__meta__tag{
       view_label: "Patient:  Meta Tag"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__meta.tag}) as patient_1559757824302963__meta__tag ;;
       relationship: one_to_many
      }
     join:   patient_1559757824302963__contact__period{
       view_label: "Patient:  Contact Period"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__contact.period}]) as patient_1559757824302963__contact__period ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__contact__address{
       view_label: "Patient:  Contact Address"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__contact.address}]) as patient_1559757824302963__contact__address ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__contact__address__period{
       view_label: "Patient:  Contact Address Period"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__contact__address.period}]) as patient_1559757824302963__contact__address__period ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__contact{
       view_label: "Patient:  Contact"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963.contact}) as patient_1559757824302963__contact ;;
       relationship: one_to_many
      }
     join:   patient_1559757824302963__contact__organization{
       view_label: "Patient:  Contact Organization"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__contact.organization}]) as patient_1559757824302963__contact__organization ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__contact__organization__identifier__period{
       view_label: "Patient:  Contact Organization ID Period"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__contact__organization__identifier.period}]) as patient_1559757824302963__contact__organization__identifier__period ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__contact__organization__identifier{
       view_label: "Patient:  Contact Organization ID"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__contact__organization.identifier}]) as patient_1559757824302963__contact__organization__identifier ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__contact__organization__identifier__assigner{
       view_label: "Patient:  Contact Organization ID Assigner"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__contact__organization__identifier.assigner}]) as patient_1559757824302963__contact__organization__identifier__assigner ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__contact__organization__identifier__assigner__identifier__period{
       view_label: "Patient:  Contact Organization ID Assigner ID Period"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__contact__organization__identifier__assigner__identifier.period}]) as patient_1559757824302963__contact__organization__identifier__assigner__identifier__period ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__contact__organization__identifier__assigner__identifier{
       view_label: "Patient:  Contact Organization ID Assigner ID"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__contact__organization__identifier__assigner.identifier}]) as patient_1559757824302963__contact__organization__identifier__assigner__identifier ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner{
       view_label: "Patient:  Contact Organization ID Assigner ID Assigner"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__contact__organization__identifier__assigner__identifier.assigner}]) as patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier__period{
       view_label: "Patient:  Contact Organization ID Assigner ID Assigner ID Period"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier.period}]) as patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier__period ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier{
       view_label: "Patient:  Contact Organization ID Assigner ID Assigner ID"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner.identifier}]) as patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier__assigner{
       view_label: "Patient:  Contact Organization ID Assigner ID Assigner ID Assigner"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier.assigner}]) as patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier__assigner ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier__type__coding{
       view_label: "Patient:  Contact Organization ID Assigner ID Assigner ID Type Coding"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier__type.coding}) as patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier__type__coding ;;
       relationship: one_to_many
      }
     join:   patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier__type{
       view_label: "Patient:  Contact Organization ID Assigner ID Assigner ID Type"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier.type}]) as patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier__type ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__contact__organization__identifier__assigner__identifier__type__coding{
       view_label: "Patient:  Contact Organization ID Assigner ID Type Coding"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__contact__organization__identifier__assigner__identifier__type.coding}) as patient_1559757824302963__contact__organization__identifier__assigner__identifier__type__coding ;;
       relationship: one_to_many
      }
     join:   patient_1559757824302963__contact__organization__identifier__assigner__identifier__type{
       view_label: "Patient:  Contact Organization ID Assigner ID Type"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__contact__organization__identifier__assigner__identifier.type}]) as patient_1559757824302963__contact__organization__identifier__assigner__identifier__type ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__contact__organization__identifier__type__coding{
       view_label: "Patient:  Contact Organization ID Type Coding"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__contact__organization__identifier__type.coding}) as patient_1559757824302963__contact__organization__identifier__type__coding ;;
       relationship: one_to_many
      }
     join:   patient_1559757824302963__contact__organization__identifier__type{
       view_label: "Patient:  Contact Organization ID Type"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__contact__organization__identifier.type}]) as patient_1559757824302963__contact__organization__identifier__type ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__contact__name{
       view_label: "Patient:  Contact Name"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__contact.name}]) as patient_1559757824302963__contact__name ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__contact__name__period{
       view_label: "Patient:  Contact Name Period"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__contact__name.period}]) as patient_1559757824302963__contact__name__period ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__contact__telecom__period{
       view_label: "Patient:  Contact Telecom Period"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__contact__telecom.period}]) as patient_1559757824302963__contact__telecom__period ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__contact__telecom{
       view_label: "Patient:  Contact Telecom"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__contact.telecom}) as patient_1559757824302963__contact__telecom ;;
       relationship: one_to_many
      }
     join:   patient_1559757824302963__contact__relationship__coding{
       view_label: "Patient:  Contact Relationship Coding"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__contact__relationship.coding}) as patient_1559757824302963__contact__relationship__coding ;;
       relationship: one_to_many
      }
     join:   patient_1559757824302963__contact__relationship{
       view_label: "Patient:  Contact Relationship"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__contact.relationship}) as patient_1559757824302963__contact__relationship ;;
       relationship: one_to_many
      }
     join:   patient_1559757824302963__generalPractitioner{
       view_label: "Patient:  GP"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963.general_practitioner}) as patient_1559757824302963__generalPractitioner ;;
       relationship: one_to_many
      }
     join:   patient_1559757824302963__generalPractitioner__identifier__period{
       view_label: "Patient:  GP ID Period"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__generalPractitioner__identifier.period}]) as patient_1559757824302963__generalPractitioner__identifier__period ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__generalPractitioner__identifier{
       view_label: "Patient:  GP ID"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__generalPractitioner.identifier}]) as patient_1559757824302963__generalPractitioner__identifier ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__generalPractitioner__identifier__assigner{
       view_label: "Patient:  GP ID Assigner"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__generalPractitioner__identifier.assigner}]) as patient_1559757824302963__generalPractitioner__identifier__assigner ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__period{
       view_label: "Patient:  GP ID Assigner ID Period"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__generalPractitioner__identifier__assigner__identifier.period}]) as patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__period ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__generalPractitioner__identifier__assigner__identifier{
       view_label: "Patient:  GP ID Assigner ID"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__generalPractitioner__identifier__assigner.identifier}]) as patient_1559757824302963__generalPractitioner__identifier__assigner__identifier ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__assigner{
       view_label: "Patient:  GP ID Assigner ID Assigner"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__generalPractitioner__identifier__assigner__identifier.assigner}]) as patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__assigner ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__assigner__identifier__period{
       view_label: "Patient:  GP ID Assigner ID Assigner ID Period"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__assigner__identifier.period}]) as patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__assigner__identifier__period ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__assigner__identifier{
       view_label: "Patient:  GP ID Assigner ID Assigner ID"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__assigner.identifier}]) as patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__assigner__identifier ;;
       relationship: one_to_one
     }
     join:   patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__assigner__identifier__assigner{
       view_label: "Patient:  GP ID Assigner ID Assigner ID Assigner"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__assigner__identifier.assigner}]) as patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__assigner__identifier__assigner ;;
       relationship: one_to_one
    }
     join:   patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__assigner__identifier__type__coding{
       view_label: "Patient:  GP ID Assigner ID Assigner ID Type Coding"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__assigner__identifier__type.coding}) as patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__assigner__identifier__type__coding ;;
       relationship: one_to_many
   }
     join:   patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__assigner__identifier__type{
       view_label: "Patient:  GP ID Assigner ID Assigner ID Type"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__assigner__identifier.type}]) as patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__assigner__identifier__type ;;
       relationship: one_to_one
  }
    join:   patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__type__coding{
       view_label: "Patient:  GP ID Assigner ID Type Coding"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__type.coding}) as patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__type__coding ;;
       relationship: one_to_many
  }
    join:   patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__type{
       view_label: "Patient:  GP ID Assigner ID Type"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__generalPractitioner__identifier__assigner__identifier.type}]) as patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__type ;;
       relationship: one_to_one
  }
    join:   patient_1559757824302963__generalPractitioner__identifier__type__coding{
       view_label: "Patient:  GP ID Type Coding"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__generalPractitioner__identifier__type.coding}) as patient_1559757824302963__generalPractitioner__identifier__type__coding ;;
       relationship: one_to_many
  }
     join:   patient_1559757824302963__generalPractitioner__identifier__type{
       view_label: "Patient:  GP ID Type"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__generalPractitioner__identifier.type}]) as patient_1559757824302963__generalPractitioner__identifier__type  ;;
       relationship: one_to_one
 }
      join: patient_1559757824302963__name {
       view_label: "Patient:  Name"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963.name}) as patient_1559757824302963__name ;;
       relationship: one_to_many
}

     join:   patient_1559757824302963__name__period{
       view_label: "Patient:  Name Period"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__name.period}]) as patient_1559757824302963__name__period ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__animal__species__coding {
       view_label: "Patient:  Animal Species Coding"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__animal__species.coding}) as patient_1559757824302963__animal__species__coding ;;
       relationship: one_to_many
      }
     join:   patient_1559757824302963__animal__species {
       view_label: "Patient:  Animal Species"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__animal.species}]) as patient_1559757824302963__animal__species ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__animal__breed__coding {
       view_label: "Patient:  Animal Breed Coding"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__animal__breed.coding}) as patient_1559757824302963__animal__breed__coding ;;
       relationship: one_to_many
      }
     join:   patient_1559757824302963__animal__breed {
       view_label: "Patient:  Animal Breed"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__animal.breed}]) as patient_1559757824302963__animal__breed ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__animal__genderStatus__coding {
       view_label: "Patient:  Animal Genderstatus Coding"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__animal__genderStatus.coding}) as patient_1559757824302963__animal__genderStatus__coding ;;
       relationship: one_to_many
      }
     join:   patient_1559757824302963__animal__genderStatus {
       view_label: "Patient:  Animal Genderstatus"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__animal.gender_status}]) as patient_1559757824302963__animal__genderStatus ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__telecom__period {
       view_label: "Patient:  Telecom Period"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__telecom.period}]) as patient_1559757824302963__telecom__period ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__telecom {
       view_label: "Patient:  Telecom"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963.telecom}) as patient_1559757824302963__telecom ;;
       relationship: one_to_many
      }
     join:   patient_1559757824302963__text {
       view_label: "Patient:  Text"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963.text}]) as patient_1559757824302963__text ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__communication__language__coding{
       view_label: "Patient:  Communication Language Coding"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__communication__language.coding}) as patient_1559757824302963__communication__language__coding ;;
       relationship: one_to_many
      }
     join:   patient_1559757824302963__communication__language{
       view_label: "Patient:  Communication Language"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963__communication.language}]) as patient_1559757824302963__communication__language ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__communication{
       view_label: "Patient:  Communication"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963.communication}) as patient_1559757824302963__communication ;;
       relationship: one_to_many
      }
     join:   patient_1559757824302963__maritalStatus__coding{
       view_label: "Patient:  Maritalstatus Coding"
       sql: LEFT JOIN UNNEST(${patient_1559757824302963__maritalStatus.coding}) as patient_1559757824302963__maritalStatus__coding ;;
       relationship: one_to_many
      }
     join:   patient_1559757824302963__maritalStatus {
       view_label: "Patient:  Maritalstatus"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963.marital_status}]) as patient_1559757824302963__maritalStatus ;;
       relationship: one_to_one
      }
     join:   patient_1559757824302963__animal {
       view_label: "Patient:  Animal"
       sql: LEFT JOIN UNNEST([${patient_1559757824302963.animal}]) as patient_1559757824302963__animal ;;
       relationship: one_to_one
      }
# END OF EXPLORE
 }
