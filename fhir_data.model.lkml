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
#     - join: Patient_1559757824302963__identifier__period
#       view_label: "Patient 1559757824302963: Identifier Period"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__identifier.period}]) as Patient_1559757824302963__identifier__period
#       relationship: one_to_one
#     - join: Patient_1559757824302963__identifier
#       view_label: "Patient 1559757824302963: Identifier"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963.identifier}) as Patient_1559757824302963__identifier
#       relationship: one_to_many
#     - join: Patient_1559757824302963__identifier__assigner
#       view_label: "Patient 1559757824302963: Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__identifier.assigner}]) as Patient_1559757824302963__identifier__assigner
#       relationship: one_to_one
#     - join: Patient_1559757824302963__identifier__assigner__identifier__period
#       view_label: "Patient 1559757824302963: Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__identifier__assigner__identifier.period}]) as Patient_1559757824302963__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Patient_1559757824302963__identifier__assigner__identifier
#       view_label: "Patient 1559757824302963: Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__identifier__assigner.identifier}]) as Patient_1559757824302963__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Patient_1559757824302963__identifier__assigner__identifier__assigner
#       view_label: "Patient 1559757824302963: Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__identifier__assigner__identifier.assigner}]) as Patient_1559757824302963__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Patient_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Patient 1559757824302963: Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__identifier__assigner__identifier__assigner__identifier.period}]) as Patient_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Patient_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       view_label: "Patient 1559757824302963: Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__identifier__assigner__identifier__assigner.identifier}]) as Patient_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Patient_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Patient 1559757824302963: Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__identifier__assigner__identifier__assigner__identifier.assigner}]) as Patient_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Patient_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Patient 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__identifier__assigner__identifier__assigner__identifier__type.coding}) as Patient_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Patient_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Patient 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__identifier__assigner__identifier__assigner__identifier.type}]) as Patient_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Patient_1559757824302963__identifier__assigner__identifier__type__coding
#       view_label: "Patient 1559757824302963: Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__identifier__assigner__identifier__type.coding}) as Patient_1559757824302963__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Patient_1559757824302963__identifier__assigner__identifier__type
#       view_label: "Patient 1559757824302963: Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__identifier__assigner__identifier.type}]) as Patient_1559757824302963__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Patient_1559757824302963__identifier__type__coding
#       view_label: "Patient 1559757824302963: Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__identifier__type.coding}) as Patient_1559757824302963__identifier__type__coding
#       relationship: one_to_many
#     - join: Patient_1559757824302963__identifier__type
#       view_label: "Patient 1559757824302963: Identifier Type"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__identifier.type}]) as Patient_1559757824302963__identifier__type
#       relationship: one_to_one
#     - join: Patient_1559757824302963__deceased
#       view_label: "Patient 1559757824302963: Deceased"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963.deceased}]) as Patient_1559757824302963__deceased
#       relationship: one_to_one
join: Patient_1559757824302963__address {
#       view_label: "Patient 1559757824302963: Address"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963.address}) as Patient_1559757824302963__address
#       relationship: one_to_many
}
}
#     - join: Patient_1559757824302963__address__period
#       view_label: "Patient 1559757824302963: Address Period"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__address.period}]) as Patient_1559757824302963__address__period
#       relationship: one_to_one
#     - join: Patient_1559757824302963__link__other
#       view_label: "Patient 1559757824302963: Link Other"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__link.other}]) as Patient_1559757824302963__link__other
#       relationship: one_to_one
#     - join: Patient_1559757824302963__link__other__identifier__period
#       view_label: "Patient 1559757824302963: Link Other Identifier Period"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__link__other__identifier.period}]) as Patient_1559757824302963__link__other__identifier__period
#       relationship: one_to_one
#     - join: Patient_1559757824302963__link__other__identifier
#       view_label: "Patient 1559757824302963: Link Other Identifier"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__link__other.identifier}]) as Patient_1559757824302963__link__other__identifier
#       relationship: one_to_one
#     - join: Patient_1559757824302963__link__other__identifier__assigner
#       view_label: "Patient 1559757824302963: Link Other Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__link__other__identifier.assigner}]) as Patient_1559757824302963__link__other__identifier__assigner
#       relationship: one_to_one
#     - join: Patient_1559757824302963__link__other__identifier__assigner__identifier__period
#       view_label: "Patient 1559757824302963: Link Other Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__link__other__identifier__assigner__identifier.period}]) as Patient_1559757824302963__link__other__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Patient_1559757824302963__link__other__identifier__assigner__identifier
#       view_label: "Patient 1559757824302963: Link Other Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__link__other__identifier__assigner.identifier}]) as Patient_1559757824302963__link__other__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Patient_1559757824302963__link__other__identifier__assigner__identifier__assigner
#       view_label: "Patient 1559757824302963: Link Other Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__link__other__identifier__assigner__identifier.assigner}]) as Patient_1559757824302963__link__other__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Patient 1559757824302963: Link Other Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier.period}]) as Patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier
#       view_label: "Patient 1559757824302963: Link Other Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__link__other__identifier__assigner__identifier__assigner.identifier}]) as Patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Patient 1559757824302963: Link Other Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier.assigner}]) as Patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Patient 1559757824302963: Link Other Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier__type.coding}) as Patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Patient 1559757824302963: Link Other Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier.type}]) as Patient_1559757824302963__link__other__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Patient_1559757824302963__link__other__identifier__assigner__identifier__type__coding
#       view_label: "Patient 1559757824302963: Link Other Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__link__other__identifier__assigner__identifier__type.coding}) as Patient_1559757824302963__link__other__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Patient_1559757824302963__link__other__identifier__assigner__identifier__type
#       view_label: "Patient 1559757824302963: Link Other Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__link__other__identifier__assigner__identifier.type}]) as Patient_1559757824302963__link__other__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Patient_1559757824302963__link__other__identifier__type__coding
#       view_label: "Patient 1559757824302963: Link Other Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__link__other__identifier__type.coding}) as Patient_1559757824302963__link__other__identifier__type__coding
#       relationship: one_to_many
#     - join: Patient_1559757824302963__link__other__identifier__type
#       view_label: "Patient 1559757824302963: Link Other Identifier Type"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__link__other__identifier.type}]) as Patient_1559757824302963__link__other__identifier__type
#       relationship: one_to_one
#     - join: Patient_1559757824302963__link
#       view_label: "Patient 1559757824302963: Link"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963.link}) as Patient_1559757824302963__link
#       relationship: one_to_many
#     - join: Patient_1559757824302963__photo
#       view_label: "Patient 1559757824302963: Photo"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963.photo}) as Patient_1559757824302963__photo
#       relationship: one_to_many
#     - join: Patient_1559757824302963__multiple_birth
#       view_label: "Patient 1559757824302963: Multiplebirth"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963.multipleBirth}]) as Patient_1559757824302963__multiple_birth
#       relationship: one_to_one
#     - join: Patient_1559757824302963__managing_organization
#       view_label: "Patient 1559757824302963: Managingorganization"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963.managingOrganization}]) as Patient_1559757824302963__managing_organization
#       relationship: one_to_one
#     - join: Patient_1559757824302963__managing_organization__identifier__period
#       view_label: "Patient 1559757824302963: Managingorganization Identifier Period"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__managingOrganization__identifier.period}]) as Patient_1559757824302963__managing_organization__identifier__period
#       relationship: one_to_one
#     - join: Patient_1559757824302963__managing_organization__identifier
#       view_label: "Patient 1559757824302963: Managingorganization Identifier"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__managingOrganization.identifier}]) as Patient_1559757824302963__managing_organization__identifier
#       relationship: one_to_one
#     - join: Patient_1559757824302963__managing_organization__identifier__assigner
#       view_label: "Patient 1559757824302963: Managingorganization Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__managingOrganization__identifier.assigner}]) as Patient_1559757824302963__managing_organization__identifier__assigner
#       relationship: one_to_one
#     - join: Patient_1559757824302963__managing_organization__identifier__assigner__identifier__period
#       view_label: "Patient 1559757824302963: Managingorganization Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__managingOrganization__identifier__assigner__identifier.period}]) as Patient_1559757824302963__managing_organization__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Patient_1559757824302963__managing_organization__identifier__assigner__identifier
#       view_label: "Patient 1559757824302963: Managingorganization Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__managingOrganization__identifier__assigner.identifier}]) as Patient_1559757824302963__managing_organization__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Patient_1559757824302963__managing_organization__identifier__assigner__identifier__assigner
#       view_label: "Patient 1559757824302963: Managingorganization Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__managingOrganization__identifier__assigner__identifier.assigner}]) as Patient_1559757824302963__managing_organization__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Patient_1559757824302963__managing_organization__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Patient 1559757824302963: Managingorganization Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__managingOrganization__identifier__assigner__identifier__assigner__identifier.period}]) as Patient_1559757824302963__managing_organization__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Patient_1559757824302963__managing_organization__identifier__assigner__identifier__assigner__identifier
#       view_label: "Patient 1559757824302963: Managingorganization Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__managingOrganization__identifier__assigner__identifier__assigner.identifier}]) as Patient_1559757824302963__managing_organization__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Patient_1559757824302963__managing_organization__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Patient 1559757824302963: Managingorganization Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__managingOrganization__identifier__assigner__identifier__assigner__identifier.assigner}]) as Patient_1559757824302963__managing_organization__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Patient_1559757824302963__managing_organization__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Patient 1559757824302963: Managingorganization Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__managingOrganization__identifier__assigner__identifier__assigner__identifier__type.coding}) as Patient_1559757824302963__managing_organization__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Patient_1559757824302963__managing_organization__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Patient 1559757824302963: Managingorganization Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__managingOrganization__identifier__assigner__identifier__assigner__identifier.type}]) as Patient_1559757824302963__managing_organization__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Patient_1559757824302963__managing_organization__identifier__assigner__identifier__type__coding
#       view_label: "Patient 1559757824302963: Managingorganization Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__managingOrganization__identifier__assigner__identifier__type.coding}) as Patient_1559757824302963__managing_organization__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Patient_1559757824302963__managing_organization__identifier__assigner__identifier__type
#       view_label: "Patient 1559757824302963: Managingorganization Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__managingOrganization__identifier__assigner__identifier.type}]) as Patient_1559757824302963__managing_organization__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Patient_1559757824302963__managing_organization__identifier__type__coding
#       view_label: "Patient 1559757824302963: Managingorganization Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__managingOrganization__identifier__type.coding}) as Patient_1559757824302963__managing_organization__identifier__type__coding
#       relationship: one_to_many
#     - join: Patient_1559757824302963__managing_organization__identifier__type
#       view_label: "Patient 1559757824302963: Managingorganization Identifier Type"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__managingOrganization__identifier.type}]) as Patient_1559757824302963__managing_organization__identifier__type
#       relationship: one_to_one
#     - join: Patient_1559757824302963__meta
#       view_label: "Patient 1559757824302963: Meta"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963.meta}]) as Patient_1559757824302963__meta
#       relationship: one_to_one
#     - join: Patient_1559757824302963__meta__security
#       view_label: "Patient 1559757824302963: Meta Security"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__meta.security}) as Patient_1559757824302963__meta__security
#       relationship: one_to_many
#     - join: Patient_1559757824302963__meta__tag
#       view_label: "Patient 1559757824302963: Meta Tag"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__meta.tag}) as Patient_1559757824302963__meta__tag
#       relationship: one_to_many
#     - join: Patient_1559757824302963__contact__period
#       view_label: "Patient 1559757824302963: Contact Period"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__contact.period}]) as Patient_1559757824302963__contact__period
#       relationship: one_to_one
#     - join: Patient_1559757824302963__contact__address
#       view_label: "Patient 1559757824302963: Contact Address"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__contact.address}]) as Patient_1559757824302963__contact__address
#       relationship: one_to_one
#     - join: Patient_1559757824302963__contact__address__period
#       view_label: "Patient 1559757824302963: Contact Address Period"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__contact__address.period}]) as Patient_1559757824302963__contact__address__period
#       relationship: one_to_one
#     - join: Patient_1559757824302963__contact
#       view_label: "Patient 1559757824302963: Contact"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963.contact}) as Patient_1559757824302963__contact
#       relationship: one_to_many
#     - join: Patient_1559757824302963__contact__organization
#       view_label: "Patient 1559757824302963: Contact Organization"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__contact.organization}]) as Patient_1559757824302963__contact__organization
#       relationship: one_to_one
#     - join: Patient_1559757824302963__contact__organization__identifier__period
#       view_label: "Patient 1559757824302963: Contact Organization Identifier Period"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__contact__organization__identifier.period}]) as Patient_1559757824302963__contact__organization__identifier__period
#       relationship: one_to_one
#     - join: Patient_1559757824302963__contact__organization__identifier
#       view_label: "Patient 1559757824302963: Contact Organization Identifier"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__contact__organization.identifier}]) as Patient_1559757824302963__contact__organization__identifier
#       relationship: one_to_one
#     - join: Patient_1559757824302963__contact__organization__identifier__assigner
#       view_label: "Patient 1559757824302963: Contact Organization Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__contact__organization__identifier.assigner}]) as Patient_1559757824302963__contact__organization__identifier__assigner
#       relationship: one_to_one
#     - join: Patient_1559757824302963__contact__organization__identifier__assigner__identifier__period
#       view_label: "Patient 1559757824302963: Contact Organization Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__contact__organization__identifier__assigner__identifier.period}]) as Patient_1559757824302963__contact__organization__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Patient_1559757824302963__contact__organization__identifier__assigner__identifier
#       view_label: "Patient 1559757824302963: Contact Organization Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__contact__organization__identifier__assigner.identifier}]) as Patient_1559757824302963__contact__organization__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner
#       view_label: "Patient 1559757824302963: Contact Organization Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__contact__organization__identifier__assigner__identifier.assigner}]) as Patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Patient 1559757824302963: Contact Organization Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier.period}]) as Patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier
#       view_label: "Patient 1559757824302963: Contact Organization Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner.identifier}]) as Patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Patient 1559757824302963: Contact Organization Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier.assigner}]) as Patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Patient 1559757824302963: Contact Organization Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier__type.coding}) as Patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Patient 1559757824302963: Contact Organization Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier.type}]) as Patient_1559757824302963__contact__organization__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Patient_1559757824302963__contact__organization__identifier__assigner__identifier__type__coding
#       view_label: "Patient 1559757824302963: Contact Organization Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__contact__organization__identifier__assigner__identifier__type.coding}) as Patient_1559757824302963__contact__organization__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Patient_1559757824302963__contact__organization__identifier__assigner__identifier__type
#       view_label: "Patient 1559757824302963: Contact Organization Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__contact__organization__identifier__assigner__identifier.type}]) as Patient_1559757824302963__contact__organization__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Patient_1559757824302963__contact__organization__identifier__type__coding
#       view_label: "Patient 1559757824302963: Contact Organization Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__contact__organization__identifier__type.coding}) as Patient_1559757824302963__contact__organization__identifier__type__coding
#       relationship: one_to_many
#     - join: Patient_1559757824302963__contact__organization__identifier__type
#       view_label: "Patient 1559757824302963: Contact Organization Identifier Type"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__contact__organization__identifier.type}]) as Patient_1559757824302963__contact__organization__identifier__type
#       relationship: one_to_one
#     - join: Patient_1559757824302963__contact__name
#       view_label: "Patient 1559757824302963: Contact Name"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__contact.name}]) as Patient_1559757824302963__contact__name
#       relationship: one_to_one
#     - join: Patient_1559757824302963__contact__name__period
#       view_label: "Patient 1559757824302963: Contact Name Period"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__contact__name.period}]) as Patient_1559757824302963__contact__name__period
#       relationship: one_to_one
#     - join: Patient_1559757824302963__contact__telecom__period
#       view_label: "Patient 1559757824302963: Contact Telecom Period"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__contact__telecom.period}]) as Patient_1559757824302963__contact__telecom__period
#       relationship: one_to_one
#     - join: Patient_1559757824302963__contact__telecom
#       view_label: "Patient 1559757824302963: Contact Telecom"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__contact.telecom}) as Patient_1559757824302963__contact__telecom
#       relationship: one_to_many
#     - join: Patient_1559757824302963__contact__relationship__coding
#       view_label: "Patient 1559757824302963: Contact Relationship Coding"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__contact__relationship.coding}) as Patient_1559757824302963__contact__relationship__coding
#       relationship: one_to_many
#     - join: Patient_1559757824302963__contact__relationship
#       view_label: "Patient 1559757824302963: Contact Relationship"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__contact.relationship}) as Patient_1559757824302963__contact__relationship
#       relationship: one_to_many
#     - join: Patient_1559757824302963__general_practitioner
#       view_label: "Patient 1559757824302963: Generalpractitioner"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963.generalPractitioner}) as Patient_1559757824302963__general_practitioner
#       relationship: one_to_many
#     - join: Patient_1559757824302963__general_practitioner__identifier__period
#       view_label: "Patient 1559757824302963: Generalpractitioner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__generalPractitioner__identifier.period}]) as Patient_1559757824302963__general_practitioner__identifier__period
#       relationship: one_to_one
#     - join: Patient_1559757824302963__general_practitioner__identifier
#       view_label: "Patient 1559757824302963: Generalpractitioner Identifier"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__generalPractitioner.identifier}]) as Patient_1559757824302963__general_practitioner__identifier
#       relationship: one_to_one
#     - join: Patient_1559757824302963__general_practitioner__identifier__assigner
#       view_label: "Patient 1559757824302963: Generalpractitioner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__generalPractitioner__identifier.assigner}]) as Patient_1559757824302963__general_practitioner__identifier__assigner
#       relationship: one_to_one
#     - join: Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__period
#       view_label: "Patient 1559757824302963: Generalpractitioner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__generalPractitioner__identifier__assigner__identifier.period}]) as Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Patient_1559757824302963__general_practitioner__identifier__assigner__identifier
#       view_label: "Patient 1559757824302963: Generalpractitioner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__generalPractitioner__identifier__assigner.identifier}]) as Patient_1559757824302963__general_practitioner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__assigner
#       view_label: "Patient 1559757824302963: Generalpractitioner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__generalPractitioner__identifier__assigner__identifier.assigner}]) as Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Patient 1559757824302963: Generalpractitioner Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__assigner__identifier.period}]) as Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__assigner__identifier
#       view_label: "Patient 1559757824302963: Generalpractitioner Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__assigner.identifier}]) as Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Patient 1559757824302963: Generalpractitioner Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__assigner__identifier.assigner}]) as Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Patient 1559757824302963: Generalpractitioner Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__assigner__identifier__type.coding}) as Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Patient 1559757824302963: Generalpractitioner Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__assigner__identifier.type}]) as Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__type__coding
#       view_label: "Patient 1559757824302963: Generalpractitioner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__generalPractitioner__identifier__assigner__identifier__type.coding}) as Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__type
#       view_label: "Patient 1559757824302963: Generalpractitioner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__generalPractitioner__identifier__assigner__identifier.type}]) as Patient_1559757824302963__general_practitioner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Patient_1559757824302963__general_practitioner__identifier__type__coding
#       view_label: "Patient 1559757824302963: Generalpractitioner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__generalPractitioner__identifier__type.coding}) as Patient_1559757824302963__general_practitioner__identifier__type__coding
#       relationship: one_to_many
#     - join: Patient_1559757824302963__general_practitioner__identifier__type
#       view_label: "Patient 1559757824302963: Generalpractitioner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__generalPractitioner__identifier.type}]) as Patient_1559757824302963__general_practitioner__identifier__type
#       relationship: one_to_one
#     - join: Patient_1559757824302963__name
#       view_label: "Patient 1559757824302963: Name"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963.name}) as Patient_1559757824302963__name
#       relationship: one_to_many
#     - join: Patient_1559757824302963__name__period
#       view_label: "Patient 1559757824302963: Name Period"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__name.period}]) as Patient_1559757824302963__name__period
#       relationship: one_to_one
#     - join: Patient_1559757824302963__animal__species__coding
#       view_label: "Patient 1559757824302963: Animal Species Coding"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__animal__species.coding}) as Patient_1559757824302963__animal__species__coding
#       relationship: one_to_many
#     - join: Patient_1559757824302963__animal__species
#       view_label: "Patient 1559757824302963: Animal Species"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__animal.species}]) as Patient_1559757824302963__animal__species
#       relationship: one_to_one
#     - join: Patient_1559757824302963__animal__breed__coding
#       view_label: "Patient 1559757824302963: Animal Breed Coding"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__animal__breed.coding}) as Patient_1559757824302963__animal__breed__coding
#       relationship: one_to_many
#     - join: Patient_1559757824302963__animal__breed
#       view_label: "Patient 1559757824302963: Animal Breed"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__animal.breed}]) as Patient_1559757824302963__animal__breed
#       relationship: one_to_one
#     - join: Patient_1559757824302963__animal__gender_status__coding
#       view_label: "Patient 1559757824302963: Animal Genderstatus Coding"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__animal__genderStatus.coding}) as Patient_1559757824302963__animal__gender_status__coding
#       relationship: one_to_many
#     - join: Patient_1559757824302963__animal__gender_status
#       view_label: "Patient 1559757824302963: Animal Genderstatus"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__animal.genderStatus}]) as Patient_1559757824302963__animal__gender_status
#       relationship: one_to_one
#     - join: Patient_1559757824302963__telecom__period
#       view_label: "Patient 1559757824302963: Telecom Period"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__telecom.period}]) as Patient_1559757824302963__telecom__period
#       relationship: one_to_one
#     - join: Patient_1559757824302963__telecom
#       view_label: "Patient 1559757824302963: Telecom"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963.telecom}) as Patient_1559757824302963__telecom
#       relationship: one_to_many
#     - join: Patient_1559757824302963__text
#       view_label: "Patient 1559757824302963: Text"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963.text}]) as Patient_1559757824302963__text
#       relationship: one_to_one
#     - join: Patient_1559757824302963__communication__language__coding
#       view_label: "Patient 1559757824302963: Communication Language Coding"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__communication__language.coding}) as Patient_1559757824302963__communication__language__coding
#       relationship: one_to_many
#     - join: Patient_1559757824302963__communication__language
#       view_label: "Patient 1559757824302963: Communication Language"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963__communication.language}]) as Patient_1559757824302963__communication__language
#       relationship: one_to_one
#     - join: Patient_1559757824302963__communication
#       view_label: "Patient 1559757824302963: Communication"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963.communication}) as Patient_1559757824302963__communication
#       relationship: one_to_many
#     - join: Patient_1559757824302963__marital_status__coding
#       view_label: "Patient 1559757824302963: Maritalstatus Coding"
#       sql: LEFT JOIN UNNEST(${Patient_1559757824302963__maritalStatus.coding}) as Patient_1559757824302963__marital_status__coding
#       relationship: one_to_many
#     - join: Patient_1559757824302963__marital_status
#       view_label: "Patient 1559757824302963: Maritalstatus"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963.maritalStatus}]) as Patient_1559757824302963__marital_status
#       relationship: one_to_one
#     - join: Patient_1559757824302963__animal
#       view_label: "Patient 1559757824302963: Animal"
#       sql: LEFT JOIN UNNEST([${Patient_1559757824302963.animal}]) as Patient_1559757824302963__animal
#       relationship: one_to_one

# - explore: allergy_intolerance_1559757824302963
#   joins:
#     - join: AllergyIntolerance_1559757824302963__identifier__period
#       view_label: "Allergyintolerance 1559757824302963: Identifier Period"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__identifier.period}]) as AllergyIntolerance_1559757824302963__identifier__period
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__identifier
#       view_label: "Allergyintolerance 1559757824302963: Identifier"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963.identifier}) as AllergyIntolerance_1559757824302963__identifier
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__identifier__assigner
#       view_label: "Allergyintolerance 1559757824302963: Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__identifier.assigner}]) as AllergyIntolerance_1559757824302963__identifier__assigner
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__identifier__assigner__identifier__period
#       view_label: "Allergyintolerance 1559757824302963: Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__identifier__assigner__identifier.period}]) as AllergyIntolerance_1559757824302963__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__identifier__assigner__identifier
#       view_label: "Allergyintolerance 1559757824302963: Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__identifier__assigner.identifier}]) as AllergyIntolerance_1559757824302963__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__identifier__assigner__identifier__assigner
#       view_label: "Allergyintolerance 1559757824302963: Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__identifier__assigner__identifier.assigner}]) as AllergyIntolerance_1559757824302963__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Allergyintolerance 1559757824302963: Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__identifier__assigner__identifier__assigner__identifier.period}]) as AllergyIntolerance_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       view_label: "Allergyintolerance 1559757824302963: Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__identifier__assigner__identifier__assigner.identifier}]) as AllergyIntolerance_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Allergyintolerance 1559757824302963: Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__identifier__assigner__identifier__assigner__identifier.assigner}]) as AllergyIntolerance_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Allergyintolerance 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__identifier__assigner__identifier__assigner__identifier__type.coding}) as AllergyIntolerance_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Allergyintolerance 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__identifier__assigner__identifier__assigner__identifier.type}]) as AllergyIntolerance_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__identifier__assigner__identifier__type__coding
#       view_label: "Allergyintolerance 1559757824302963: Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__identifier__assigner__identifier__type.coding}) as AllergyIntolerance_1559757824302963__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__identifier__assigner__identifier__type
#       view_label: "Allergyintolerance 1559757824302963: Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__identifier__assigner__identifier.type}]) as AllergyIntolerance_1559757824302963__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__identifier__type__coding
#       view_label: "Allergyintolerance 1559757824302963: Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__identifier__type.coding}) as AllergyIntolerance_1559757824302963__identifier__type__coding
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__identifier__type
#       view_label: "Allergyintolerance 1559757824302963: Identifier Type"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__identifier.type}]) as AllergyIntolerance_1559757824302963__identifier__type
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__note__author__reference
#       view_label: "Allergyintolerance 1559757824302963: Note Author Reference"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__note__author.reference}]) as AllergyIntolerance_1559757824302963__note__author__reference
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__note__author__reference__identifier__period
#       view_label: "Allergyintolerance 1559757824302963: Note Author Reference Identifier Period"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__note__author__reference__identifier.period}]) as AllergyIntolerance_1559757824302963__note__author__reference__identifier__period
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__note__author__reference__identifier
#       view_label: "Allergyintolerance 1559757824302963: Note Author Reference Identifier"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__note__author__reference.identifier}]) as AllergyIntolerance_1559757824302963__note__author__reference__identifier
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner
#       view_label: "Allergyintolerance 1559757824302963: Note Author Reference Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__note__author__reference__identifier.assigner}]) as AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__period
#       view_label: "Allergyintolerance 1559757824302963: Note Author Reference Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier.period}]) as AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier
#       view_label: "Allergyintolerance 1559757824302963: Note Author Reference Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner.identifier}]) as AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner
#       view_label: "Allergyintolerance 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier.assigner}]) as AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Allergyintolerance 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier.period}]) as AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier
#       view_label: "Allergyintolerance 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner.identifier}]) as AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Allergyintolerance 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier.assigner}]) as AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Allergyintolerance 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type.coding}) as AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Allergyintolerance 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier.type}]) as AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__type__coding
#       view_label: "Allergyintolerance 1559757824302963: Note Author Reference Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__type.coding}) as AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__type
#       view_label: "Allergyintolerance 1559757824302963: Note Author Reference Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier.type}]) as AllergyIntolerance_1559757824302963__note__author__reference__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__note__author__reference__identifier__type__coding
#       view_label: "Allergyintolerance 1559757824302963: Note Author Reference Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__note__author__reference__identifier__type.coding}) as AllergyIntolerance_1559757824302963__note__author__reference__identifier__type__coding
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__note__author__reference__identifier__type
#       view_label: "Allergyintolerance 1559757824302963: Note Author Reference Identifier Type"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__note__author__reference__identifier.type}]) as AllergyIntolerance_1559757824302963__note__author__reference__identifier__type
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__note__author
#       view_label: "Allergyintolerance 1559757824302963: Note Author"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__note.author}]) as AllergyIntolerance_1559757824302963__note__author
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__note
#       view_label: "Allergyintolerance 1559757824302963: Note"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963.note}) as AllergyIntolerance_1559757824302963__note
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__recorder
#       view_label: "Allergyintolerance 1559757824302963: Recorder"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963.recorder}]) as AllergyIntolerance_1559757824302963__recorder
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__recorder__identifier__period
#       view_label: "Allergyintolerance 1559757824302963: Recorder Identifier Period"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__recorder__identifier.period}]) as AllergyIntolerance_1559757824302963__recorder__identifier__period
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__recorder__identifier
#       view_label: "Allergyintolerance 1559757824302963: Recorder Identifier"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__recorder.identifier}]) as AllergyIntolerance_1559757824302963__recorder__identifier
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__recorder__identifier__assigner
#       view_label: "Allergyintolerance 1559757824302963: Recorder Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__recorder__identifier.assigner}]) as AllergyIntolerance_1559757824302963__recorder__identifier__assigner
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__period
#       view_label: "Allergyintolerance 1559757824302963: Recorder Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier.period}]) as AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier
#       view_label: "Allergyintolerance 1559757824302963: Recorder Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__recorder__identifier__assigner.identifier}]) as AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__assigner
#       view_label: "Allergyintolerance 1559757824302963: Recorder Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier.assigner}]) as AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Allergyintolerance 1559757824302963: Recorder Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier.period}]) as AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier
#       view_label: "Allergyintolerance 1559757824302963: Recorder Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__assigner.identifier}]) as AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Allergyintolerance 1559757824302963: Recorder Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier.assigner}]) as AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Allergyintolerance 1559757824302963: Recorder Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier__type.coding}) as AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Allergyintolerance 1559757824302963: Recorder Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier.type}]) as AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__type__coding
#       view_label: "Allergyintolerance 1559757824302963: Recorder Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__type.coding}) as AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__type
#       view_label: "Allergyintolerance 1559757824302963: Recorder Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier.type}]) as AllergyIntolerance_1559757824302963__recorder__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__recorder__identifier__type__coding
#       view_label: "Allergyintolerance 1559757824302963: Recorder Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__recorder__identifier__type.coding}) as AllergyIntolerance_1559757824302963__recorder__identifier__type__coding
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__recorder__identifier__type
#       view_label: "Allergyintolerance 1559757824302963: Recorder Identifier Type"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__recorder__identifier.type}]) as AllergyIntolerance_1559757824302963__recorder__identifier__type
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__reaction
#       view_label: "Allergyintolerance 1559757824302963: Reaction"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963.reaction}) as AllergyIntolerance_1559757824302963__reaction
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__reaction__note__author__reference
#       view_label: "Allergyintolerance 1559757824302963: Reaction Note Author Reference"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__reaction__note__author.reference}]) as AllergyIntolerance_1559757824302963__reaction__note__author__reference
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__period
#       view_label: "Allergyintolerance 1559757824302963: Reaction Note Author Reference Identifier Period"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier.period}]) as AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__period
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier
#       view_label: "Allergyintolerance 1559757824302963: Reaction Note Author Reference Identifier"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__reaction__note__author__reference.identifier}]) as AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner
#       view_label: "Allergyintolerance 1559757824302963: Reaction Note Author Reference Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier.assigner}]) as AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__period
#       view_label: "Allergyintolerance 1559757824302963: Reaction Note Author Reference Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier.period}]) as AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier
#       view_label: "Allergyintolerance 1559757824302963: Reaction Note Author Reference Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner.identifier}]) as AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__assigner
#       view_label: "Allergyintolerance 1559757824302963: Reaction Note Author Reference Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier.assigner}]) as AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Allergyintolerance 1559757824302963: Reaction Note Author Reference Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__assigner__identifier.period}]) as AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__assigner__identifier
#       view_label: "Allergyintolerance 1559757824302963: Reaction Note Author Reference Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__assigner.identifier}]) as AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Allergyintolerance 1559757824302963: Reaction Note Author Reference Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__assigner__identifier.assigner}]) as AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Allergyintolerance 1559757824302963: Reaction Note Author Reference Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__assigner__identifier__type.coding}) as AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Allergyintolerance 1559757824302963: Reaction Note Author Reference Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__assigner__identifier.type}]) as AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__type__coding
#       view_label: "Allergyintolerance 1559757824302963: Reaction Note Author Reference Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__type.coding}) as AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__type
#       view_label: "Allergyintolerance 1559757824302963: Reaction Note Author Reference Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier.type}]) as AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__type__coding
#       view_label: "Allergyintolerance 1559757824302963: Reaction Note Author Reference Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__type.coding}) as AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__type__coding
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__type
#       view_label: "Allergyintolerance 1559757824302963: Reaction Note Author Reference Identifier Type"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier.type}]) as AllergyIntolerance_1559757824302963__reaction__note__author__reference__identifier__type
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__reaction__note__author
#       view_label: "Allergyintolerance 1559757824302963: Reaction Note Author"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__reaction__note.author}]) as AllergyIntolerance_1559757824302963__reaction__note__author
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__reaction__note
#       view_label: "Allergyintolerance 1559757824302963: Reaction Note"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__reaction.note}) as AllergyIntolerance_1559757824302963__reaction__note
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__reaction__manifestation__coding
#       view_label: "Allergyintolerance 1559757824302963: Reaction Manifestation Coding"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__reaction__manifestation.coding}) as AllergyIntolerance_1559757824302963__reaction__manifestation__coding
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__reaction__manifestation
#       view_label: "Allergyintolerance 1559757824302963: Reaction Manifestation"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__reaction.manifestation}) as AllergyIntolerance_1559757824302963__reaction__manifestation
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__reaction__substance__coding
#       view_label: "Allergyintolerance 1559757824302963: Reaction Substance Coding"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__reaction__substance.coding}) as AllergyIntolerance_1559757824302963__reaction__substance__coding
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__reaction__substance
#       view_label: "Allergyintolerance 1559757824302963: Reaction Substance"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__reaction.substance}]) as AllergyIntolerance_1559757824302963__reaction__substance
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__reaction__exposure_route__coding
#       view_label: "Allergyintolerance 1559757824302963: Reaction Exposureroute Coding"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__reaction__exposureRoute.coding}) as AllergyIntolerance_1559757824302963__reaction__exposure_route__coding
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__reaction__exposure_route
#       view_label: "Allergyintolerance 1559757824302963: Reaction Exposureroute"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__reaction.exposureRoute}]) as AllergyIntolerance_1559757824302963__reaction__exposure_route
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__code__coding
#       view_label: "Allergyintolerance 1559757824302963: Code Coding"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__code.coding}) as AllergyIntolerance_1559757824302963__code__coding
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__code
#       view_label: "Allergyintolerance 1559757824302963: Code"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963.code}]) as AllergyIntolerance_1559757824302963__code
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__onset
#       view_label: "Allergyintolerance 1559757824302963: Onset"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963.onset}]) as AllergyIntolerance_1559757824302963__onset
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__onset__period
#       view_label: "Allergyintolerance 1559757824302963: Onset Period"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__onset.period}]) as AllergyIntolerance_1559757824302963__onset__period
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__onset__range__high
#       view_label: "Allergyintolerance 1559757824302963: Onset `range` High"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__onset__`range`.high}]) as AllergyIntolerance_1559757824302963__onset__range__high
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__onset__range__low
#       view_label: "Allergyintolerance 1559757824302963: Onset `range` Low"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__onset__`range`.low}]) as AllergyIntolerance_1559757824302963__onset__range__low
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__onset__age
#       view_label: "Allergyintolerance 1559757824302963: Onset Age"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__onset.age}]) as AllergyIntolerance_1559757824302963__onset__age
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__asserter
#       view_label: "Allergyintolerance 1559757824302963: Asserter"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963.asserter}]) as AllergyIntolerance_1559757824302963__asserter
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__asserter__identifier__period
#       view_label: "Allergyintolerance 1559757824302963: Asserter Identifier Period"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__asserter__identifier.period}]) as AllergyIntolerance_1559757824302963__asserter__identifier__period
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__asserter__identifier
#       view_label: "Allergyintolerance 1559757824302963: Asserter Identifier"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__asserter.identifier}]) as AllergyIntolerance_1559757824302963__asserter__identifier
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__asserter__identifier__assigner
#       view_label: "Allergyintolerance 1559757824302963: Asserter Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__asserter__identifier.assigner}]) as AllergyIntolerance_1559757824302963__asserter__identifier__assigner
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__period
#       view_label: "Allergyintolerance 1559757824302963: Asserter Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier.period}]) as AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier
#       view_label: "Allergyintolerance 1559757824302963: Asserter Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__asserter__identifier__assigner.identifier}]) as AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__assigner
#       view_label: "Allergyintolerance 1559757824302963: Asserter Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier.assigner}]) as AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Allergyintolerance 1559757824302963: Asserter Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier.period}]) as AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier
#       view_label: "Allergyintolerance 1559757824302963: Asserter Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__assigner.identifier}]) as AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Allergyintolerance 1559757824302963: Asserter Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier.assigner}]) as AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Allergyintolerance 1559757824302963: Asserter Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier__type.coding}) as AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Allergyintolerance 1559757824302963: Asserter Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier.type}]) as AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__type__coding
#       view_label: "Allergyintolerance 1559757824302963: Asserter Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__type.coding}) as AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__type
#       view_label: "Allergyintolerance 1559757824302963: Asserter Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier.type}]) as AllergyIntolerance_1559757824302963__asserter__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__asserter__identifier__type__coding
#       view_label: "Allergyintolerance 1559757824302963: Asserter Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__asserter__identifier__type.coding}) as AllergyIntolerance_1559757824302963__asserter__identifier__type__coding
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__asserter__identifier__type
#       view_label: "Allergyintolerance 1559757824302963: Asserter Identifier Type"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__asserter__identifier.type}]) as AllergyIntolerance_1559757824302963__asserter__identifier__type
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__meta
#       view_label: "Allergyintolerance 1559757824302963: Meta"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963.meta}]) as AllergyIntolerance_1559757824302963__meta
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__meta__security
#       view_label: "Allergyintolerance 1559757824302963: Meta Security"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__meta.security}) as AllergyIntolerance_1559757824302963__meta__security
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__meta__tag
#       view_label: "Allergyintolerance 1559757824302963: Meta Tag"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__meta.tag}) as AllergyIntolerance_1559757824302963__meta__tag
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__patient
#       view_label: "Allergyintolerance 1559757824302963: Patient"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963.patient}]) as AllergyIntolerance_1559757824302963__patient
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__patient__identifier__period
#       view_label: "Allergyintolerance 1559757824302963: Patient Identifier Period"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__patient__identifier.period}]) as AllergyIntolerance_1559757824302963__patient__identifier__period
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__patient__identifier
#       view_label: "Allergyintolerance 1559757824302963: Patient Identifier"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__patient.identifier}]) as AllergyIntolerance_1559757824302963__patient__identifier
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__patient__identifier__assigner
#       view_label: "Allergyintolerance 1559757824302963: Patient Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__patient__identifier.assigner}]) as AllergyIntolerance_1559757824302963__patient__identifier__assigner
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__period
#       view_label: "Allergyintolerance 1559757824302963: Patient Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier.period}]) as AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier
#       view_label: "Allergyintolerance 1559757824302963: Patient Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__patient__identifier__assigner.identifier}]) as AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__assigner
#       view_label: "Allergyintolerance 1559757824302963: Patient Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier.assigner}]) as AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Allergyintolerance 1559757824302963: Patient Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier.period}]) as AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier
#       view_label: "Allergyintolerance 1559757824302963: Patient Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__assigner.identifier}]) as AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Allergyintolerance 1559757824302963: Patient Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier.assigner}]) as AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Allergyintolerance 1559757824302963: Patient Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__type.coding}) as AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Allergyintolerance 1559757824302963: Patient Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier.type}]) as AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__type__coding
#       view_label: "Allergyintolerance 1559757824302963: Patient Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__type.coding}) as AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__type
#       view_label: "Allergyintolerance 1559757824302963: Patient Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier.type}]) as AllergyIntolerance_1559757824302963__patient__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__patient__identifier__type__coding
#       view_label: "Allergyintolerance 1559757824302963: Patient Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${AllergyIntolerance_1559757824302963__patient__identifier__type.coding}) as AllergyIntolerance_1559757824302963__patient__identifier__type__coding
#       relationship: one_to_many
#     - join: AllergyIntolerance_1559757824302963__patient__identifier__type
#       view_label: "Allergyintolerance 1559757824302963: Patient Identifier Type"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__patient__identifier.type}]) as AllergyIntolerance_1559757824302963__patient__identifier__type
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__text
#       view_label: "Allergyintolerance 1559757824302963: Text"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963.text}]) as AllergyIntolerance_1559757824302963__text
#       relationship: one_to_one
#     - join: AllergyIntolerance_1559757824302963__onset__range
#       view_label: "Allergyintolerance 1559757824302963: Onset `range`"
#       sql: LEFT JOIN UNNEST([${AllergyIntolerance_1559757824302963__onset.`range`}]) as AllergyIntolerance_1559757824302963__onset__range
#       relationship: one_to_one

# - explore: binary_1559757824302963
#   joins:
#     - join: Binary_1559757824302963__meta
#       view_label: "Binary 1559757824302963: Meta"
#       sql: LEFT JOIN UNNEST([${Binary_1559757824302963.meta}]) as Binary_1559757824302963__meta
#       relationship: one_to_one
#     - join: Binary_1559757824302963__meta__security
#       view_label: "Binary 1559757824302963: Meta Security"
#       sql: LEFT JOIN UNNEST(${Binary_1559757824302963__meta.security}) as Binary_1559757824302963__meta__security
#       relationship: one_to_many
#     - join: Binary_1559757824302963__meta__tag
#       view_label: "Binary 1559757824302963: Meta Tag"
#       sql: LEFT JOIN UNNEST(${Binary_1559757824302963__meta.tag}) as Binary_1559757824302963__meta__tag
#       relationship: one_to_many
#     - join: Binary_1559757824302963__security_context
#       view_label: "Binary 1559757824302963: Securitycontext"
#       sql: LEFT JOIN UNNEST([${Binary_1559757824302963.securityContext}]) as Binary_1559757824302963__security_context
#       relationship: one_to_one
#     - join: Binary_1559757824302963__security_context__identifier__period
#       view_label: "Binary 1559757824302963: Securitycontext Identifier Period"
#       sql: LEFT JOIN UNNEST([${Binary_1559757824302963__securityContext__identifier.period}]) as Binary_1559757824302963__security_context__identifier__period
#       relationship: one_to_one
#     - join: Binary_1559757824302963__security_context__identifier
#       view_label: "Binary 1559757824302963: Securitycontext Identifier"
#       sql: LEFT JOIN UNNEST([${Binary_1559757824302963__securityContext.identifier}]) as Binary_1559757824302963__security_context__identifier
#       relationship: one_to_one
#     - join: Binary_1559757824302963__security_context__identifier__assigner
#       view_label: "Binary 1559757824302963: Securitycontext Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Binary_1559757824302963__securityContext__identifier.assigner}]) as Binary_1559757824302963__security_context__identifier__assigner
#       relationship: one_to_one
#     - join: Binary_1559757824302963__security_context__identifier__assigner__identifier__period
#       view_label: "Binary 1559757824302963: Securitycontext Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Binary_1559757824302963__securityContext__identifier__assigner__identifier.period}]) as Binary_1559757824302963__security_context__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Binary_1559757824302963__security_context__identifier__assigner__identifier
#       view_label: "Binary 1559757824302963: Securitycontext Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Binary_1559757824302963__securityContext__identifier__assigner.identifier}]) as Binary_1559757824302963__security_context__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Binary_1559757824302963__security_context__identifier__assigner__identifier__assigner
#       view_label: "Binary 1559757824302963: Securitycontext Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Binary_1559757824302963__securityContext__identifier__assigner__identifier.assigner}]) as Binary_1559757824302963__security_context__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Binary_1559757824302963__security_context__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Binary 1559757824302963: Securitycontext Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Binary_1559757824302963__securityContext__identifier__assigner__identifier__assigner__identifier.period}]) as Binary_1559757824302963__security_context__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Binary_1559757824302963__security_context__identifier__assigner__identifier__assigner__identifier
#       view_label: "Binary 1559757824302963: Securitycontext Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Binary_1559757824302963__securityContext__identifier__assigner__identifier__assigner.identifier}]) as Binary_1559757824302963__security_context__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Binary_1559757824302963__security_context__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Binary 1559757824302963: Securitycontext Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Binary_1559757824302963__securityContext__identifier__assigner__identifier__assigner__identifier.assigner}]) as Binary_1559757824302963__security_context__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Binary_1559757824302963__security_context__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Binary 1559757824302963: Securitycontext Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Binary_1559757824302963__securityContext__identifier__assigner__identifier__assigner__identifier__type.coding}) as Binary_1559757824302963__security_context__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Binary_1559757824302963__security_context__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Binary 1559757824302963: Securitycontext Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Binary_1559757824302963__securityContext__identifier__assigner__identifier__assigner__identifier.type}]) as Binary_1559757824302963__security_context__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Binary_1559757824302963__security_context__identifier__assigner__identifier__type__coding
#       view_label: "Binary 1559757824302963: Securitycontext Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Binary_1559757824302963__securityContext__identifier__assigner__identifier__type.coding}) as Binary_1559757824302963__security_context__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Binary_1559757824302963__security_context__identifier__assigner__identifier__type
#       view_label: "Binary 1559757824302963: Securitycontext Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Binary_1559757824302963__securityContext__identifier__assigner__identifier.type}]) as Binary_1559757824302963__security_context__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Binary_1559757824302963__security_context__identifier__type__coding
#       view_label: "Binary 1559757824302963: Securitycontext Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Binary_1559757824302963__securityContext__identifier__type.coding}) as Binary_1559757824302963__security_context__identifier__type__coding
#       relationship: one_to_many
#     - join: Binary_1559757824302963__security_context__identifier__type
#       view_label: "Binary 1559757824302963: Securitycontext Identifier Type"
#       sql: LEFT JOIN UNNEST([${Binary_1559757824302963__securityContext__identifier.type}]) as Binary_1559757824302963__security_context__identifier__type
#       relationship: one_to_one

# - explore: condition_1559757824302963
#   joins:
#     - join: Condition_1559757824302963__severity__coding
#       view_label: "Condition 1559757824302963: Severity Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__severity.coding}) as Condition_1559757824302963__severity__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__severity
#       view_label: "Condition 1559757824302963: Severity"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963.severity}]) as Condition_1559757824302963__severity
#       relationship: one_to_one
#     - join: Condition_1559757824302963__identifier__period
#       view_label: "Condition 1559757824302963: Identifier Period"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__identifier.period}]) as Condition_1559757824302963__identifier__period
#       relationship: one_to_one
#     - join: Condition_1559757824302963__identifier
#       view_label: "Condition 1559757824302963: Identifier"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963.identifier}) as Condition_1559757824302963__identifier
#       relationship: one_to_many
#     - join: Condition_1559757824302963__identifier__assigner
#       view_label: "Condition 1559757824302963: Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__identifier.assigner}]) as Condition_1559757824302963__identifier__assigner
#       relationship: one_to_one
#     - join: Condition_1559757824302963__identifier__assigner__identifier__period
#       view_label: "Condition 1559757824302963: Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__identifier__assigner__identifier.period}]) as Condition_1559757824302963__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Condition_1559757824302963__identifier__assigner__identifier
#       view_label: "Condition 1559757824302963: Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__identifier__assigner.identifier}]) as Condition_1559757824302963__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Condition_1559757824302963__identifier__assigner__identifier__assigner
#       view_label: "Condition 1559757824302963: Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__identifier__assigner__identifier.assigner}]) as Condition_1559757824302963__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Condition_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Condition 1559757824302963: Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__identifier__assigner__identifier__assigner__identifier.period}]) as Condition_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Condition_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       view_label: "Condition 1559757824302963: Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__identifier__assigner__identifier__assigner.identifier}]) as Condition_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Condition_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Condition 1559757824302963: Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__identifier__assigner__identifier__assigner__identifier.assigner}]) as Condition_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Condition_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Condition 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__identifier__assigner__identifier__assigner__identifier__type.coding}) as Condition_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Condition 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__identifier__assigner__identifier__assigner__identifier.type}]) as Condition_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Condition_1559757824302963__identifier__assigner__identifier__type__coding
#       view_label: "Condition 1559757824302963: Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__identifier__assigner__identifier__type.coding}) as Condition_1559757824302963__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__identifier__assigner__identifier__type
#       view_label: "Condition 1559757824302963: Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__identifier__assigner__identifier.type}]) as Condition_1559757824302963__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Condition_1559757824302963__identifier__type__coding
#       view_label: "Condition 1559757824302963: Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__identifier__type.coding}) as Condition_1559757824302963__identifier__type__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__identifier__type
#       view_label: "Condition 1559757824302963: Identifier Type"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__identifier.type}]) as Condition_1559757824302963__identifier__type
#       relationship: one_to_one
#     - join: Condition_1559757824302963__note__author__reference
#       view_label: "Condition 1559757824302963: Note Author Reference"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__note__author.reference}]) as Condition_1559757824302963__note__author__reference
#       relationship: one_to_one
#     - join: Condition_1559757824302963__note__author__reference__identifier__period
#       view_label: "Condition 1559757824302963: Note Author Reference Identifier Period"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__note__author__reference__identifier.period}]) as Condition_1559757824302963__note__author__reference__identifier__period
#       relationship: one_to_one
#     - join: Condition_1559757824302963__note__author__reference__identifier
#       view_label: "Condition 1559757824302963: Note Author Reference Identifier"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__note__author__reference.identifier}]) as Condition_1559757824302963__note__author__reference__identifier
#       relationship: one_to_one
#     - join: Condition_1559757824302963__note__author__reference__identifier__assigner
#       view_label: "Condition 1559757824302963: Note Author Reference Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__note__author__reference__identifier.assigner}]) as Condition_1559757824302963__note__author__reference__identifier__assigner
#       relationship: one_to_one
#     - join: Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__period
#       view_label: "Condition 1559757824302963: Note Author Reference Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__note__author__reference__identifier__assigner__identifier.period}]) as Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Condition_1559757824302963__note__author__reference__identifier__assigner__identifier
#       view_label: "Condition 1559757824302963: Note Author Reference Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__note__author__reference__identifier__assigner.identifier}]) as Condition_1559757824302963__note__author__reference__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner
#       view_label: "Condition 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__note__author__reference__identifier__assigner__identifier.assigner}]) as Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Condition 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier.period}]) as Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier
#       view_label: "Condition 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner.identifier}]) as Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Condition 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier.assigner}]) as Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Condition 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type.coding}) as Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Condition 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier.type}]) as Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__type__coding
#       view_label: "Condition 1559757824302963: Note Author Reference Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__type.coding}) as Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__type
#       view_label: "Condition 1559757824302963: Note Author Reference Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__note__author__reference__identifier__assigner__identifier.type}]) as Condition_1559757824302963__note__author__reference__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Condition_1559757824302963__note__author__reference__identifier__type__coding
#       view_label: "Condition 1559757824302963: Note Author Reference Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__note__author__reference__identifier__type.coding}) as Condition_1559757824302963__note__author__reference__identifier__type__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__note__author__reference__identifier__type
#       view_label: "Condition 1559757824302963: Note Author Reference Identifier Type"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__note__author__reference__identifier.type}]) as Condition_1559757824302963__note__author__reference__identifier__type
#       relationship: one_to_one
#     - join: Condition_1559757824302963__note__author
#       view_label: "Condition 1559757824302963: Note Author"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__note.author}]) as Condition_1559757824302963__note__author
#       relationship: one_to_one
#     - join: Condition_1559757824302963__note
#       view_label: "Condition 1559757824302963: Note"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963.note}) as Condition_1559757824302963__note
#       relationship: one_to_many
#     - join: Condition_1559757824302963__code__coding
#       view_label: "Condition 1559757824302963: Code Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__code.coding}) as Condition_1559757824302963__code__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__code
#       view_label: "Condition 1559757824302963: Code"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963.code}]) as Condition_1559757824302963__code
#       relationship: one_to_one
#     - join: Condition_1559757824302963__evidence__code__coding
#       view_label: "Condition 1559757824302963: Evidence Code Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__evidence__code.coding}) as Condition_1559757824302963__evidence__code__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__evidence__code
#       view_label: "Condition 1559757824302963: Evidence Code"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__evidence.code}) as Condition_1559757824302963__evidence__code
#       relationship: one_to_many
#     - join: Condition_1559757824302963__evidence__detail
#       view_label: "Condition 1559757824302963: Evidence Detail"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__evidence.detail}) as Condition_1559757824302963__evidence__detail
#       relationship: one_to_many
#     - join: Condition_1559757824302963__evidence__detail__identifier__period
#       view_label: "Condition 1559757824302963: Evidence Detail Identifier Period"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__evidence__detail__identifier.period}]) as Condition_1559757824302963__evidence__detail__identifier__period
#       relationship: one_to_one
#     - join: Condition_1559757824302963__evidence__detail__identifier
#       view_label: "Condition 1559757824302963: Evidence Detail Identifier"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__evidence__detail.identifier}]) as Condition_1559757824302963__evidence__detail__identifier
#       relationship: one_to_one
#     - join: Condition_1559757824302963__evidence__detail__identifier__assigner
#       view_label: "Condition 1559757824302963: Evidence Detail Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__evidence__detail__identifier.assigner}]) as Condition_1559757824302963__evidence__detail__identifier__assigner
#       relationship: one_to_one
#     - join: Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__period
#       view_label: "Condition 1559757824302963: Evidence Detail Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__evidence__detail__identifier__assigner__identifier.period}]) as Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Condition_1559757824302963__evidence__detail__identifier__assigner__identifier
#       view_label: "Condition 1559757824302963: Evidence Detail Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__evidence__detail__identifier__assigner.identifier}]) as Condition_1559757824302963__evidence__detail__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__assigner
#       view_label: "Condition 1559757824302963: Evidence Detail Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__evidence__detail__identifier__assigner__identifier.assigner}]) as Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Condition 1559757824302963: Evidence Detail Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__assigner__identifier.period}]) as Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__assigner__identifier
#       view_label: "Condition 1559757824302963: Evidence Detail Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__assigner.identifier}]) as Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Condition 1559757824302963: Evidence Detail Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__assigner__identifier.assigner}]) as Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Condition 1559757824302963: Evidence Detail Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__assigner__identifier__type.coding}) as Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Condition 1559757824302963: Evidence Detail Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__assigner__identifier.type}]) as Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__type__coding
#       view_label: "Condition 1559757824302963: Evidence Detail Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__type.coding}) as Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__type
#       view_label: "Condition 1559757824302963: Evidence Detail Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__evidence__detail__identifier__assigner__identifier.type}]) as Condition_1559757824302963__evidence__detail__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Condition_1559757824302963__evidence__detail__identifier__type__coding
#       view_label: "Condition 1559757824302963: Evidence Detail Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__evidence__detail__identifier__type.coding}) as Condition_1559757824302963__evidence__detail__identifier__type__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__evidence__detail__identifier__type
#       view_label: "Condition 1559757824302963: Evidence Detail Identifier Type"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__evidence__detail__identifier.type}]) as Condition_1559757824302963__evidence__detail__identifier__type
#       relationship: one_to_one
#     - join: Condition_1559757824302963__subject
#       view_label: "Condition 1559757824302963: Subject"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963.subject}]) as Condition_1559757824302963__subject
#       relationship: one_to_one
#     - join: Condition_1559757824302963__subject__identifier__period
#       view_label: "Condition 1559757824302963: Subject Identifier Period"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__subject__identifier.period}]) as Condition_1559757824302963__subject__identifier__period
#       relationship: one_to_one
#     - join: Condition_1559757824302963__subject__identifier
#       view_label: "Condition 1559757824302963: Subject Identifier"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__subject.identifier}]) as Condition_1559757824302963__subject__identifier
#       relationship: one_to_one
#     - join: Condition_1559757824302963__subject__identifier__assigner
#       view_label: "Condition 1559757824302963: Subject Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__subject__identifier.assigner}]) as Condition_1559757824302963__subject__identifier__assigner
#       relationship: one_to_one
#     - join: Condition_1559757824302963__subject__identifier__assigner__identifier__period
#       view_label: "Condition 1559757824302963: Subject Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__subject__identifier__assigner__identifier.period}]) as Condition_1559757824302963__subject__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Condition_1559757824302963__subject__identifier__assigner__identifier
#       view_label: "Condition 1559757824302963: Subject Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__subject__identifier__assigner.identifier}]) as Condition_1559757824302963__subject__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Condition_1559757824302963__subject__identifier__assigner__identifier__assigner
#       view_label: "Condition 1559757824302963: Subject Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__subject__identifier__assigner__identifier.assigner}]) as Condition_1559757824302963__subject__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Condition_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Condition 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier.period}]) as Condition_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Condition_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier
#       view_label: "Condition 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__subject__identifier__assigner__identifier__assigner.identifier}]) as Condition_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Condition_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Condition 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier.assigner}]) as Condition_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Condition_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Condition 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type.coding}) as Condition_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Condition 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier.type}]) as Condition_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Condition_1559757824302963__subject__identifier__assigner__identifier__type__coding
#       view_label: "Condition 1559757824302963: Subject Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__subject__identifier__assigner__identifier__type.coding}) as Condition_1559757824302963__subject__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__subject__identifier__assigner__identifier__type
#       view_label: "Condition 1559757824302963: Subject Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__subject__identifier__assigner__identifier.type}]) as Condition_1559757824302963__subject__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Condition_1559757824302963__subject__identifier__type__coding
#       view_label: "Condition 1559757824302963: Subject Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__subject__identifier__type.coding}) as Condition_1559757824302963__subject__identifier__type__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__subject__identifier__type
#       view_label: "Condition 1559757824302963: Subject Identifier Type"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__subject__identifier.type}]) as Condition_1559757824302963__subject__identifier__type
#       relationship: one_to_one
#     - join: Condition_1559757824302963__onset
#       view_label: "Condition 1559757824302963: Onset"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963.onset}]) as Condition_1559757824302963__onset
#       relationship: one_to_one
#     - join: Condition_1559757824302963__onset__period
#       view_label: "Condition 1559757824302963: Onset Period"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__onset.period}]) as Condition_1559757824302963__onset__period
#       relationship: one_to_one
#     - join: Condition_1559757824302963__onset__range__high
#       view_label: "Condition 1559757824302963: Onset `range` High"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__onset__`range`.high}]) as Condition_1559757824302963__onset__range__high
#       relationship: one_to_one
#     - join: Condition_1559757824302963__onset__range__low
#       view_label: "Condition 1559757824302963: Onset `range` Low"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__onset__`range`.low}]) as Condition_1559757824302963__onset__range__low
#       relationship: one_to_one
#     - join: Condition_1559757824302963__onset__age
#       view_label: "Condition 1559757824302963: Onset Age"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__onset.age}]) as Condition_1559757824302963__onset__age
#       relationship: one_to_one
#     - join: Condition_1559757824302963__body_site__coding
#       view_label: "Condition 1559757824302963: Bodysite Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__bodySite.coding}) as Condition_1559757824302963__body_site__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__body_site
#       view_label: "Condition 1559757824302963: Bodysite"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963.bodySite}) as Condition_1559757824302963__body_site
#       relationship: one_to_many
#     - join: Condition_1559757824302963__asserter
#       view_label: "Condition 1559757824302963: Asserter"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963.asserter}]) as Condition_1559757824302963__asserter
#       relationship: one_to_one
#     - join: Condition_1559757824302963__asserter__identifier__period
#       view_label: "Condition 1559757824302963: Asserter Identifier Period"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__asserter__identifier.period}]) as Condition_1559757824302963__asserter__identifier__period
#       relationship: one_to_one
#     - join: Condition_1559757824302963__asserter__identifier
#       view_label: "Condition 1559757824302963: Asserter Identifier"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__asserter.identifier}]) as Condition_1559757824302963__asserter__identifier
#       relationship: one_to_one
#     - join: Condition_1559757824302963__asserter__identifier__assigner
#       view_label: "Condition 1559757824302963: Asserter Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__asserter__identifier.assigner}]) as Condition_1559757824302963__asserter__identifier__assigner
#       relationship: one_to_one
#     - join: Condition_1559757824302963__asserter__identifier__assigner__identifier__period
#       view_label: "Condition 1559757824302963: Asserter Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__asserter__identifier__assigner__identifier.period}]) as Condition_1559757824302963__asserter__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Condition_1559757824302963__asserter__identifier__assigner__identifier
#       view_label: "Condition 1559757824302963: Asserter Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__asserter__identifier__assigner.identifier}]) as Condition_1559757824302963__asserter__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Condition_1559757824302963__asserter__identifier__assigner__identifier__assigner
#       view_label: "Condition 1559757824302963: Asserter Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__asserter__identifier__assigner__identifier.assigner}]) as Condition_1559757824302963__asserter__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Condition_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Condition 1559757824302963: Asserter Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier.period}]) as Condition_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Condition_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier
#       view_label: "Condition 1559757824302963: Asserter Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__asserter__identifier__assigner__identifier__assigner.identifier}]) as Condition_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Condition_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Condition 1559757824302963: Asserter Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier.assigner}]) as Condition_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Condition_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Condition 1559757824302963: Asserter Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier__type.coding}) as Condition_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Condition 1559757824302963: Asserter Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier.type}]) as Condition_1559757824302963__asserter__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Condition_1559757824302963__asserter__identifier__assigner__identifier__type__coding
#       view_label: "Condition 1559757824302963: Asserter Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__asserter__identifier__assigner__identifier__type.coding}) as Condition_1559757824302963__asserter__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__asserter__identifier__assigner__identifier__type
#       view_label: "Condition 1559757824302963: Asserter Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__asserter__identifier__assigner__identifier.type}]) as Condition_1559757824302963__asserter__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Condition_1559757824302963__asserter__identifier__type__coding
#       view_label: "Condition 1559757824302963: Asserter Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__asserter__identifier__type.coding}) as Condition_1559757824302963__asserter__identifier__type__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__asserter__identifier__type
#       view_label: "Condition 1559757824302963: Asserter Identifier Type"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__asserter__identifier.type}]) as Condition_1559757824302963__asserter__identifier__type
#       relationship: one_to_one
#     - join: Condition_1559757824302963__stage__summary__coding
#       view_label: "Condition 1559757824302963: Stage Summary Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__stage__summary.coding}) as Condition_1559757824302963__stage__summary__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__stage__summary
#       view_label: "Condition 1559757824302963: Stage Summary"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__stage.summary}]) as Condition_1559757824302963__stage__summary
#       relationship: one_to_one
#     - join: Condition_1559757824302963__stage__assessment
#       view_label: "Condition 1559757824302963: Stage Assessment"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__stage.assessment}) as Condition_1559757824302963__stage__assessment
#       relationship: one_to_many
#     - join: Condition_1559757824302963__stage__assessment__identifier__period
#       view_label: "Condition 1559757824302963: Stage Assessment Identifier Period"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__stage__assessment__identifier.period}]) as Condition_1559757824302963__stage__assessment__identifier__period
#       relationship: one_to_one
#     - join: Condition_1559757824302963__stage__assessment__identifier
#       view_label: "Condition 1559757824302963: Stage Assessment Identifier"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__stage__assessment.identifier}]) as Condition_1559757824302963__stage__assessment__identifier
#       relationship: one_to_one
#     - join: Condition_1559757824302963__stage__assessment__identifier__assigner
#       view_label: "Condition 1559757824302963: Stage Assessment Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__stage__assessment__identifier.assigner}]) as Condition_1559757824302963__stage__assessment__identifier__assigner
#       relationship: one_to_one
#     - join: Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__period
#       view_label: "Condition 1559757824302963: Stage Assessment Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__stage__assessment__identifier__assigner__identifier.period}]) as Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Condition_1559757824302963__stage__assessment__identifier__assigner__identifier
#       view_label: "Condition 1559757824302963: Stage Assessment Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__stage__assessment__identifier__assigner.identifier}]) as Condition_1559757824302963__stage__assessment__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__assigner
#       view_label: "Condition 1559757824302963: Stage Assessment Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__stage__assessment__identifier__assigner__identifier.assigner}]) as Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Condition 1559757824302963: Stage Assessment Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__assigner__identifier.period}]) as Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__assigner__identifier
#       view_label: "Condition 1559757824302963: Stage Assessment Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__assigner.identifier}]) as Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Condition 1559757824302963: Stage Assessment Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__assigner__identifier.assigner}]) as Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Condition 1559757824302963: Stage Assessment Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__assigner__identifier__type.coding}) as Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Condition 1559757824302963: Stage Assessment Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__assigner__identifier.type}]) as Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__type__coding
#       view_label: "Condition 1559757824302963: Stage Assessment Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__type.coding}) as Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__type
#       view_label: "Condition 1559757824302963: Stage Assessment Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__stage__assessment__identifier__assigner__identifier.type}]) as Condition_1559757824302963__stage__assessment__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Condition_1559757824302963__stage__assessment__identifier__type__coding
#       view_label: "Condition 1559757824302963: Stage Assessment Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__stage__assessment__identifier__type.coding}) as Condition_1559757824302963__stage__assessment__identifier__type__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__stage__assessment__identifier__type
#       view_label: "Condition 1559757824302963: Stage Assessment Identifier Type"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__stage__assessment__identifier.type}]) as Condition_1559757824302963__stage__assessment__identifier__type
#       relationship: one_to_one
#     - join: Condition_1559757824302963__meta
#       view_label: "Condition 1559757824302963: Meta"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963.meta}]) as Condition_1559757824302963__meta
#       relationship: one_to_one
#     - join: Condition_1559757824302963__meta__security
#       view_label: "Condition 1559757824302963: Meta Security"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__meta.security}) as Condition_1559757824302963__meta__security
#       relationship: one_to_many
#     - join: Condition_1559757824302963__meta__tag
#       view_label: "Condition 1559757824302963: Meta Tag"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__meta.tag}) as Condition_1559757824302963__meta__tag
#       relationship: one_to_many
#     - join: Condition_1559757824302963__context
#       view_label: "Condition 1559757824302963: Context"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963.context}]) as Condition_1559757824302963__context
#       relationship: one_to_one
#     - join: Condition_1559757824302963__context__identifier__period
#       view_label: "Condition 1559757824302963: Context Identifier Period"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__context__identifier.period}]) as Condition_1559757824302963__context__identifier__period
#       relationship: one_to_one
#     - join: Condition_1559757824302963__context__identifier
#       view_label: "Condition 1559757824302963: Context Identifier"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__context.identifier}]) as Condition_1559757824302963__context__identifier
#       relationship: one_to_one
#     - join: Condition_1559757824302963__context__identifier__assigner
#       view_label: "Condition 1559757824302963: Context Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__context__identifier.assigner}]) as Condition_1559757824302963__context__identifier__assigner
#       relationship: one_to_one
#     - join: Condition_1559757824302963__context__identifier__assigner__identifier__period
#       view_label: "Condition 1559757824302963: Context Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__context__identifier__assigner__identifier.period}]) as Condition_1559757824302963__context__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Condition_1559757824302963__context__identifier__assigner__identifier
#       view_label: "Condition 1559757824302963: Context Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__context__identifier__assigner.identifier}]) as Condition_1559757824302963__context__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Condition_1559757824302963__context__identifier__assigner__identifier__assigner
#       view_label: "Condition 1559757824302963: Context Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__context__identifier__assigner__identifier.assigner}]) as Condition_1559757824302963__context__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Condition_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Condition 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__context__identifier__assigner__identifier__assigner__identifier.period}]) as Condition_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Condition_1559757824302963__context__identifier__assigner__identifier__assigner__identifier
#       view_label: "Condition 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__context__identifier__assigner__identifier__assigner.identifier}]) as Condition_1559757824302963__context__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Condition_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Condition 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__context__identifier__assigner__identifier__assigner__identifier.assigner}]) as Condition_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Condition_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Condition 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type.coding}) as Condition_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Condition 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__context__identifier__assigner__identifier__assigner__identifier.type}]) as Condition_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Condition_1559757824302963__context__identifier__assigner__identifier__type__coding
#       view_label: "Condition 1559757824302963: Context Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__context__identifier__assigner__identifier__type.coding}) as Condition_1559757824302963__context__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__context__identifier__assigner__identifier__type
#       view_label: "Condition 1559757824302963: Context Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__context__identifier__assigner__identifier.type}]) as Condition_1559757824302963__context__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Condition_1559757824302963__context__identifier__type__coding
#       view_label: "Condition 1559757824302963: Context Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__context__identifier__type.coding}) as Condition_1559757824302963__context__identifier__type__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__context__identifier__type
#       view_label: "Condition 1559757824302963: Context Identifier Type"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__context__identifier.type}]) as Condition_1559757824302963__context__identifier__type
#       relationship: one_to_one
#     - join: Condition_1559757824302963__text
#       view_label: "Condition 1559757824302963: Text"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963.text}]) as Condition_1559757824302963__text
#       relationship: one_to_one
#     - join: Condition_1559757824302963__category__coding
#       view_label: "Condition 1559757824302963: Category Coding"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963__category.coding}) as Condition_1559757824302963__category__coding
#       relationship: one_to_many
#     - join: Condition_1559757824302963__category
#       view_label: "Condition 1559757824302963: Category"
#       sql: LEFT JOIN UNNEST(${Condition_1559757824302963.category}) as Condition_1559757824302963__category
#       relationship: one_to_many
#     - join: Condition_1559757824302963__abatement
#       view_label: "Condition 1559757824302963: Abatement"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963.abatement}]) as Condition_1559757824302963__abatement
#       relationship: one_to_one
#     - join: Condition_1559757824302963__abatement__period
#       view_label: "Condition 1559757824302963: Abatement Period"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__abatement.period}]) as Condition_1559757824302963__abatement__period
#       relationship: one_to_one
#     - join: Condition_1559757824302963__abatement__range__high
#       view_label: "Condition 1559757824302963: Abatement `range` High"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__abatement__`range`.high}]) as Condition_1559757824302963__abatement__range__high
#       relationship: one_to_one
#     - join: Condition_1559757824302963__abatement__range__low
#       view_label: "Condition 1559757824302963: Abatement `range` Low"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__abatement__`range`.low}]) as Condition_1559757824302963__abatement__range__low
#       relationship: one_to_one
#     - join: Condition_1559757824302963__abatement__age
#       view_label: "Condition 1559757824302963: Abatement Age"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__abatement.age}]) as Condition_1559757824302963__abatement__age
#       relationship: one_to_one
#     - join: Condition_1559757824302963__evidence
#       view_label: "Condition 1559757824302963: Evidence"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963.evidence}]) as Condition_1559757824302963__evidence
#       relationship: one_to_one
#     - join: Condition_1559757824302963__onset__range
#       view_label: "Condition 1559757824302963: Onset `range`"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__onset.`range`}]) as Condition_1559757824302963__onset__range
#       relationship: one_to_one
#     - join: Condition_1559757824302963__stage
#       view_label: "Condition 1559757824302963: Stage"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963.stage}]) as Condition_1559757824302963__stage
#       relationship: one_to_one
#     - join: Condition_1559757824302963__abatement__range
#       view_label: "Condition 1559757824302963: Abatement `range`"
#       sql: LEFT JOIN UNNEST([${Condition_1559757824302963__abatement.`range`}]) as Condition_1559757824302963__abatement__range
#       relationship: one_to_one

# - explore: document_reference_1559757824302963
#   joins:
#     - join: DocumentReference_1559757824302963__identifier__period
#       view_label: "Documentreference 1559757824302963: Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__identifier.period}]) as DocumentReference_1559757824302963__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__identifier
#       view_label: "Documentreference 1559757824302963: Identifier"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963.identifier}) as DocumentReference_1559757824302963__identifier
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__identifier.assigner}]) as DocumentReference_1559757824302963__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__identifier__assigner__identifier__period
#       view_label: "Documentreference 1559757824302963: Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__identifier__assigner__identifier.period}]) as DocumentReference_1559757824302963__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__identifier__assigner__identifier
#       view_label: "Documentreference 1559757824302963: Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__identifier__assigner.identifier}]) as DocumentReference_1559757824302963__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__identifier__assigner__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__identifier__assigner__identifier.assigner}]) as DocumentReference_1559757824302963__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Documentreference 1559757824302963: Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__identifier__assigner__identifier__assigner__identifier.period}]) as DocumentReference_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       view_label: "Documentreference 1559757824302963: Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__identifier__assigner__identifier__assigner.identifier}]) as DocumentReference_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__identifier__assigner__identifier__assigner__identifier.assigner}]) as DocumentReference_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__identifier__assigner__identifier__assigner__identifier__type.coding}) as DocumentReference_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Documentreference 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__identifier__assigner__identifier__assigner__identifier.type}]) as DocumentReference_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__identifier__assigner__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__identifier__assigner__identifier__type.coding}) as DocumentReference_1559757824302963__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__identifier__assigner__identifier__type
#       view_label: "Documentreference 1559757824302963: Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__identifier__assigner__identifier.type}]) as DocumentReference_1559757824302963__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__identifier__type.coding}) as DocumentReference_1559757824302963__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__identifier__type
#       view_label: "Documentreference 1559757824302963: Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__identifier.type}]) as DocumentReference_1559757824302963__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__custodian
#       view_label: "Documentreference 1559757824302963: Custodian"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963.custodian}]) as DocumentReference_1559757824302963__custodian
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__custodian__identifier__period
#       view_label: "Documentreference 1559757824302963: Custodian Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__custodian__identifier.period}]) as DocumentReference_1559757824302963__custodian__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__custodian__identifier
#       view_label: "Documentreference 1559757824302963: Custodian Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__custodian.identifier}]) as DocumentReference_1559757824302963__custodian__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__custodian__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Custodian Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__custodian__identifier.assigner}]) as DocumentReference_1559757824302963__custodian__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__period
#       view_label: "Documentreference 1559757824302963: Custodian Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__custodian__identifier__assigner__identifier.period}]) as DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__custodian__identifier__assigner__identifier
#       view_label: "Documentreference 1559757824302963: Custodian Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__custodian__identifier__assigner.identifier}]) as DocumentReference_1559757824302963__custodian__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Custodian Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__custodian__identifier__assigner__identifier.assigner}]) as DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Documentreference 1559757824302963: Custodian Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__assigner__identifier.period}]) as DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__assigner__identifier
#       view_label: "Documentreference 1559757824302963: Custodian Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__assigner.identifier}]) as DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Custodian Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__assigner__identifier.assigner}]) as DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Custodian Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__assigner__identifier__type.coding}) as DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Documentreference 1559757824302963: Custodian Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__assigner__identifier.type}]) as DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Custodian Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__type.coding}) as DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__type
#       view_label: "Documentreference 1559757824302963: Custodian Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__custodian__identifier__assigner__identifier.type}]) as DocumentReference_1559757824302963__custodian__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__custodian__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Custodian Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__custodian__identifier__type.coding}) as DocumentReference_1559757824302963__custodian__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__custodian__identifier__type
#       view_label: "Documentreference 1559757824302963: Custodian Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__custodian__identifier.type}]) as DocumentReference_1559757824302963__custodian__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__security_label__coding
#       view_label: "Documentreference 1559757824302963: Securitylabel Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__securityLabel.coding}) as DocumentReference_1559757824302963__security_label__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__security_label
#       view_label: "Documentreference 1559757824302963: Securitylabel"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963.securityLabel}) as DocumentReference_1559757824302963__security_label
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__author
#       view_label: "Documentreference 1559757824302963: Author"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963.author}) as DocumentReference_1559757824302963__author
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__author__identifier__period
#       view_label: "Documentreference 1559757824302963: Author Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__author__identifier.period}]) as DocumentReference_1559757824302963__author__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__author__identifier
#       view_label: "Documentreference 1559757824302963: Author Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__author.identifier}]) as DocumentReference_1559757824302963__author__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__author__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Author Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__author__identifier.assigner}]) as DocumentReference_1559757824302963__author__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__author__identifier__assigner__identifier__period
#       view_label: "Documentreference 1559757824302963: Author Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__author__identifier__assigner__identifier.period}]) as DocumentReference_1559757824302963__author__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__author__identifier__assigner__identifier
#       view_label: "Documentreference 1559757824302963: Author Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__author__identifier__assigner.identifier}]) as DocumentReference_1559757824302963__author__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__author__identifier__assigner__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Author Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__author__identifier__assigner__identifier.assigner}]) as DocumentReference_1559757824302963__author__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__author__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Documentreference 1559757824302963: Author Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__author__identifier__assigner__identifier__assigner__identifier.period}]) as DocumentReference_1559757824302963__author__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__author__identifier__assigner__identifier__assigner__identifier
#       view_label: "Documentreference 1559757824302963: Author Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__author__identifier__assigner__identifier__assigner.identifier}]) as DocumentReference_1559757824302963__author__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__author__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Author Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__author__identifier__assigner__identifier__assigner__identifier.assigner}]) as DocumentReference_1559757824302963__author__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__author__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Author Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__author__identifier__assigner__identifier__assigner__identifier__type.coding}) as DocumentReference_1559757824302963__author__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__author__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Documentreference 1559757824302963: Author Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__author__identifier__assigner__identifier__assigner__identifier.type}]) as DocumentReference_1559757824302963__author__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__author__identifier__assigner__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Author Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__author__identifier__assigner__identifier__type.coding}) as DocumentReference_1559757824302963__author__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__author__identifier__assigner__identifier__type
#       view_label: "Documentreference 1559757824302963: Author Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__author__identifier__assigner__identifier.type}]) as DocumentReference_1559757824302963__author__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__author__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Author Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__author__identifier__type.coding}) as DocumentReference_1559757824302963__author__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__author__identifier__type
#       view_label: "Documentreference 1559757824302963: Author Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__author__identifier.type}]) as DocumentReference_1559757824302963__author__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__subject
#       view_label: "Documentreference 1559757824302963: Subject"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963.subject}]) as DocumentReference_1559757824302963__subject
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__subject__identifier__period
#       view_label: "Documentreference 1559757824302963: Subject Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__subject__identifier.period}]) as DocumentReference_1559757824302963__subject__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__subject__identifier
#       view_label: "Documentreference 1559757824302963: Subject Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__subject.identifier}]) as DocumentReference_1559757824302963__subject__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__subject__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Subject Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__subject__identifier.assigner}]) as DocumentReference_1559757824302963__subject__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__subject__identifier__assigner__identifier__period
#       view_label: "Documentreference 1559757824302963: Subject Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__subject__identifier__assigner__identifier.period}]) as DocumentReference_1559757824302963__subject__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__subject__identifier__assigner__identifier
#       view_label: "Documentreference 1559757824302963: Subject Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__subject__identifier__assigner.identifier}]) as DocumentReference_1559757824302963__subject__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__subject__identifier__assigner__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Subject Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__subject__identifier__assigner__identifier.assigner}]) as DocumentReference_1559757824302963__subject__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Documentreference 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier.period}]) as DocumentReference_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier
#       view_label: "Documentreference 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__subject__identifier__assigner__identifier__assigner.identifier}]) as DocumentReference_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier.assigner}]) as DocumentReference_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type.coding}) as DocumentReference_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Documentreference 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier.type}]) as DocumentReference_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__subject__identifier__assigner__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Subject Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__subject__identifier__assigner__identifier__type.coding}) as DocumentReference_1559757824302963__subject__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__subject__identifier__assigner__identifier__type
#       view_label: "Documentreference 1559757824302963: Subject Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__subject__identifier__assigner__identifier.type}]) as DocumentReference_1559757824302963__subject__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__subject__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Subject Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__subject__identifier__type.coding}) as DocumentReference_1559757824302963__subject__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__subject__identifier__type
#       view_label: "Documentreference 1559757824302963: Subject Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__subject__identifier.type}]) as DocumentReference_1559757824302963__subject__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__master_identifier__period
#       view_label: "Documentreference 1559757824302963: Masteridentifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__masterIdentifier.period}]) as DocumentReference_1559757824302963__master_identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__master_identifier
#       view_label: "Documentreference 1559757824302963: Masteridentifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963.masterIdentifier}]) as DocumentReference_1559757824302963__master_identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__master_identifier__assigner
#       view_label: "Documentreference 1559757824302963: Masteridentifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__masterIdentifier.assigner}]) as DocumentReference_1559757824302963__master_identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__master_identifier__assigner__identifier__period
#       view_label: "Documentreference 1559757824302963: Masteridentifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__masterIdentifier__assigner__identifier.period}]) as DocumentReference_1559757824302963__master_identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__master_identifier__assigner__identifier
#       view_label: "Documentreference 1559757824302963: Masteridentifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__masterIdentifier__assigner.identifier}]) as DocumentReference_1559757824302963__master_identifier__assigner__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__master_identifier__assigner__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Masteridentifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__masterIdentifier__assigner__identifier.assigner}]) as DocumentReference_1559757824302963__master_identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__master_identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Documentreference 1559757824302963: Masteridentifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__masterIdentifier__assigner__identifier__assigner__identifier.period}]) as DocumentReference_1559757824302963__master_identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__master_identifier__assigner__identifier__assigner__identifier
#       view_label: "Documentreference 1559757824302963: Masteridentifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__masterIdentifier__assigner__identifier__assigner.identifier}]) as DocumentReference_1559757824302963__master_identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__master_identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Masteridentifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__masterIdentifier__assigner__identifier__assigner__identifier.assigner}]) as DocumentReference_1559757824302963__master_identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__master_identifier__assigner__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Documentreference 1559757824302963: Masteridentifier Assigner Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__masterIdentifier__assigner__identifier__assigner__identifier__assigner__identifier.period}]) as DocumentReference_1559757824302963__master_identifier__assigner__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__master_identifier__assigner__identifier__assigner__identifier__assigner__identifier
#       view_label: "Documentreference 1559757824302963: Masteridentifier Assigner Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__masterIdentifier__assigner__identifier__assigner__identifier__assigner.identifier}]) as DocumentReference_1559757824302963__master_identifier__assigner__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__master_identifier__assigner__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Masteridentifier Assigner Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__masterIdentifier__assigner__identifier__assigner__identifier__assigner__identifier__type.coding}) as DocumentReference_1559757824302963__master_identifier__assigner__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__master_identifier__assigner__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Documentreference 1559757824302963: Masteridentifier Assigner Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__masterIdentifier__assigner__identifier__assigner__identifier__assigner__identifier.type}]) as DocumentReference_1559757824302963__master_identifier__assigner__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__master_identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Masteridentifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__masterIdentifier__assigner__identifier__assigner__identifier__type.coding}) as DocumentReference_1559757824302963__master_identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__master_identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Documentreference 1559757824302963: Masteridentifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__masterIdentifier__assigner__identifier__assigner__identifier.type}]) as DocumentReference_1559757824302963__master_identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__master_identifier__assigner__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Masteridentifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__masterIdentifier__assigner__identifier__type.coding}) as DocumentReference_1559757824302963__master_identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__master_identifier__assigner__identifier__type
#       view_label: "Documentreference 1559757824302963: Masteridentifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__masterIdentifier__assigner__identifier.type}]) as DocumentReference_1559757824302963__master_identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__master_identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Masteridentifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__masterIdentifier__type.coding}) as DocumentReference_1559757824302963__master_identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__master_identifier__type
#       view_label: "Documentreference 1559757824302963: Masteridentifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__masterIdentifier.type}]) as DocumentReference_1559757824302963__master_identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__type__coding
#       view_label: "Documentreference 1559757824302963: Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__type.coding}) as DocumentReference_1559757824302963__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__type
#       view_label: "Documentreference 1559757824302963: Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963.type}]) as DocumentReference_1559757824302963__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__content__attachment
#       view_label: "Documentreference 1559757824302963: Content Attachment"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__content.attachment}]) as DocumentReference_1559757824302963__content__attachment
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__content__format
#       view_label: "Documentreference 1559757824302963: Content Format"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__content.format}]) as DocumentReference_1559757824302963__content__format
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__meta
#       view_label: "Documentreference 1559757824302963: Meta"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963.meta}]) as DocumentReference_1559757824302963__meta
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__meta__security
#       view_label: "Documentreference 1559757824302963: Meta Security"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__meta.security}) as DocumentReference_1559757824302963__meta__security
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__meta__tag
#       view_label: "Documentreference 1559757824302963: Meta Tag"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__meta.tag}) as DocumentReference_1559757824302963__meta__tag
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__context__period
#       view_label: "Documentreference 1559757824302963: Context Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context.period}]) as DocumentReference_1559757824302963__context__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__identifier__period
#       view_label: "Documentreference 1559757824302963: Context Related Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related__identifier.period}]) as DocumentReference_1559757824302963__context__related__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__identifier
#       view_label: "Documentreference 1559757824302963: Context Related Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related.identifier}]) as DocumentReference_1559757824302963__context__related__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Context Related Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related__identifier.assigner}]) as DocumentReference_1559757824302963__context__related__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__period
#       view_label: "Documentreference 1559757824302963: Context Related Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related__identifier__assigner__identifier.period}]) as DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__identifier__assigner__identifier
#       view_label: "Documentreference 1559757824302963: Context Related Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related__identifier__assigner.identifier}]) as DocumentReference_1559757824302963__context__related__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Context Related Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related__identifier__assigner__identifier.assigner}]) as DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Documentreference 1559757824302963: Context Related Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__assigner__identifier.period}]) as DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__assigner__identifier
#       view_label: "Documentreference 1559757824302963: Context Related Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__assigner.identifier}]) as DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Context Related Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__assigner__identifier.assigner}]) as DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Context Related Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__assigner__identifier__type.coding}) as DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Documentreference 1559757824302963: Context Related Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__assigner__identifier.type}]) as DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Context Related Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__type.coding}) as DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__type
#       view_label: "Documentreference 1559757824302963: Context Related Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related__identifier__assigner__identifier.type}]) as DocumentReference_1559757824302963__context__related__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Context Related Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__context__related__identifier__type.coding}) as DocumentReference_1559757824302963__context__related__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__context__related__identifier__type
#       view_label: "Documentreference 1559757824302963: Context Related Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related__identifier.type}]) as DocumentReference_1559757824302963__context__related__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__ref
#       view_label: "Documentreference 1559757824302963: Context Related Ref"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related.ref}]) as DocumentReference_1559757824302963__context__related__ref
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__ref__identifier__period
#       view_label: "Documentreference 1559757824302963: Context Related Ref Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related__ref__identifier.period}]) as DocumentReference_1559757824302963__context__related__ref__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__ref__identifier
#       view_label: "Documentreference 1559757824302963: Context Related Ref Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related__ref.identifier}]) as DocumentReference_1559757824302963__context__related__ref__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__ref__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Context Related Ref Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related__ref__identifier.assigner}]) as DocumentReference_1559757824302963__context__related__ref__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__period
#       view_label: "Documentreference 1559757824302963: Context Related Ref Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier.period}]) as DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier
#       view_label: "Documentreference 1559757824302963: Context Related Ref Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related__ref__identifier__assigner.identifier}]) as DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Context Related Ref Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier.assigner}]) as DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Documentreference 1559757824302963: Context Related Ref Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__assigner__identifier.period}]) as DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__assigner__identifier
#       view_label: "Documentreference 1559757824302963: Context Related Ref Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__assigner.identifier}]) as DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Context Related Ref Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__assigner__identifier.assigner}]) as DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Context Related Ref Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__assigner__identifier__type.coding}) as DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Documentreference 1559757824302963: Context Related Ref Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__assigner__identifier.type}]) as DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Context Related Ref Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__type.coding}) as DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__type
#       view_label: "Documentreference 1559757824302963: Context Related Ref Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier.type}]) as DocumentReference_1559757824302963__context__related__ref__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related__ref__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Context Related Ref Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__context__related__ref__identifier__type.coding}) as DocumentReference_1559757824302963__context__related__ref__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__context__related__ref__identifier__type
#       view_label: "Documentreference 1559757824302963: Context Related Ref Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__related__ref__identifier.type}]) as DocumentReference_1559757824302963__context__related__ref__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__facility_type__coding
#       view_label: "Documentreference 1559757824302963: Context Facilitytype Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__context__facilityType.coding}) as DocumentReference_1559757824302963__context__facility_type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__context__facility_type
#       view_label: "Documentreference 1559757824302963: Context Facilitytype"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context.facilityType}]) as DocumentReference_1559757824302963__context__facility_type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__practice_setting__coding
#       view_label: "Documentreference 1559757824302963: Context Practicesetting Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__context__practiceSetting.coding}) as DocumentReference_1559757824302963__context__practice_setting__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__context__practice_setting
#       view_label: "Documentreference 1559757824302963: Context Practicesetting"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context.practiceSetting}]) as DocumentReference_1559757824302963__context__practice_setting
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__encounter
#       view_label: "Documentreference 1559757824302963: Context Encounter"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context.encounter}]) as DocumentReference_1559757824302963__context__encounter
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__encounter__identifier__period
#       view_label: "Documentreference 1559757824302963: Context Encounter Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__encounter__identifier.period}]) as DocumentReference_1559757824302963__context__encounter__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__encounter__identifier
#       view_label: "Documentreference 1559757824302963: Context Encounter Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__encounter.identifier}]) as DocumentReference_1559757824302963__context__encounter__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__encounter__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Context Encounter Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__encounter__identifier.assigner}]) as DocumentReference_1559757824302963__context__encounter__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__period
#       view_label: "Documentreference 1559757824302963: Context Encounter Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier.period}]) as DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier
#       view_label: "Documentreference 1559757824302963: Context Encounter Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__encounter__identifier__assigner.identifier}]) as DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Context Encounter Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier.assigner}]) as DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Documentreference 1559757824302963: Context Encounter Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__assigner__identifier.period}]) as DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__assigner__identifier
#       view_label: "Documentreference 1559757824302963: Context Encounter Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__assigner.identifier}]) as DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Context Encounter Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__assigner__identifier.assigner}]) as DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Context Encounter Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__assigner__identifier__type.coding}) as DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Documentreference 1559757824302963: Context Encounter Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__assigner__identifier.type}]) as DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Context Encounter Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__type.coding}) as DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__type
#       view_label: "Documentreference 1559757824302963: Context Encounter Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier.type}]) as DocumentReference_1559757824302963__context__encounter__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__encounter__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Context Encounter Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__context__encounter__identifier__type.coding}) as DocumentReference_1559757824302963__context__encounter__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__context__encounter__identifier__type
#       view_label: "Documentreference 1559757824302963: Context Encounter Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__encounter__identifier.type}]) as DocumentReference_1559757824302963__context__encounter__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__event__coding
#       view_label: "Documentreference 1559757824302963: Context Event Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__context__event.coding}) as DocumentReference_1559757824302963__context__event__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__context__event
#       view_label: "Documentreference 1559757824302963: Context Event"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__context.event}) as DocumentReference_1559757824302963__context__event
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__context__source_patient_info
#       view_label: "Documentreference 1559757824302963: Context Sourcepatientinfo"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context.sourcePatientInfo}]) as DocumentReference_1559757824302963__context__source_patient_info
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__source_patient_info__identifier__period
#       view_label: "Documentreference 1559757824302963: Context Sourcepatientinfo Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__sourcePatientInfo__identifier.period}]) as DocumentReference_1559757824302963__context__source_patient_info__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__source_patient_info__identifier
#       view_label: "Documentreference 1559757824302963: Context Sourcepatientinfo Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__sourcePatientInfo.identifier}]) as DocumentReference_1559757824302963__context__source_patient_info__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__source_patient_info__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Context Sourcepatientinfo Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__sourcePatientInfo__identifier.assigner}]) as DocumentReference_1559757824302963__context__source_patient_info__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__source_patient_info__identifier__assigner__identifier__period
#       view_label: "Documentreference 1559757824302963: Context Sourcepatientinfo Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__sourcePatientInfo__identifier__assigner__identifier.period}]) as DocumentReference_1559757824302963__context__source_patient_info__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__source_patient_info__identifier__assigner__identifier
#       view_label: "Documentreference 1559757824302963: Context Sourcepatientinfo Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__sourcePatientInfo__identifier__assigner.identifier}]) as DocumentReference_1559757824302963__context__source_patient_info__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__source_patient_info__identifier__assigner__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Context Sourcepatientinfo Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__sourcePatientInfo__identifier__assigner__identifier.assigner}]) as DocumentReference_1559757824302963__context__source_patient_info__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__source_patient_info__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Documentreference 1559757824302963: Context Sourcepatientinfo Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__sourcePatientInfo__identifier__assigner__identifier__assigner__identifier.period}]) as DocumentReference_1559757824302963__context__source_patient_info__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__source_patient_info__identifier__assigner__identifier__assigner__identifier
#       view_label: "Documentreference 1559757824302963: Context Sourcepatientinfo Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__sourcePatientInfo__identifier__assigner__identifier__assigner.identifier}]) as DocumentReference_1559757824302963__context__source_patient_info__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__source_patient_info__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Context Sourcepatientinfo Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__sourcePatientInfo__identifier__assigner__identifier__assigner__identifier.assigner}]) as DocumentReference_1559757824302963__context__source_patient_info__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__source_patient_info__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Context Sourcepatientinfo Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__context__sourcePatientInfo__identifier__assigner__identifier__assigner__identifier__type.coding}) as DocumentReference_1559757824302963__context__source_patient_info__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__context__source_patient_info__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Documentreference 1559757824302963: Context Sourcepatientinfo Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__sourcePatientInfo__identifier__assigner__identifier__assigner__identifier.type}]) as DocumentReference_1559757824302963__context__source_patient_info__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__source_patient_info__identifier__assigner__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Context Sourcepatientinfo Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__context__sourcePatientInfo__identifier__assigner__identifier__type.coding}) as DocumentReference_1559757824302963__context__source_patient_info__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__context__source_patient_info__identifier__assigner__identifier__type
#       view_label: "Documentreference 1559757824302963: Context Sourcepatientinfo Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__sourcePatientInfo__identifier__assigner__identifier.type}]) as DocumentReference_1559757824302963__context__source_patient_info__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__source_patient_info__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Context Sourcepatientinfo Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__context__sourcePatientInfo__identifier__type.coding}) as DocumentReference_1559757824302963__context__source_patient_info__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__context__source_patient_info__identifier__type
#       view_label: "Documentreference 1559757824302963: Context Sourcepatientinfo Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context__sourcePatientInfo__identifier.type}]) as DocumentReference_1559757824302963__context__source_patient_info__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__text
#       view_label: "Documentreference 1559757824302963: Text"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963.text}]) as DocumentReference_1559757824302963__text
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__relates_to
#       view_label: "Documentreference 1559757824302963: Relatesto"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963.relatesTo}) as DocumentReference_1559757824302963__relates_to
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__relates_to__target
#       view_label: "Documentreference 1559757824302963: Relatesto Target"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__relatesTo.target}]) as DocumentReference_1559757824302963__relates_to__target
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__relates_to__target__identifier__period
#       view_label: "Documentreference 1559757824302963: Relatesto Target Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__relatesTo__target__identifier.period}]) as DocumentReference_1559757824302963__relates_to__target__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__relates_to__target__identifier
#       view_label: "Documentreference 1559757824302963: Relatesto Target Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__relatesTo__target.identifier}]) as DocumentReference_1559757824302963__relates_to__target__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__relates_to__target__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Relatesto Target Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__relatesTo__target__identifier.assigner}]) as DocumentReference_1559757824302963__relates_to__target__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__relates_to__target__identifier__assigner__identifier__period
#       view_label: "Documentreference 1559757824302963: Relatesto Target Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__relatesTo__target__identifier__assigner__identifier.period}]) as DocumentReference_1559757824302963__relates_to__target__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__relates_to__target__identifier__assigner__identifier
#       view_label: "Documentreference 1559757824302963: Relatesto Target Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__relatesTo__target__identifier__assigner.identifier}]) as DocumentReference_1559757824302963__relates_to__target__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__relates_to__target__identifier__assigner__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Relatesto Target Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__relatesTo__target__identifier__assigner__identifier.assigner}]) as DocumentReference_1559757824302963__relates_to__target__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__relates_to__target__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Documentreference 1559757824302963: Relatesto Target Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__relatesTo__target__identifier__assigner__identifier__assigner__identifier.period}]) as DocumentReference_1559757824302963__relates_to__target__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__relates_to__target__identifier__assigner__identifier__assigner__identifier
#       view_label: "Documentreference 1559757824302963: Relatesto Target Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__relatesTo__target__identifier__assigner__identifier__assigner.identifier}]) as DocumentReference_1559757824302963__relates_to__target__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__relates_to__target__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Relatesto Target Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__relatesTo__target__identifier__assigner__identifier__assigner__identifier.assigner}]) as DocumentReference_1559757824302963__relates_to__target__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__relates_to__target__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Relatesto Target Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__relatesTo__target__identifier__assigner__identifier__assigner__identifier__type.coding}) as DocumentReference_1559757824302963__relates_to__target__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__relates_to__target__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Documentreference 1559757824302963: Relatesto Target Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__relatesTo__target__identifier__assigner__identifier__assigner__identifier.type}]) as DocumentReference_1559757824302963__relates_to__target__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__relates_to__target__identifier__assigner__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Relatesto Target Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__relatesTo__target__identifier__assigner__identifier__type.coding}) as DocumentReference_1559757824302963__relates_to__target__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__relates_to__target__identifier__assigner__identifier__type
#       view_label: "Documentreference 1559757824302963: Relatesto Target Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__relatesTo__target__identifier__assigner__identifier.type}]) as DocumentReference_1559757824302963__relates_to__target__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__relates_to__target__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Relatesto Target Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__relatesTo__target__identifier__type.coding}) as DocumentReference_1559757824302963__relates_to__target__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__relates_to__target__identifier__type
#       view_label: "Documentreference 1559757824302963: Relatesto Target Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__relatesTo__target__identifier.type}]) as DocumentReference_1559757824302963__relates_to__target__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__authenticator
#       view_label: "Documentreference 1559757824302963: Authenticator"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963.authenticator}]) as DocumentReference_1559757824302963__authenticator
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__authenticator__identifier__period
#       view_label: "Documentreference 1559757824302963: Authenticator Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__authenticator__identifier.period}]) as DocumentReference_1559757824302963__authenticator__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__authenticator__identifier
#       view_label: "Documentreference 1559757824302963: Authenticator Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__authenticator.identifier}]) as DocumentReference_1559757824302963__authenticator__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__authenticator__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Authenticator Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__authenticator__identifier.assigner}]) as DocumentReference_1559757824302963__authenticator__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__period
#       view_label: "Documentreference 1559757824302963: Authenticator Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier.period}]) as DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier
#       view_label: "Documentreference 1559757824302963: Authenticator Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__authenticator__identifier__assigner.identifier}]) as DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Authenticator Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier.assigner}]) as DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Documentreference 1559757824302963: Authenticator Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__assigner__identifier.period}]) as DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__assigner__identifier
#       view_label: "Documentreference 1559757824302963: Authenticator Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__assigner.identifier}]) as DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Documentreference 1559757824302963: Authenticator Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__assigner__identifier.assigner}]) as DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Authenticator Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__assigner__identifier__type.coding}) as DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Documentreference 1559757824302963: Authenticator Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__assigner__identifier.type}]) as DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Authenticator Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__type.coding}) as DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__type
#       view_label: "Documentreference 1559757824302963: Authenticator Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier.type}]) as DocumentReference_1559757824302963__authenticator__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__authenticator__identifier__type__coding
#       view_label: "Documentreference 1559757824302963: Authenticator Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__authenticator__identifier__type.coding}) as DocumentReference_1559757824302963__authenticator__identifier__type__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__authenticator__identifier__type
#       view_label: "Documentreference 1559757824302963: Authenticator Identifier Type"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__authenticator__identifier.type}]) as DocumentReference_1559757824302963__authenticator__identifier__type
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__class__coding
#       view_label: "Documentreference 1559757824302963: Class Coding"
#       sql: LEFT JOIN UNNEST(${DocumentReference_1559757824302963__class.coding}) as DocumentReference_1559757824302963__class__coding
#       relationship: one_to_many
#     - join: DocumentReference_1559757824302963__class
#       view_label: "Documentreference 1559757824302963: Class"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963.class}]) as DocumentReference_1559757824302963__class
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__content
#       view_label: "Documentreference 1559757824302963: Content"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963.content}]) as DocumentReference_1559757824302963__content
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context
#       view_label: "Documentreference 1559757824302963: Context"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963.context}]) as DocumentReference_1559757824302963__context
#       relationship: one_to_one
#     - join: DocumentReference_1559757824302963__context__related
#       view_label: "Documentreference 1559757824302963: Context Related"
#       sql: LEFT JOIN UNNEST([${DocumentReference_1559757824302963__context.related}]) as DocumentReference_1559757824302963__context__related
#       relationship: one_to_one

# - explore: encounter_1559757824302963
#   joins:
#     - join: Encounter_1559757824302963__part_of
#       view_label: "Encounter 1559757824302963: Partof"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963.partOf}]) as Encounter_1559757824302963__part_of
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__part_of__identifier__period
#       view_label: "Encounter 1559757824302963: Partof Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__partOf__identifier.period}]) as Encounter_1559757824302963__part_of__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__part_of__identifier
#       view_label: "Encounter 1559757824302963: Partof Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__partOf.identifier}]) as Encounter_1559757824302963__part_of__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__part_of__identifier__assigner
#       view_label: "Encounter 1559757824302963: Partof Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__partOf__identifier.assigner}]) as Encounter_1559757824302963__part_of__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__part_of__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Partof Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__partOf__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__part_of__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__part_of__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Partof Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__partOf__identifier__assigner.identifier}]) as Encounter_1559757824302963__part_of__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__part_of__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Partof Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__partOf__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__part_of__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Partof Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__partOf__identifier__assigner__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Partof Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__partOf__identifier__assigner__identifier__assigner.identifier}]) as Encounter_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Partof Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__partOf__identifier__assigner__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Partof Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__partOf__identifier__assigner__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Partof Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__partOf__identifier__assigner__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__part_of__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Partof Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__partOf__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__part_of__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__part_of__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Partof Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__partOf__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__part_of__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__part_of__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Partof Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__partOf__identifier__type.coding}) as Encounter_1559757824302963__part_of__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__part_of__identifier__type
#       view_label: "Encounter 1559757824302963: Partof Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__partOf__identifier.type}]) as Encounter_1559757824302963__part_of__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__reason__coding
#       view_label: "Encounter 1559757824302963: Reason Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__reason.coding}) as Encounter_1559757824302963__reason__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__reason
#       view_label: "Encounter 1559757824302963: Reason"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963.reason}) as Encounter_1559757824302963__reason
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__subject
#       view_label: "Encounter 1559757824302963: Subject"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963.subject}]) as Encounter_1559757824302963__subject
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__subject__identifier__period
#       view_label: "Encounter 1559757824302963: Subject Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__subject__identifier.period}]) as Encounter_1559757824302963__subject__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__subject__identifier
#       view_label: "Encounter 1559757824302963: Subject Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__subject.identifier}]) as Encounter_1559757824302963__subject__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__subject__identifier__assigner
#       view_label: "Encounter 1559757824302963: Subject Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__subject__identifier.assigner}]) as Encounter_1559757824302963__subject__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__subject__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Subject Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__subject__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__subject__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__subject__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Subject Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__subject__identifier__assigner.identifier}]) as Encounter_1559757824302963__subject__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__subject__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Subject Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__subject__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__subject__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__subject__identifier__assigner__identifier__assigner.identifier}]) as Encounter_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__subject__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Subject Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__subject__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__subject__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__subject__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Subject Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__subject__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__subject__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__subject__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Subject Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__subject__identifier__type.coding}) as Encounter_1559757824302963__subject__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__subject__identifier__type
#       view_label: "Encounter 1559757824302963: Subject Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__subject__identifier.type}]) as Encounter_1559757824302963__subject__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__appointment
#       view_label: "Encounter 1559757824302963: Appointment"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963.appointment}]) as Encounter_1559757824302963__appointment
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__appointment__identifier__period
#       view_label: "Encounter 1559757824302963: Appointment Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__appointment__identifier.period}]) as Encounter_1559757824302963__appointment__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__appointment__identifier
#       view_label: "Encounter 1559757824302963: Appointment Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__appointment.identifier}]) as Encounter_1559757824302963__appointment__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__appointment__identifier__assigner
#       view_label: "Encounter 1559757824302963: Appointment Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__appointment__identifier.assigner}]) as Encounter_1559757824302963__appointment__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__appointment__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Appointment Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__appointment__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__appointment__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__appointment__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Appointment Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__appointment__identifier__assigner.identifier}]) as Encounter_1559757824302963__appointment__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__appointment__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Appointment Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__appointment__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__appointment__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__appointment__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Appointment Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__appointment__identifier__assigner__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__appointment__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__appointment__identifier__assigner__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Appointment Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__appointment__identifier__assigner__identifier__assigner.identifier}]) as Encounter_1559757824302963__appointment__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__appointment__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Appointment Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__appointment__identifier__assigner__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__appointment__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__appointment__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Appointment Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__appointment__identifier__assigner__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__appointment__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__appointment__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Appointment Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__appointment__identifier__assigner__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__appointment__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__appointment__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Appointment Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__appointment__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__appointment__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__appointment__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Appointment Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__appointment__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__appointment__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__appointment__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Appointment Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__appointment__identifier__type.coding}) as Encounter_1559757824302963__appointment__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__appointment__identifier__type
#       view_label: "Encounter 1559757824302963: Appointment Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__appointment__identifier.type}]) as Encounter_1559757824302963__appointment__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__type__coding
#       view_label: "Encounter 1559757824302963: Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__type.coding}) as Encounter_1559757824302963__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__type
#       view_label: "Encounter 1559757824302963: Type"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963.type}) as Encounter_1559757824302963__type
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__participant__period
#       view_label: "Encounter 1559757824302963: Participant Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__participant.period}]) as Encounter_1559757824302963__participant__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__participant__individual
#       view_label: "Encounter 1559757824302963: Participant Individual"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__participant.individual}]) as Encounter_1559757824302963__participant__individual
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__participant__individual__identifier__period
#       view_label: "Encounter 1559757824302963: Participant Individual Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__participant__individual__identifier.period}]) as Encounter_1559757824302963__participant__individual__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__participant__individual__identifier
#       view_label: "Encounter 1559757824302963: Participant Individual Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__participant__individual.identifier}]) as Encounter_1559757824302963__participant__individual__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__participant__individual__identifier__assigner
#       view_label: "Encounter 1559757824302963: Participant Individual Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__participant__individual__identifier.assigner}]) as Encounter_1559757824302963__participant__individual__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Participant Individual Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__participant__individual__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__participant__individual__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Participant Individual Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__participant__individual__identifier__assigner.identifier}]) as Encounter_1559757824302963__participant__individual__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Participant Individual Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__participant__individual__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Participant Individual Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Participant Individual Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__assigner.identifier}]) as Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Participant Individual Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Participant Individual Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Participant Individual Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Participant Individual Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Participant Individual Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__participant__individual__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__participant__individual__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__participant__individual__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Participant Individual Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__participant__individual__identifier__type.coding}) as Encounter_1559757824302963__participant__individual__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__participant__individual__identifier__type
#       view_label: "Encounter 1559757824302963: Participant Individual Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__participant__individual__identifier.type}]) as Encounter_1559757824302963__participant__individual__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__participant__type__coding
#       view_label: "Encounter 1559757824302963: Participant Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__participant__type.coding}) as Encounter_1559757824302963__participant__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__participant__type
#       view_label: "Encounter 1559757824302963: Participant Type"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__participant.type}) as Encounter_1559757824302963__participant__type
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__episode_of_care
#       view_label: "Encounter 1559757824302963: Episodeofcare"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963.episodeOfCare}) as Encounter_1559757824302963__episode_of_care
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__episode_of_care__identifier__period
#       view_label: "Encounter 1559757824302963: Episodeofcare Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__episodeOfCare__identifier.period}]) as Encounter_1559757824302963__episode_of_care__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__episode_of_care__identifier
#       view_label: "Encounter 1559757824302963: Episodeofcare Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__episodeOfCare.identifier}]) as Encounter_1559757824302963__episode_of_care__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__episode_of_care__identifier__assigner
#       view_label: "Encounter 1559757824302963: Episodeofcare Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__episodeOfCare__identifier.assigner}]) as Encounter_1559757824302963__episode_of_care__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__episode_of_care__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Episodeofcare Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__episodeOfCare__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__episode_of_care__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__episode_of_care__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Episodeofcare Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__episodeOfCare__identifier__assigner.identifier}]) as Encounter_1559757824302963__episode_of_care__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__episode_of_care__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Episodeofcare Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__episodeOfCare__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__episode_of_care__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__episode_of_care__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Episodeofcare Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__episodeOfCare__identifier__assigner__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__episode_of_care__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__episode_of_care__identifier__assigner__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Episodeofcare Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__episodeOfCare__identifier__assigner__identifier__assigner.identifier}]) as Encounter_1559757824302963__episode_of_care__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__episode_of_care__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Episodeofcare Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__episodeOfCare__identifier__assigner__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__episode_of_care__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__episode_of_care__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Episodeofcare Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__episodeOfCare__identifier__assigner__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__episode_of_care__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__episode_of_care__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Episodeofcare Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__episodeOfCare__identifier__assigner__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__episode_of_care__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__episode_of_care__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Episodeofcare Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__episodeOfCare__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__episode_of_care__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__episode_of_care__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Episodeofcare Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__episodeOfCare__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__episode_of_care__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__episode_of_care__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Episodeofcare Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__episodeOfCare__identifier__type.coding}) as Encounter_1559757824302963__episode_of_care__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__episode_of_care__identifier__type
#       view_label: "Encounter 1559757824302963: Episodeofcare Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__episodeOfCare__identifier.type}]) as Encounter_1559757824302963__episode_of_care__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__text
#       view_label: "Encounter 1559757824302963: Text"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963.text}]) as Encounter_1559757824302963__text
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__class
#       view_label: "Encounter 1559757824302963: Class"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963.class}]) as Encounter_1559757824302963__class
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__identifier__period
#       view_label: "Encounter 1559757824302963: Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__identifier.period}]) as Encounter_1559757824302963__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__identifier
#       view_label: "Encounter 1559757824302963: Identifier"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963.identifier}) as Encounter_1559757824302963__identifier
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__identifier__assigner
#       view_label: "Encounter 1559757824302963: Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__identifier.assigner}]) as Encounter_1559757824302963__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__identifier__assigner.identifier}]) as Encounter_1559757824302963__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__identifier__assigner__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__identifier__assigner__identifier__assigner.identifier}]) as Encounter_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__identifier__assigner__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__identifier__assigner__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__identifier__assigner__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__identifier__type.coding}) as Encounter_1559757824302963__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__identifier__type
#       view_label: "Encounter 1559757824302963: Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__identifier.type}]) as Encounter_1559757824302963__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__incoming_referral
#       view_label: "Encounter 1559757824302963: Incomingreferral"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963.incomingReferral}) as Encounter_1559757824302963__incoming_referral
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__incoming_referral__identifier__period
#       view_label: "Encounter 1559757824302963: Incomingreferral Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__incomingReferral__identifier.period}]) as Encounter_1559757824302963__incoming_referral__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__incoming_referral__identifier
#       view_label: "Encounter 1559757824302963: Incomingreferral Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__incomingReferral.identifier}]) as Encounter_1559757824302963__incoming_referral__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__incoming_referral__identifier__assigner
#       view_label: "Encounter 1559757824302963: Incomingreferral Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__incomingReferral__identifier.assigner}]) as Encounter_1559757824302963__incoming_referral__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__incoming_referral__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Incomingreferral Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__incomingReferral__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__incoming_referral__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__incoming_referral__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Incomingreferral Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__incomingReferral__identifier__assigner.identifier}]) as Encounter_1559757824302963__incoming_referral__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__incoming_referral__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Incomingreferral Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__incomingReferral__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__incoming_referral__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__incoming_referral__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Incomingreferral Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__incomingReferral__identifier__assigner__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__incoming_referral__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__incoming_referral__identifier__assigner__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Incomingreferral Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__incomingReferral__identifier__assigner__identifier__assigner.identifier}]) as Encounter_1559757824302963__incoming_referral__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__incoming_referral__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Incomingreferral Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__incomingReferral__identifier__assigner__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__incoming_referral__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__incoming_referral__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Incomingreferral Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__incomingReferral__identifier__assigner__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__incoming_referral__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__incoming_referral__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Incomingreferral Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__incomingReferral__identifier__assigner__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__incoming_referral__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__incoming_referral__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Incomingreferral Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__incomingReferral__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__incoming_referral__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__incoming_referral__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Incomingreferral Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__incomingReferral__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__incoming_referral__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__incoming_referral__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Incomingreferral Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__incomingReferral__identifier__type.coding}) as Encounter_1559757824302963__incoming_referral__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__incoming_referral__identifier__type
#       view_label: "Encounter 1559757824302963: Incomingreferral Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__incomingReferral__identifier.type}]) as Encounter_1559757824302963__incoming_referral__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__period
#       view_label: "Encounter 1559757824302963: Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963.period}]) as Encounter_1559757824302963__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__class_history__period
#       view_label: "Encounter 1559757824302963: Classhistory Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__classHistory.period}]) as Encounter_1559757824302963__class_history__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__class_history__class
#       view_label: "Encounter 1559757824302963: Classhistory Class"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__classHistory.class}]) as Encounter_1559757824302963__class_history__class
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__special_arrangement__coding
#       view_label: "Encounter 1559757824302963: Hospitalization Specialarrangement Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__hospitalization__specialArrangement.coding}) as Encounter_1559757824302963__hospitalization__special_arrangement__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__hospitalization__special_arrangement
#       view_label: "Encounter 1559757824302963: Hospitalization Specialarrangement"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__hospitalization.specialArrangement}) as Encounter_1559757824302963__hospitalization__special_arrangement
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__hospitalization__re_admission__coding
#       view_label: "Encounter 1559757824302963: Hospitalization Readmission Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__hospitalization__reAdmission.coding}) as Encounter_1559757824302963__hospitalization__re_admission__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__hospitalization__re_admission
#       view_label: "Encounter 1559757824302963: Hospitalization Readmission"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization.reAdmission}]) as Encounter_1559757824302963__hospitalization__re_admission
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__origin
#       view_label: "Encounter 1559757824302963: Hospitalization Origin"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization.origin}]) as Encounter_1559757824302963__hospitalization__origin
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__origin__identifier__period
#       view_label: "Encounter 1559757824302963: Hospitalization Origin Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__origin__identifier.period}]) as Encounter_1559757824302963__hospitalization__origin__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__origin__identifier
#       view_label: "Encounter 1559757824302963: Hospitalization Origin Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__origin.identifier}]) as Encounter_1559757824302963__hospitalization__origin__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__origin__identifier__assigner
#       view_label: "Encounter 1559757824302963: Hospitalization Origin Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__origin__identifier.assigner}]) as Encounter_1559757824302963__hospitalization__origin__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Hospitalization Origin Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Hospitalization Origin Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__origin__identifier__assigner.identifier}]) as Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Hospitalization Origin Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Hospitalization Origin Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Hospitalization Origin Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__assigner.identifier}]) as Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Hospitalization Origin Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Hospitalization Origin Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Hospitalization Origin Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Hospitalization Origin Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Hospitalization Origin Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__hospitalization__origin__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__origin__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Hospitalization Origin Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__hospitalization__origin__identifier__type.coding}) as Encounter_1559757824302963__hospitalization__origin__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__hospitalization__origin__identifier__type
#       view_label: "Encounter 1559757824302963: Hospitalization Origin Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__origin__identifier.type}]) as Encounter_1559757824302963__hospitalization__origin__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__destination
#       view_label: "Encounter 1559757824302963: Hospitalization Destination"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization.destination}]) as Encounter_1559757824302963__hospitalization__destination
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__destination__identifier__period
#       view_label: "Encounter 1559757824302963: Hospitalization Destination Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__destination__identifier.period}]) as Encounter_1559757824302963__hospitalization__destination__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__destination__identifier
#       view_label: "Encounter 1559757824302963: Hospitalization Destination Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__destination.identifier}]) as Encounter_1559757824302963__hospitalization__destination__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__destination__identifier__assigner
#       view_label: "Encounter 1559757824302963: Hospitalization Destination Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__destination__identifier.assigner}]) as Encounter_1559757824302963__hospitalization__destination__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Hospitalization Destination Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Hospitalization Destination Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__destination__identifier__assigner.identifier}]) as Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Hospitalization Destination Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Hospitalization Destination Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Hospitalization Destination Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__assigner.identifier}]) as Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Hospitalization Destination Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Hospitalization Destination Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Hospitalization Destination Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Hospitalization Destination Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Hospitalization Destination Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__hospitalization__destination__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__destination__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Hospitalization Destination Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__hospitalization__destination__identifier__type.coding}) as Encounter_1559757824302963__hospitalization__destination__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__hospitalization__destination__identifier__type
#       view_label: "Encounter 1559757824302963: Hospitalization Destination Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__destination__identifier.type}]) as Encounter_1559757824302963__hospitalization__destination__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__diet_preference__coding
#       view_label: "Encounter 1559757824302963: Hospitalization Dietpreference Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__hospitalization__dietPreference.coding}) as Encounter_1559757824302963__hospitalization__diet_preference__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__hospitalization__diet_preference
#       view_label: "Encounter 1559757824302963: Hospitalization Dietpreference"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__hospitalization.dietPreference}) as Encounter_1559757824302963__hospitalization__diet_preference
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__hospitalization__pre_admission_identifier__period
#       view_label: "Encounter 1559757824302963: Hospitalization Preadmissionidentifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__preAdmissionIdentifier.period}]) as Encounter_1559757824302963__hospitalization__pre_admission_identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__pre_admission_identifier
#       view_label: "Encounter 1559757824302963: Hospitalization Preadmissionidentifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization.preAdmissionIdentifier}]) as Encounter_1559757824302963__hospitalization__pre_admission_identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner
#       view_label: "Encounter 1559757824302963: Hospitalization Preadmissionidentifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__preAdmissionIdentifier.assigner}]) as Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Hospitalization Preadmissionidentifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__preAdmissionIdentifier__assigner__identifier.period}]) as Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Hospitalization Preadmissionidentifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__preAdmissionIdentifier__assigner.identifier}]) as Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Hospitalization Preadmissionidentifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__preAdmissionIdentifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Hospitalization Preadmissionidentifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__preAdmissionIdentifier__assigner__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Hospitalization Preadmissionidentifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__preAdmissionIdentifier__assigner__identifier__assigner.identifier}]) as Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Hospitalization Preadmissionidentifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__preAdmissionIdentifier__assigner__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Hospitalization Preadmissionidentifier Assigner Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__preAdmissionIdentifier__assigner__identifier__assigner__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__assigner__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Hospitalization Preadmissionidentifier Assigner Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__preAdmissionIdentifier__assigner__identifier__assigner__identifier__assigner.identifier}]) as Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Hospitalization Preadmissionidentifier Assigner Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__hospitalization__preAdmissionIdentifier__assigner__identifier__assigner__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Hospitalization Preadmissionidentifier Assigner Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__preAdmissionIdentifier__assigner__identifier__assigner__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Hospitalization Preadmissionidentifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__hospitalization__preAdmissionIdentifier__assigner__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Hospitalization Preadmissionidentifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__preAdmissionIdentifier__assigner__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Hospitalization Preadmissionidentifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__hospitalization__preAdmissionIdentifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Hospitalization Preadmissionidentifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__preAdmissionIdentifier__assigner__identifier.type}]) as Encounter_1559757824302963__hospitalization__pre_admission_identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__pre_admission_identifier__type__coding
#       view_label: "Encounter 1559757824302963: Hospitalization Preadmissionidentifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__hospitalization__preAdmissionIdentifier__type.coding}) as Encounter_1559757824302963__hospitalization__pre_admission_identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__hospitalization__pre_admission_identifier__type
#       view_label: "Encounter 1559757824302963: Hospitalization Preadmissionidentifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization__preAdmissionIdentifier.type}]) as Encounter_1559757824302963__hospitalization__pre_admission_identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__special_courtesy__coding
#       view_label: "Encounter 1559757824302963: Hospitalization Specialcourtesy Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__hospitalization__specialCourtesy.coding}) as Encounter_1559757824302963__hospitalization__special_courtesy__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__hospitalization__special_courtesy
#       view_label: "Encounter 1559757824302963: Hospitalization Specialcourtesy"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__hospitalization.specialCourtesy}) as Encounter_1559757824302963__hospitalization__special_courtesy
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__hospitalization__discharge_disposition__coding
#       view_label: "Encounter 1559757824302963: Hospitalization Dischargedisposition Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__hospitalization__dischargeDisposition.coding}) as Encounter_1559757824302963__hospitalization__discharge_disposition__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__hospitalization__discharge_disposition
#       view_label: "Encounter 1559757824302963: Hospitalization Dischargedisposition"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization.dischargeDisposition}]) as Encounter_1559757824302963__hospitalization__discharge_disposition
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization__admit_source__coding
#       view_label: "Encounter 1559757824302963: Hospitalization Admitsource Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__hospitalization__admitSource.coding}) as Encounter_1559757824302963__hospitalization__admit_source__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__hospitalization__admit_source
#       view_label: "Encounter 1559757824302963: Hospitalization Admitsource"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__hospitalization.admitSource}]) as Encounter_1559757824302963__hospitalization__admit_source
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__length
#       view_label: "Encounter 1559757824302963: Length"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963.length}]) as Encounter_1559757824302963__length
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__diagnosis__condition
#       view_label: "Encounter 1559757824302963: Diagnosis Condition"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__diagnosis.condition}]) as Encounter_1559757824302963__diagnosis__condition
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__diagnosis__condition__identifier__period
#       view_label: "Encounter 1559757824302963: Diagnosis Condition Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__diagnosis__condition__identifier.period}]) as Encounter_1559757824302963__diagnosis__condition__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__diagnosis__condition__identifier
#       view_label: "Encounter 1559757824302963: Diagnosis Condition Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__diagnosis__condition.identifier}]) as Encounter_1559757824302963__diagnosis__condition__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__diagnosis__condition__identifier__assigner
#       view_label: "Encounter 1559757824302963: Diagnosis Condition Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__diagnosis__condition__identifier.assigner}]) as Encounter_1559757824302963__diagnosis__condition__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Diagnosis Condition Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Diagnosis Condition Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__diagnosis__condition__identifier__assigner.identifier}]) as Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Diagnosis Condition Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Diagnosis Condition Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Diagnosis Condition Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__assigner.identifier}]) as Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Diagnosis Condition Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Diagnosis Condition Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Diagnosis Condition Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Diagnosis Condition Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Diagnosis Condition Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__diagnosis__condition__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__diagnosis__condition__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Diagnosis Condition Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__diagnosis__condition__identifier__type.coding}) as Encounter_1559757824302963__diagnosis__condition__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__diagnosis__condition__identifier__type
#       view_label: "Encounter 1559757824302963: Diagnosis Condition Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__diagnosis__condition__identifier.type}]) as Encounter_1559757824302963__diagnosis__condition__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__diagnosis__role__coding
#       view_label: "Encounter 1559757824302963: Diagnosis Role Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__diagnosis__role.coding}) as Encounter_1559757824302963__diagnosis__role__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__diagnosis__role
#       view_label: "Encounter 1559757824302963: Diagnosis Role"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__diagnosis.role}]) as Encounter_1559757824302963__diagnosis__role
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__diagnosis
#       view_label: "Encounter 1559757824302963: Diagnosis"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963.diagnosis}) as Encounter_1559757824302963__diagnosis
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__priority__coding
#       view_label: "Encounter 1559757824302963: Priority Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__priority.coding}) as Encounter_1559757824302963__priority__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__priority
#       view_label: "Encounter 1559757824302963: Priority"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963.priority}]) as Encounter_1559757824302963__priority
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__status_history__period
#       view_label: "Encounter 1559757824302963: Statushistory Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__statusHistory.period}]) as Encounter_1559757824302963__status_history__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__status_history
#       view_label: "Encounter 1559757824302963: Statushistory"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963.statusHistory}) as Encounter_1559757824302963__status_history
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__meta
#       view_label: "Encounter 1559757824302963: Meta"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963.meta}]) as Encounter_1559757824302963__meta
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__meta__security
#       view_label: "Encounter 1559757824302963: Meta Security"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__meta.security}) as Encounter_1559757824302963__meta__security
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__meta__tag
#       view_label: "Encounter 1559757824302963: Meta Tag"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__meta.tag}) as Encounter_1559757824302963__meta__tag
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__service_provider
#       view_label: "Encounter 1559757824302963: Serviceprovider"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963.serviceProvider}]) as Encounter_1559757824302963__service_provider
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__service_provider__identifier__period
#       view_label: "Encounter 1559757824302963: Serviceprovider Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__serviceProvider__identifier.period}]) as Encounter_1559757824302963__service_provider__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__service_provider__identifier
#       view_label: "Encounter 1559757824302963: Serviceprovider Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__serviceProvider.identifier}]) as Encounter_1559757824302963__service_provider__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__service_provider__identifier__assigner
#       view_label: "Encounter 1559757824302963: Serviceprovider Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__serviceProvider__identifier.assigner}]) as Encounter_1559757824302963__service_provider__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__service_provider__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Serviceprovider Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__serviceProvider__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__service_provider__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__service_provider__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Serviceprovider Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__serviceProvider__identifier__assigner.identifier}]) as Encounter_1559757824302963__service_provider__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__service_provider__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Serviceprovider Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__serviceProvider__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__service_provider__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__service_provider__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Serviceprovider Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__serviceProvider__identifier__assigner__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__service_provider__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__service_provider__identifier__assigner__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Serviceprovider Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__serviceProvider__identifier__assigner__identifier__assigner.identifier}]) as Encounter_1559757824302963__service_provider__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__service_provider__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Serviceprovider Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__serviceProvider__identifier__assigner__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__service_provider__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__service_provider__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Serviceprovider Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__serviceProvider__identifier__assigner__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__service_provider__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__service_provider__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Serviceprovider Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__serviceProvider__identifier__assigner__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__service_provider__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__service_provider__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Serviceprovider Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__serviceProvider__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__service_provider__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__service_provider__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Serviceprovider Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__serviceProvider__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__service_provider__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__service_provider__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Serviceprovider Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__serviceProvider__identifier__type.coding}) as Encounter_1559757824302963__service_provider__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__service_provider__identifier__type
#       view_label: "Encounter 1559757824302963: Serviceprovider Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__serviceProvider__identifier.type}]) as Encounter_1559757824302963__service_provider__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__location__period
#       view_label: "Encounter 1559757824302963: Location Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__location.period}]) as Encounter_1559757824302963__location__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__location__location
#       view_label: "Encounter 1559757824302963: Location Location"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__location.location}]) as Encounter_1559757824302963__location__location
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__location__location__identifier__period
#       view_label: "Encounter 1559757824302963: Location Location Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__location__location__identifier.period}]) as Encounter_1559757824302963__location__location__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__location__location__identifier
#       view_label: "Encounter 1559757824302963: Location Location Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__location__location.identifier}]) as Encounter_1559757824302963__location__location__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__location__location__identifier__assigner
#       view_label: "Encounter 1559757824302963: Location Location Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__location__location__identifier.assigner}]) as Encounter_1559757824302963__location__location__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__location__location__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Location Location Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__location__location__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__location__location__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__location__location__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Location Location Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__location__location__identifier__assigner.identifier}]) as Encounter_1559757824302963__location__location__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__location__location__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Location Location Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__location__location__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__location__location__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__location__location__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Location Location Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__location__location__identifier__assigner__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__location__location__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__location__location__identifier__assigner__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Location Location Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__location__location__identifier__assigner__identifier__assigner.identifier}]) as Encounter_1559757824302963__location__location__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__location__location__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Location Location Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__location__location__identifier__assigner__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__location__location__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__location__location__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Location Location Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__location__location__identifier__assigner__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__location__location__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__location__location__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Location Location Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__location__location__identifier__assigner__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__location__location__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__location__location__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Location Location Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__location__location__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__location__location__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__location__location__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Location Location Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__location__location__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__location__location__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__location__location__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Location Location Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__location__location__identifier__type.coding}) as Encounter_1559757824302963__location__location__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__location__location__identifier__type
#       view_label: "Encounter 1559757824302963: Location Location Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__location__location__identifier.type}]) as Encounter_1559757824302963__location__location__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__location
#       view_label: "Encounter 1559757824302963: Location"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963.location}) as Encounter_1559757824302963__location
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__account
#       view_label: "Encounter 1559757824302963: Account"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963.account}) as Encounter_1559757824302963__account
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__account__identifier__period
#       view_label: "Encounter 1559757824302963: Account Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__account__identifier.period}]) as Encounter_1559757824302963__account__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__account__identifier
#       view_label: "Encounter 1559757824302963: Account Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__account.identifier}]) as Encounter_1559757824302963__account__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__account__identifier__assigner
#       view_label: "Encounter 1559757824302963: Account Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__account__identifier.assigner}]) as Encounter_1559757824302963__account__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__account__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Account Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__account__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__account__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__account__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Account Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__account__identifier__assigner.identifier}]) as Encounter_1559757824302963__account__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__account__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Account Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__account__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__account__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__account__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Encounter 1559757824302963: Account Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__account__identifier__assigner__identifier__assigner__identifier.period}]) as Encounter_1559757824302963__account__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__account__identifier__assigner__identifier__assigner__identifier
#       view_label: "Encounter 1559757824302963: Account Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__account__identifier__assigner__identifier__assigner.identifier}]) as Encounter_1559757824302963__account__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__account__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Encounter 1559757824302963: Account Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__account__identifier__assigner__identifier__assigner__identifier.assigner}]) as Encounter_1559757824302963__account__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__account__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Account Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__account__identifier__assigner__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__account__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__account__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Account Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__account__identifier__assigner__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__account__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__account__identifier__assigner__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Account Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__account__identifier__assigner__identifier__type.coding}) as Encounter_1559757824302963__account__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__account__identifier__assigner__identifier__type
#       view_label: "Encounter 1559757824302963: Account Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__account__identifier__assigner__identifier.type}]) as Encounter_1559757824302963__account__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__account__identifier__type__coding
#       view_label: "Encounter 1559757824302963: Account Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Encounter_1559757824302963__account__identifier__type.coding}) as Encounter_1559757824302963__account__identifier__type__coding
#       relationship: one_to_many
#     - join: Encounter_1559757824302963__account__identifier__type
#       view_label: "Encounter 1559757824302963: Account Identifier Type"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963__account__identifier.type}]) as Encounter_1559757824302963__account__identifier__type
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__participant
#       view_label: "Encounter 1559757824302963: Participant"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963.participant}]) as Encounter_1559757824302963__participant
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__class_history
#       view_label: "Encounter 1559757824302963: Classhistory"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963.classHistory}]) as Encounter_1559757824302963__class_history
#       relationship: one_to_one
#     - join: Encounter_1559757824302963__hospitalization
#       view_label: "Encounter 1559757824302963: Hospitalization"
#       sql: LEFT JOIN UNNEST([${Encounter_1559757824302963.hospitalization}]) as Encounter_1559757824302963__hospitalization
#       relationship: one_to_one

# - explore: family_member_history_1559757824302963
#   joins:
#     - join: FamilyMemberHistory_1559757824302963__identifier__period
#       view_label: "Familymemberhistory 1559757824302963: Identifier Period"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__identifier.period}]) as FamilyMemberHistory_1559757824302963__identifier__period
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__identifier
#       view_label: "Familymemberhistory 1559757824302963: Identifier"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963.identifier}) as FamilyMemberHistory_1559757824302963__identifier
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__identifier__assigner
#       view_label: "Familymemberhistory 1559757824302963: Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__identifier.assigner}]) as FamilyMemberHistory_1559757824302963__identifier__assigner
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__period
#       view_label: "Familymemberhistory 1559757824302963: Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__identifier__assigner__identifier.period}]) as FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__identifier__assigner__identifier
#       view_label: "Familymemberhistory 1559757824302963: Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__identifier__assigner.identifier}]) as FamilyMemberHistory_1559757824302963__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__assigner
#       view_label: "Familymemberhistory 1559757824302963: Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__identifier__assigner__identifier.assigner}]) as FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Familymemberhistory 1559757824302963: Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__assigner__identifier.period}]) as FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       view_label: "Familymemberhistory 1559757824302963: Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__assigner.identifier}]) as FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Familymemberhistory 1559757824302963: Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__assigner__identifier.assigner}]) as FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Familymemberhistory 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__assigner__identifier__type.coding}) as FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Familymemberhistory 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__assigner__identifier.type}]) as FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__type__coding
#       view_label: "Familymemberhistory 1559757824302963: Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__type.coding}) as FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__type
#       view_label: "Familymemberhistory 1559757824302963: Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__identifier__assigner__identifier.type}]) as FamilyMemberHistory_1559757824302963__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__identifier__type__coding
#       view_label: "Familymemberhistory 1559757824302963: Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__identifier__type.coding}) as FamilyMemberHistory_1559757824302963__identifier__type__coding
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__identifier__type
#       view_label: "Familymemberhistory 1559757824302963: Identifier Type"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__identifier.type}]) as FamilyMemberHistory_1559757824302963__identifier__type
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__note__author__reference
#       view_label: "Familymemberhistory 1559757824302963: Note Author Reference"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__note__author.reference}]) as FamilyMemberHistory_1559757824302963__note__author__reference
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__note__author__reference__identifier__period
#       view_label: "Familymemberhistory 1559757824302963: Note Author Reference Identifier Period"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__note__author__reference__identifier.period}]) as FamilyMemberHistory_1559757824302963__note__author__reference__identifier__period
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__note__author__reference__identifier
#       view_label: "Familymemberhistory 1559757824302963: Note Author Reference Identifier"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__note__author__reference.identifier}]) as FamilyMemberHistory_1559757824302963__note__author__reference__identifier
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner
#       view_label: "Familymemberhistory 1559757824302963: Note Author Reference Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__note__author__reference__identifier.assigner}]) as FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__period
#       view_label: "Familymemberhistory 1559757824302963: Note Author Reference Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier.period}]) as FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier
#       view_label: "Familymemberhistory 1559757824302963: Note Author Reference Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner.identifier}]) as FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner
#       view_label: "Familymemberhistory 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier.assigner}]) as FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Familymemberhistory 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier.period}]) as FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier
#       view_label: "Familymemberhistory 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner.identifier}]) as FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Familymemberhistory 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier.assigner}]) as FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Familymemberhistory 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type.coding}) as FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Familymemberhistory 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier.type}]) as FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__type__coding
#       view_label: "Familymemberhistory 1559757824302963: Note Author Reference Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__type.coding}) as FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__type
#       view_label: "Familymemberhistory 1559757824302963: Note Author Reference Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier.type}]) as FamilyMemberHistory_1559757824302963__note__author__reference__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__note__author__reference__identifier__type__coding
#       view_label: "Familymemberhistory 1559757824302963: Note Author Reference Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__note__author__reference__identifier__type.coding}) as FamilyMemberHistory_1559757824302963__note__author__reference__identifier__type__coding
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__note__author__reference__identifier__type
#       view_label: "Familymemberhistory 1559757824302963: Note Author Reference Identifier Type"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__note__author__reference__identifier.type}]) as FamilyMemberHistory_1559757824302963__note__author__reference__identifier__type
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__note__author
#       view_label: "Familymemberhistory 1559757824302963: Note Author"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__note.author}]) as FamilyMemberHistory_1559757824302963__note__author
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__note
#       view_label: "Familymemberhistory 1559757824302963: Note"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963.note}) as FamilyMemberHistory_1559757824302963__note
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__deceased
#       view_label: "Familymemberhistory 1559757824302963: Deceased"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963.deceased}]) as FamilyMemberHistory_1559757824302963__deceased
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__deceased__range__high
#       view_label: "Familymemberhistory 1559757824302963: Deceased `range` High"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__deceased__`range`.high}]) as FamilyMemberHistory_1559757824302963__deceased__range__high
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__deceased__range__low
#       view_label: "Familymemberhistory 1559757824302963: Deceased `range` Low"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__deceased__`range`.low}]) as FamilyMemberHistory_1559757824302963__deceased__range__low
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__deceased__age
#       view_label: "Familymemberhistory 1559757824302963: Deceased Age"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__deceased.age}]) as FamilyMemberHistory_1559757824302963__deceased__age
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__born
#       view_label: "Familymemberhistory 1559757824302963: Born"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963.born}]) as FamilyMemberHistory_1559757824302963__born
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__born__period
#       view_label: "Familymemberhistory 1559757824302963: Born Period"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__born.period}]) as FamilyMemberHistory_1559757824302963__born__period
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__reason_reference
#       view_label: "Familymemberhistory 1559757824302963: Reasonreference"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963.reasonReference}) as FamilyMemberHistory_1559757824302963__reason_reference
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__reason_reference__identifier__period
#       view_label: "Familymemberhistory 1559757824302963: Reasonreference Identifier Period"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__reasonReference__identifier.period}]) as FamilyMemberHistory_1559757824302963__reason_reference__identifier__period
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__reason_reference__identifier
#       view_label: "Familymemberhistory 1559757824302963: Reasonreference Identifier"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__reasonReference.identifier}]) as FamilyMemberHistory_1559757824302963__reason_reference__identifier
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__reason_reference__identifier__assigner
#       view_label: "Familymemberhistory 1559757824302963: Reasonreference Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__reasonReference__identifier.assigner}]) as FamilyMemberHistory_1559757824302963__reason_reference__identifier__assigner
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__reason_reference__identifier__assigner__identifier__period
#       view_label: "Familymemberhistory 1559757824302963: Reasonreference Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__reasonReference__identifier__assigner__identifier.period}]) as FamilyMemberHistory_1559757824302963__reason_reference__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__reason_reference__identifier__assigner__identifier
#       view_label: "Familymemberhistory 1559757824302963: Reasonreference Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__reasonReference__identifier__assigner.identifier}]) as FamilyMemberHistory_1559757824302963__reason_reference__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__reason_reference__identifier__assigner__identifier__assigner
#       view_label: "Familymemberhistory 1559757824302963: Reasonreference Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__reasonReference__identifier__assigner__identifier.assigner}]) as FamilyMemberHistory_1559757824302963__reason_reference__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Familymemberhistory 1559757824302963: Reasonreference Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__reasonReference__identifier__assigner__identifier__assigner__identifier.period}]) as FamilyMemberHistory_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier
#       view_label: "Familymemberhistory 1559757824302963: Reasonreference Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__reasonReference__identifier__assigner__identifier__assigner.identifier}]) as FamilyMemberHistory_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Familymemberhistory 1559757824302963: Reasonreference Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__reasonReference__identifier__assigner__identifier__assigner__identifier.assigner}]) as FamilyMemberHistory_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Familymemberhistory 1559757824302963: Reasonreference Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__reasonReference__identifier__assigner__identifier__assigner__identifier__type.coding}) as FamilyMemberHistory_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Familymemberhistory 1559757824302963: Reasonreference Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__reasonReference__identifier__assigner__identifier__assigner__identifier.type}]) as FamilyMemberHistory_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__reason_reference__identifier__assigner__identifier__type__coding
#       view_label: "Familymemberhistory 1559757824302963: Reasonreference Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__reasonReference__identifier__assigner__identifier__type.coding}) as FamilyMemberHistory_1559757824302963__reason_reference__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__reason_reference__identifier__assigner__identifier__type
#       view_label: "Familymemberhistory 1559757824302963: Reasonreference Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__reasonReference__identifier__assigner__identifier.type}]) as FamilyMemberHistory_1559757824302963__reason_reference__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__reason_reference__identifier__type__coding
#       view_label: "Familymemberhistory 1559757824302963: Reasonreference Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__reasonReference__identifier__type.coding}) as FamilyMemberHistory_1559757824302963__reason_reference__identifier__type__coding
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__reason_reference__identifier__type
#       view_label: "Familymemberhistory 1559757824302963: Reasonreference Identifier Type"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__reasonReference__identifier.type}]) as FamilyMemberHistory_1559757824302963__reason_reference__identifier__type
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__condition__note__author__reference
#       view_label: "Familymemberhistory 1559757824302963: Condition Note Author Reference"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__condition__note__author.reference}]) as FamilyMemberHistory_1559757824302963__condition__note__author__reference
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__period
#       view_label: "Familymemberhistory 1559757824302963: Condition Note Author Reference Identifier Period"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier.period}]) as FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__period
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier
#       view_label: "Familymemberhistory 1559757824302963: Condition Note Author Reference Identifier"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__condition__note__author__reference.identifier}]) as FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner
#       view_label: "Familymemberhistory 1559757824302963: Condition Note Author Reference Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier.assigner}]) as FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__period
#       view_label: "Familymemberhistory 1559757824302963: Condition Note Author Reference Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier.period}]) as FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier
#       view_label: "Familymemberhistory 1559757824302963: Condition Note Author Reference Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner.identifier}]) as FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__assigner
#       view_label: "Familymemberhistory 1559757824302963: Condition Note Author Reference Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier.assigner}]) as FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Familymemberhistory 1559757824302963: Condition Note Author Reference Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__assigner__identifier.period}]) as FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__assigner__identifier
#       view_label: "Familymemberhistory 1559757824302963: Condition Note Author Reference Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__assigner.identifier}]) as FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Familymemberhistory 1559757824302963: Condition Note Author Reference Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__assigner__identifier.assigner}]) as FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Familymemberhistory 1559757824302963: Condition Note Author Reference Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__assigner__identifier__type.coding}) as FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Familymemberhistory 1559757824302963: Condition Note Author Reference Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__assigner__identifier.type}]) as FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__type__coding
#       view_label: "Familymemberhistory 1559757824302963: Condition Note Author Reference Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__type.coding}) as FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__type
#       view_label: "Familymemberhistory 1559757824302963: Condition Note Author Reference Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier.type}]) as FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__type__coding
#       view_label: "Familymemberhistory 1559757824302963: Condition Note Author Reference Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__type.coding}) as FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__type__coding
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__type
#       view_label: "Familymemberhistory 1559757824302963: Condition Note Author Reference Identifier Type"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier.type}]) as FamilyMemberHistory_1559757824302963__condition__note__author__reference__identifier__type
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__condition__note__author
#       view_label: "Familymemberhistory 1559757824302963: Condition Note Author"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__condition__note.author}]) as FamilyMemberHistory_1559757824302963__condition__note__author
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__condition__note
#       view_label: "Familymemberhistory 1559757824302963: Condition Note"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__condition.note}) as FamilyMemberHistory_1559757824302963__condition__note
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__condition__code__coding
#       view_label: "Familymemberhistory 1559757824302963: Condition Code Coding"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__condition__code.coding}) as FamilyMemberHistory_1559757824302963__condition__code__coding
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__condition__code
#       view_label: "Familymemberhistory 1559757824302963: Condition Code"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__condition.code}]) as FamilyMemberHistory_1559757824302963__condition__code
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__condition__onset__period
#       view_label: "Familymemberhistory 1559757824302963: Condition Onset Period"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__condition__onset.period}]) as FamilyMemberHistory_1559757824302963__condition__onset__period
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__condition__onset
#       view_label: "Familymemberhistory 1559757824302963: Condition Onset"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__condition.onset}]) as FamilyMemberHistory_1559757824302963__condition__onset
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__condition__onset__range__high
#       view_label: "Familymemberhistory 1559757824302963: Condition Onset `range` High"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__condition__onset__`range`.high}]) as FamilyMemberHistory_1559757824302963__condition__onset__range__high
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__condition__onset__range__low
#       view_label: "Familymemberhistory 1559757824302963: Condition Onset `range` Low"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__condition__onset__`range`.low}]) as FamilyMemberHistory_1559757824302963__condition__onset__range__low
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__condition__onset__age
#       view_label: "Familymemberhistory 1559757824302963: Condition Onset Age"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__condition__onset.age}]) as FamilyMemberHistory_1559757824302963__condition__onset__age
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__condition__outcome__coding
#       view_label: "Familymemberhistory 1559757824302963: Condition Outcome Coding"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__condition__outcome.coding}) as FamilyMemberHistory_1559757824302963__condition__outcome__coding
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__condition__outcome
#       view_label: "Familymemberhistory 1559757824302963: Condition Outcome"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__condition.outcome}]) as FamilyMemberHistory_1559757824302963__condition__outcome
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__family_history_height__value__quantity
#       view_label: "Familymemberhistory 1559757824302963: Family History Height Value Quantity"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__family_history_height__value.quantity}]) as FamilyMemberHistory_1559757824302963__family_history_height__value__quantity
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__meta
#       view_label: "Familymemberhistory 1559757824302963: Meta"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963.meta}]) as FamilyMemberHistory_1559757824302963__meta
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__meta__security
#       view_label: "Familymemberhistory 1559757824302963: Meta Security"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__meta.security}) as FamilyMemberHistory_1559757824302963__meta__security
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__meta__tag
#       view_label: "Familymemberhistory 1559757824302963: Meta Tag"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__meta.tag}) as FamilyMemberHistory_1559757824302963__meta__tag
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__patient
#       view_label: "Familymemberhistory 1559757824302963: Patient"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963.patient}]) as FamilyMemberHistory_1559757824302963__patient
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__patient__identifier__period
#       view_label: "Familymemberhistory 1559757824302963: Patient Identifier Period"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__patient__identifier.period}]) as FamilyMemberHistory_1559757824302963__patient__identifier__period
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__patient__identifier
#       view_label: "Familymemberhistory 1559757824302963: Patient Identifier"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__patient.identifier}]) as FamilyMemberHistory_1559757824302963__patient__identifier
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__patient__identifier__assigner
#       view_label: "Familymemberhistory 1559757824302963: Patient Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__patient__identifier.assigner}]) as FamilyMemberHistory_1559757824302963__patient__identifier__assigner
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__period
#       view_label: "Familymemberhistory 1559757824302963: Patient Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier.period}]) as FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier
#       view_label: "Familymemberhistory 1559757824302963: Patient Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__patient__identifier__assigner.identifier}]) as FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__assigner
#       view_label: "Familymemberhistory 1559757824302963: Patient Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier.assigner}]) as FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Familymemberhistory 1559757824302963: Patient Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier.period}]) as FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier
#       view_label: "Familymemberhistory 1559757824302963: Patient Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__assigner.identifier}]) as FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Familymemberhistory 1559757824302963: Patient Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier.assigner}]) as FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Familymemberhistory 1559757824302963: Patient Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__type.coding}) as FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Familymemberhistory 1559757824302963: Patient Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier.type}]) as FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__type__coding
#       view_label: "Familymemberhistory 1559757824302963: Patient Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__type.coding}) as FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__type
#       view_label: "Familymemberhistory 1559757824302963: Patient Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier.type}]) as FamilyMemberHistory_1559757824302963__patient__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__patient__identifier__type__coding
#       view_label: "Familymemberhistory 1559757824302963: Patient Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__patient__identifier__type.coding}) as FamilyMemberHistory_1559757824302963__patient__identifier__type__coding
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__patient__identifier__type
#       view_label: "Familymemberhistory 1559757824302963: Patient Identifier Type"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__patient__identifier.type}]) as FamilyMemberHistory_1559757824302963__patient__identifier__type
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__definition
#       view_label: "Familymemberhistory 1559757824302963: Definition"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963.definition}) as FamilyMemberHistory_1559757824302963__definition
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__definition__identifier__period
#       view_label: "Familymemberhistory 1559757824302963: Definition Identifier Period"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__definition__identifier.period}]) as FamilyMemberHistory_1559757824302963__definition__identifier__period
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__definition__identifier
#       view_label: "Familymemberhistory 1559757824302963: Definition Identifier"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__definition.identifier}]) as FamilyMemberHistory_1559757824302963__definition__identifier
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__definition__identifier__assigner
#       view_label: "Familymemberhistory 1559757824302963: Definition Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__definition__identifier.assigner}]) as FamilyMemberHistory_1559757824302963__definition__identifier__assigner
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__period
#       view_label: "Familymemberhistory 1559757824302963: Definition Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier.period}]) as FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier
#       view_label: "Familymemberhistory 1559757824302963: Definition Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__definition__identifier__assigner.identifier}]) as FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__assigner
#       view_label: "Familymemberhistory 1559757824302963: Definition Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier.assigner}]) as FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Familymemberhistory 1559757824302963: Definition Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier.period}]) as FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier
#       view_label: "Familymemberhistory 1559757824302963: Definition Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__assigner.identifier}]) as FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Familymemberhistory 1559757824302963: Definition Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier.assigner}]) as FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Familymemberhistory 1559757824302963: Definition Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__type.coding}) as FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Familymemberhistory 1559757824302963: Definition Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier.type}]) as FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__type__coding
#       view_label: "Familymemberhistory 1559757824302963: Definition Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__type.coding}) as FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__type
#       view_label: "Familymemberhistory 1559757824302963: Definition Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier.type}]) as FamilyMemberHistory_1559757824302963__definition__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__definition__identifier__type__coding
#       view_label: "Familymemberhistory 1559757824302963: Definition Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__definition__identifier__type.coding}) as FamilyMemberHistory_1559757824302963__definition__identifier__type__coding
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__definition__identifier__type
#       view_label: "Familymemberhistory 1559757824302963: Definition Identifier Type"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__definition__identifier.type}]) as FamilyMemberHistory_1559757824302963__definition__identifier__type
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__not_done_reason__coding
#       view_label: "Familymemberhistory 1559757824302963: Notdonereason Coding"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__notDoneReason.coding}) as FamilyMemberHistory_1559757824302963__not_done_reason__coding
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__not_done_reason
#       view_label: "Familymemberhistory 1559757824302963: Notdonereason"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963.notDoneReason}]) as FamilyMemberHistory_1559757824302963__not_done_reason
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__reason_code__coding
#       view_label: "Familymemberhistory 1559757824302963: Reasoncode Coding"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__reasonCode.coding}) as FamilyMemberHistory_1559757824302963__reason_code__coding
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__reason_code
#       view_label: "Familymemberhistory 1559757824302963: Reasoncode"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963.reasonCode}) as FamilyMemberHistory_1559757824302963__reason_code
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__text
#       view_label: "Familymemberhistory 1559757824302963: Text"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963.text}]) as FamilyMemberHistory_1559757824302963__text
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__relationship__coding
#       view_label: "Familymemberhistory 1559757824302963: Relationship Coding"
#       sql: LEFT JOIN UNNEST(${FamilyMemberHistory_1559757824302963__relationship.coding}) as FamilyMemberHistory_1559757824302963__relationship__coding
#       relationship: one_to_many
#     - join: FamilyMemberHistory_1559757824302963__relationship
#       view_label: "Familymemberhistory 1559757824302963: Relationship"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963.relationship}]) as FamilyMemberHistory_1559757824302963__relationship
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__age
#       view_label: "Familymemberhistory 1559757824302963: Age"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963.age}]) as FamilyMemberHistory_1559757824302963__age
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__age__range__high
#       view_label: "Familymemberhistory 1559757824302963: Age `range` High"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__age__`range`.high}]) as FamilyMemberHistory_1559757824302963__age__range__high
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__age__range__low
#       view_label: "Familymemberhistory 1559757824302963: Age `range` Low"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__age__`range`.low}]) as FamilyMemberHistory_1559757824302963__age__range__low
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__age__age
#       view_label: "Familymemberhistory 1559757824302963: Age Age"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__age.age}]) as FamilyMemberHistory_1559757824302963__age__age
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__deceased__range
#       view_label: "Familymemberhistory 1559757824302963: Deceased `range`"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__deceased.`range`}]) as FamilyMemberHistory_1559757824302963__deceased__range
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__condition
#       view_label: "Familymemberhistory 1559757824302963: Condition"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963.condition}]) as FamilyMemberHistory_1559757824302963__condition
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__condition__onset__range
#       view_label: "Familymemberhistory 1559757824302963: Condition Onset `range`"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__condition__onset.`range`}]) as FamilyMemberHistory_1559757824302963__condition__onset__range
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__family_history_height__value
#       view_label: "Familymemberhistory 1559757824302963: Family History Height Value"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__family_history_height.value}]) as FamilyMemberHistory_1559757824302963__family_history_height__value
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__age__range
#       view_label: "Familymemberhistory 1559757824302963: Age `range`"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963__age.`range`}]) as FamilyMemberHistory_1559757824302963__age__range
#       relationship: one_to_one
#     - join: FamilyMemberHistory_1559757824302963__family_history_height
#       view_label: "Familymemberhistory 1559757824302963: Family History Height"
#       sql: LEFT JOIN UNNEST([${FamilyMemberHistory_1559757824302963.family_history_height}]) as FamilyMemberHistory_1559757824302963__family_history_height
#       relationship: one_to_one

# - explore: immunization_1559757824302963
#   joins:
#     - join: Immunization_1559757824302963__note__author__reference
#       view_label: "Immunization 1559757824302963: Note Author Reference"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__note__author.reference}]) as Immunization_1559757824302963__note__author__reference
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__note__author__reference__identifier__period
#       view_label: "Immunization 1559757824302963: Note Author Reference Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__note__author__reference__identifier.period}]) as Immunization_1559757824302963__note__author__reference__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__note__author__reference__identifier
#       view_label: "Immunization 1559757824302963: Note Author Reference Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__note__author__reference.identifier}]) as Immunization_1559757824302963__note__author__reference__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__note__author__reference__identifier__assigner
#       view_label: "Immunization 1559757824302963: Note Author Reference Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__note__author__reference__identifier.assigner}]) as Immunization_1559757824302963__note__author__reference__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__period
#       view_label: "Immunization 1559757824302963: Note Author Reference Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier.period}]) as Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier
#       view_label: "Immunization 1559757824302963: Note Author Reference Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__note__author__reference__identifier__assigner.identifier}]) as Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner
#       view_label: "Immunization 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier.assigner}]) as Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Immunization 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier.period}]) as Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier
#       view_label: "Immunization 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner.identifier}]) as Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Immunization 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier.assigner}]) as Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type.coding}) as Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Immunization 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier.type}]) as Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Note Author Reference Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__type.coding}) as Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__type
#       view_label: "Immunization 1559757824302963: Note Author Reference Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier.type}]) as Immunization_1559757824302963__note__author__reference__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__note__author__reference__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Note Author Reference Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__note__author__reference__identifier__type.coding}) as Immunization_1559757824302963__note__author__reference__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__note__author__reference__identifier__type
#       view_label: "Immunization 1559757824302963: Note Author Reference Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__note__author__reference__identifier.type}]) as Immunization_1559757824302963__note__author__reference__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__note__author
#       view_label: "Immunization 1559757824302963: Note Author"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__note.author}]) as Immunization_1559757824302963__note__author
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__note
#       view_label: "Immunization 1559757824302963: Note"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963.note}) as Immunization_1559757824302963__note
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__dose_quantity
#       view_label: "Immunization 1559757824302963: Dosequantity"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963.doseQuantity}]) as Immunization_1559757824302963__dose_quantity
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__explanation__reason__coding
#       view_label: "Immunization 1559757824302963: Explanation Reason Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__explanation__reason.coding}) as Immunization_1559757824302963__explanation__reason__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__explanation__reason
#       view_label: "Immunization 1559757824302963: Explanation Reason"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__explanation.reason}) as Immunization_1559757824302963__explanation__reason
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__explanation__reason_not_given__coding
#       view_label: "Immunization 1559757824302963: Explanation Reasonnotgiven Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__explanation__reasonNotGiven.coding}) as Immunization_1559757824302963__explanation__reason_not_given__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__explanation__reason_not_given
#       view_label: "Immunization 1559757824302963: Explanation Reasonnotgiven"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__explanation.reasonNotGiven}) as Immunization_1559757824302963__explanation__reason_not_given
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__manufacturer
#       view_label: "Immunization 1559757824302963: Manufacturer"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963.manufacturer}]) as Immunization_1559757824302963__manufacturer
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__manufacturer__identifier__period
#       view_label: "Immunization 1559757824302963: Manufacturer Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__manufacturer__identifier.period}]) as Immunization_1559757824302963__manufacturer__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__manufacturer__identifier
#       view_label: "Immunization 1559757824302963: Manufacturer Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__manufacturer.identifier}]) as Immunization_1559757824302963__manufacturer__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__manufacturer__identifier__assigner
#       view_label: "Immunization 1559757824302963: Manufacturer Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__manufacturer__identifier.assigner}]) as Immunization_1559757824302963__manufacturer__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__period
#       view_label: "Immunization 1559757824302963: Manufacturer Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__manufacturer__identifier__assigner__identifier.period}]) as Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__manufacturer__identifier__assigner__identifier
#       view_label: "Immunization 1559757824302963: Manufacturer Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__manufacturer__identifier__assigner.identifier}]) as Immunization_1559757824302963__manufacturer__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__assigner
#       view_label: "Immunization 1559757824302963: Manufacturer Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__manufacturer__identifier__assigner__identifier.assigner}]) as Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Immunization 1559757824302963: Manufacturer Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__assigner__identifier.period}]) as Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__assigner__identifier
#       view_label: "Immunization 1559757824302963: Manufacturer Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__assigner.identifier}]) as Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Immunization 1559757824302963: Manufacturer Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__assigner__identifier.assigner}]) as Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Manufacturer Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__assigner__identifier__type.coding}) as Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Immunization 1559757824302963: Manufacturer Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__assigner__identifier.type}]) as Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Manufacturer Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__type.coding}) as Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__type
#       view_label: "Immunization 1559757824302963: Manufacturer Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__manufacturer__identifier__assigner__identifier.type}]) as Immunization_1559757824302963__manufacturer__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__manufacturer__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Manufacturer Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__manufacturer__identifier__type.coding}) as Immunization_1559757824302963__manufacturer__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__manufacturer__identifier__type
#       view_label: "Immunization 1559757824302963: Manufacturer Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__manufacturer__identifier.type}]) as Immunization_1559757824302963__manufacturer__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__patient
#       view_label: "Immunization 1559757824302963: Patient"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963.patient}]) as Immunization_1559757824302963__patient
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__patient__identifier__period
#       view_label: "Immunization 1559757824302963: Patient Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__patient__identifier.period}]) as Immunization_1559757824302963__patient__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__patient__identifier
#       view_label: "Immunization 1559757824302963: Patient Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__patient.identifier}]) as Immunization_1559757824302963__patient__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__patient__identifier__assigner
#       view_label: "Immunization 1559757824302963: Patient Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__patient__identifier.assigner}]) as Immunization_1559757824302963__patient__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__patient__identifier__assigner__identifier__period
#       view_label: "Immunization 1559757824302963: Patient Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__patient__identifier__assigner__identifier.period}]) as Immunization_1559757824302963__patient__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__patient__identifier__assigner__identifier
#       view_label: "Immunization 1559757824302963: Patient Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__patient__identifier__assigner.identifier}]) as Immunization_1559757824302963__patient__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__patient__identifier__assigner__identifier__assigner
#       view_label: "Immunization 1559757824302963: Patient Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__patient__identifier__assigner__identifier.assigner}]) as Immunization_1559757824302963__patient__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Immunization 1559757824302963: Patient Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier.period}]) as Immunization_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier
#       view_label: "Immunization 1559757824302963: Patient Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__patient__identifier__assigner__identifier__assigner.identifier}]) as Immunization_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Immunization 1559757824302963: Patient Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier.assigner}]) as Immunization_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Patient Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__type.coding}) as Immunization_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Immunization 1559757824302963: Patient Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier.type}]) as Immunization_1559757824302963__patient__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__patient__identifier__assigner__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Patient Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__patient__identifier__assigner__identifier__type.coding}) as Immunization_1559757824302963__patient__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__patient__identifier__assigner__identifier__type
#       view_label: "Immunization 1559757824302963: Patient Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__patient__identifier__assigner__identifier.type}]) as Immunization_1559757824302963__patient__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__patient__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Patient Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__patient__identifier__type.coding}) as Immunization_1559757824302963__patient__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__patient__identifier__type
#       view_label: "Immunization 1559757824302963: Patient Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__patient__identifier.type}]) as Immunization_1559757824302963__patient__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__text
#       view_label: "Immunization 1559757824302963: Text"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963.text}]) as Immunization_1559757824302963__text
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__vaccine_code__coding
#       view_label: "Immunization 1559757824302963: Vaccinecode Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__vaccineCode.coding}) as Immunization_1559757824302963__vaccine_code__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__vaccine_code
#       view_label: "Immunization 1559757824302963: Vaccinecode"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963.vaccineCode}]) as Immunization_1559757824302963__vaccine_code
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__identifier__period
#       view_label: "Immunization 1559757824302963: Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__identifier.period}]) as Immunization_1559757824302963__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__identifier
#       view_label: "Immunization 1559757824302963: Identifier"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963.identifier}) as Immunization_1559757824302963__identifier
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__identifier__assigner
#       view_label: "Immunization 1559757824302963: Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__identifier.assigner}]) as Immunization_1559757824302963__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__identifier__assigner__identifier__period
#       view_label: "Immunization 1559757824302963: Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__identifier__assigner__identifier.period}]) as Immunization_1559757824302963__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__identifier__assigner__identifier
#       view_label: "Immunization 1559757824302963: Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__identifier__assigner.identifier}]) as Immunization_1559757824302963__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__identifier__assigner__identifier__assigner
#       view_label: "Immunization 1559757824302963: Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__identifier__assigner__identifier.assigner}]) as Immunization_1559757824302963__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Immunization 1559757824302963: Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__identifier__assigner__identifier__assigner__identifier.period}]) as Immunization_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       view_label: "Immunization 1559757824302963: Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__identifier__assigner__identifier__assigner.identifier}]) as Immunization_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Immunization 1559757824302963: Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__identifier__assigner__identifier__assigner__identifier.assigner}]) as Immunization_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__identifier__assigner__identifier__assigner__identifier__type.coding}) as Immunization_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Immunization 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__identifier__assigner__identifier__assigner__identifier.type}]) as Immunization_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__identifier__assigner__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__identifier__assigner__identifier__type.coding}) as Immunization_1559757824302963__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__identifier__assigner__identifier__type
#       view_label: "Immunization 1559757824302963: Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__identifier__assigner__identifier.type}]) as Immunization_1559757824302963__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__identifier__type.coding}) as Immunization_1559757824302963__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__identifier__type
#       view_label: "Immunization 1559757824302963: Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__identifier.type}]) as Immunization_1559757824302963__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__reaction
#       view_label: "Immunization 1559757824302963: Reaction"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963.reaction}) as Immunization_1559757824302963__reaction
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__reaction__detail
#       view_label: "Immunization 1559757824302963: Reaction Detail"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__reaction.detail}]) as Immunization_1559757824302963__reaction__detail
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__reaction__detail__identifier__period
#       view_label: "Immunization 1559757824302963: Reaction Detail Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__reaction__detail__identifier.period}]) as Immunization_1559757824302963__reaction__detail__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__reaction__detail__identifier
#       view_label: "Immunization 1559757824302963: Reaction Detail Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__reaction__detail.identifier}]) as Immunization_1559757824302963__reaction__detail__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__reaction__detail__identifier__assigner
#       view_label: "Immunization 1559757824302963: Reaction Detail Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__reaction__detail__identifier.assigner}]) as Immunization_1559757824302963__reaction__detail__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__period
#       view_label: "Immunization 1559757824302963: Reaction Detail Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier.period}]) as Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier
#       view_label: "Immunization 1559757824302963: Reaction Detail Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__reaction__detail__identifier__assigner.identifier}]) as Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__assigner
#       view_label: "Immunization 1559757824302963: Reaction Detail Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier.assigner}]) as Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Immunization 1559757824302963: Reaction Detail Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__assigner__identifier.period}]) as Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__assigner__identifier
#       view_label: "Immunization 1559757824302963: Reaction Detail Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__assigner.identifier}]) as Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Immunization 1559757824302963: Reaction Detail Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__assigner__identifier.assigner}]) as Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Reaction Detail Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__assigner__identifier__type.coding}) as Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Immunization 1559757824302963: Reaction Detail Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__assigner__identifier.type}]) as Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Reaction Detail Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__type.coding}) as Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__type
#       view_label: "Immunization 1559757824302963: Reaction Detail Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier.type}]) as Immunization_1559757824302963__reaction__detail__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__reaction__detail__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Reaction Detail Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__reaction__detail__identifier__type.coding}) as Immunization_1559757824302963__reaction__detail__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__reaction__detail__identifier__type
#       view_label: "Immunization 1559757824302963: Reaction Detail Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__reaction__detail__identifier.type}]) as Immunization_1559757824302963__reaction__detail__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__practitioner__actor
#       view_label: "Immunization 1559757824302963: Practitioner Actor"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__practitioner.actor}]) as Immunization_1559757824302963__practitioner__actor
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__practitioner__actor__identifier__period
#       view_label: "Immunization 1559757824302963: Practitioner Actor Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__practitioner__actor__identifier.period}]) as Immunization_1559757824302963__practitioner__actor__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__practitioner__actor__identifier
#       view_label: "Immunization 1559757824302963: Practitioner Actor Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__practitioner__actor.identifier}]) as Immunization_1559757824302963__practitioner__actor__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__practitioner__actor__identifier__assigner
#       view_label: "Immunization 1559757824302963: Practitioner Actor Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__practitioner__actor__identifier.assigner}]) as Immunization_1559757824302963__practitioner__actor__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__period
#       view_label: "Immunization 1559757824302963: Practitioner Actor Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier.period}]) as Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier
#       view_label: "Immunization 1559757824302963: Practitioner Actor Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__practitioner__actor__identifier__assigner.identifier}]) as Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__assigner
#       view_label: "Immunization 1559757824302963: Practitioner Actor Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier.assigner}]) as Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Immunization 1559757824302963: Practitioner Actor Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__assigner__identifier.period}]) as Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__assigner__identifier
#       view_label: "Immunization 1559757824302963: Practitioner Actor Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__assigner.identifier}]) as Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Immunization 1559757824302963: Practitioner Actor Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__assigner__identifier.assigner}]) as Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Practitioner Actor Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__assigner__identifier__type.coding}) as Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Immunization 1559757824302963: Practitioner Actor Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__assigner__identifier.type}]) as Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Practitioner Actor Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__type.coding}) as Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__type
#       view_label: "Immunization 1559757824302963: Practitioner Actor Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier.type}]) as Immunization_1559757824302963__practitioner__actor__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__practitioner__actor__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Practitioner Actor Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__practitioner__actor__identifier__type.coding}) as Immunization_1559757824302963__practitioner__actor__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__practitioner__actor__identifier__type
#       view_label: "Immunization 1559757824302963: Practitioner Actor Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__practitioner__actor__identifier.type}]) as Immunization_1559757824302963__practitioner__actor__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__practitioner__role__coding
#       view_label: "Immunization 1559757824302963: Practitioner Role Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__practitioner__role.coding}) as Immunization_1559757824302963__practitioner__role__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__practitioner__role
#       view_label: "Immunization 1559757824302963: Practitioner Role"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__practitioner.role}]) as Immunization_1559757824302963__practitioner__role
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__encounter
#       view_label: "Immunization 1559757824302963: Encounter"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963.encounter}]) as Immunization_1559757824302963__encounter
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__encounter__identifier__period
#       view_label: "Immunization 1559757824302963: Encounter Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__encounter__identifier.period}]) as Immunization_1559757824302963__encounter__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__encounter__identifier
#       view_label: "Immunization 1559757824302963: Encounter Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__encounter.identifier}]) as Immunization_1559757824302963__encounter__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__encounter__identifier__assigner
#       view_label: "Immunization 1559757824302963: Encounter Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__encounter__identifier.assigner}]) as Immunization_1559757824302963__encounter__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__encounter__identifier__assigner__identifier__period
#       view_label: "Immunization 1559757824302963: Encounter Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__encounter__identifier__assigner__identifier.period}]) as Immunization_1559757824302963__encounter__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__encounter__identifier__assigner__identifier
#       view_label: "Immunization 1559757824302963: Encounter Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__encounter__identifier__assigner.identifier}]) as Immunization_1559757824302963__encounter__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__encounter__identifier__assigner__identifier__assigner
#       view_label: "Immunization 1559757824302963: Encounter Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__encounter__identifier__assigner__identifier.assigner}]) as Immunization_1559757824302963__encounter__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__encounter__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Immunization 1559757824302963: Encounter Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__encounter__identifier__assigner__identifier__assigner__identifier.period}]) as Immunization_1559757824302963__encounter__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__encounter__identifier__assigner__identifier__assigner__identifier
#       view_label: "Immunization 1559757824302963: Encounter Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__encounter__identifier__assigner__identifier__assigner.identifier}]) as Immunization_1559757824302963__encounter__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__encounter__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Immunization 1559757824302963: Encounter Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__encounter__identifier__assigner__identifier__assigner__identifier.assigner}]) as Immunization_1559757824302963__encounter__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__encounter__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Encounter Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__encounter__identifier__assigner__identifier__assigner__identifier__type.coding}) as Immunization_1559757824302963__encounter__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__encounter__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Immunization 1559757824302963: Encounter Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__encounter__identifier__assigner__identifier__assigner__identifier.type}]) as Immunization_1559757824302963__encounter__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__encounter__identifier__assigner__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Encounter Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__encounter__identifier__assigner__identifier__type.coding}) as Immunization_1559757824302963__encounter__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__encounter__identifier__assigner__identifier__type
#       view_label: "Immunization 1559757824302963: Encounter Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__encounter__identifier__assigner__identifier.type}]) as Immunization_1559757824302963__encounter__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__encounter__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Encounter Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__encounter__identifier__type.coding}) as Immunization_1559757824302963__encounter__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__encounter__identifier__type
#       view_label: "Immunization 1559757824302963: Encounter Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__encounter__identifier.type}]) as Immunization_1559757824302963__encounter__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__site__coding
#       view_label: "Immunization 1559757824302963: Site Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__site.coding}) as Immunization_1559757824302963__site__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__site
#       view_label: "Immunization 1559757824302963: Site"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963.site}]) as Immunization_1559757824302963__site
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__route__coding
#       view_label: "Immunization 1559757824302963: Route Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__route.coding}) as Immunization_1559757824302963__route__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__route
#       view_label: "Immunization 1559757824302963: Route"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963.route}]) as Immunization_1559757824302963__route
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__vaccination_protocol
#       view_label: "Immunization 1559757824302963: Vaccinationprotocol"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963.vaccinationProtocol}) as Immunization_1559757824302963__vaccination_protocol
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__vaccination_protocol__dose_status_reason__coding
#       view_label: "Immunization 1559757824302963: Vaccinationprotocol Dosestatusreason Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__vaccinationProtocol__doseStatusReason.coding}) as Immunization_1559757824302963__vaccination_protocol__dose_status_reason__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__vaccination_protocol__dose_status_reason
#       view_label: "Immunization 1559757824302963: Vaccinationprotocol Dosestatusreason"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__vaccinationProtocol.doseStatusReason}]) as Immunization_1559757824302963__vaccination_protocol__dose_status_reason
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__vaccination_protocol__dose_status__coding
#       view_label: "Immunization 1559757824302963: Vaccinationprotocol Dosestatus Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__vaccinationProtocol__doseStatus.coding}) as Immunization_1559757824302963__vaccination_protocol__dose_status__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__vaccination_protocol__dose_status
#       view_label: "Immunization 1559757824302963: Vaccinationprotocol Dosestatus"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__vaccinationProtocol.doseStatus}]) as Immunization_1559757824302963__vaccination_protocol__dose_status
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__vaccination_protocol__authority
#       view_label: "Immunization 1559757824302963: Vaccinationprotocol Authority"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__vaccinationProtocol.authority}]) as Immunization_1559757824302963__vaccination_protocol__authority
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__vaccination_protocol__authority__identifier__period
#       view_label: "Immunization 1559757824302963: Vaccinationprotocol Authority Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__vaccinationProtocol__authority__identifier.period}]) as Immunization_1559757824302963__vaccination_protocol__authority__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__vaccination_protocol__authority__identifier
#       view_label: "Immunization 1559757824302963: Vaccinationprotocol Authority Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__vaccinationProtocol__authority.identifier}]) as Immunization_1559757824302963__vaccination_protocol__authority__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__vaccination_protocol__authority__identifier__assigner
#       view_label: "Immunization 1559757824302963: Vaccinationprotocol Authority Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__vaccinationProtocol__authority__identifier.assigner}]) as Immunization_1559757824302963__vaccination_protocol__authority__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__vaccination_protocol__authority__identifier__assigner__identifier__period
#       view_label: "Immunization 1559757824302963: Vaccinationprotocol Authority Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__vaccinationProtocol__authority__identifier__assigner__identifier.period}]) as Immunization_1559757824302963__vaccination_protocol__authority__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__vaccination_protocol__authority__identifier__assigner__identifier
#       view_label: "Immunization 1559757824302963: Vaccinationprotocol Authority Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__vaccinationProtocol__authority__identifier__assigner.identifier}]) as Immunization_1559757824302963__vaccination_protocol__authority__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__vaccination_protocol__authority__identifier__assigner__identifier__assigner
#       view_label: "Immunization 1559757824302963: Vaccinationprotocol Authority Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__vaccinationProtocol__authority__identifier__assigner__identifier.assigner}]) as Immunization_1559757824302963__vaccination_protocol__authority__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__vaccination_protocol__authority__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Immunization 1559757824302963: Vaccinationprotocol Authority Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__vaccinationProtocol__authority__identifier__assigner__identifier__assigner__identifier.period}]) as Immunization_1559757824302963__vaccination_protocol__authority__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__vaccination_protocol__authority__identifier__assigner__identifier__assigner__identifier
#       view_label: "Immunization 1559757824302963: Vaccinationprotocol Authority Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__vaccinationProtocol__authority__identifier__assigner__identifier__assigner.identifier}]) as Immunization_1559757824302963__vaccination_protocol__authority__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__vaccination_protocol__authority__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Immunization 1559757824302963: Vaccinationprotocol Authority Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__vaccinationProtocol__authority__identifier__assigner__identifier__assigner__identifier.assigner}]) as Immunization_1559757824302963__vaccination_protocol__authority__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__vaccination_protocol__authority__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Vaccinationprotocol Authority Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__vaccinationProtocol__authority__identifier__assigner__identifier__assigner__identifier__type.coding}) as Immunization_1559757824302963__vaccination_protocol__authority__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__vaccination_protocol__authority__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Immunization 1559757824302963: Vaccinationprotocol Authority Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__vaccinationProtocol__authority__identifier__assigner__identifier__assigner__identifier.type}]) as Immunization_1559757824302963__vaccination_protocol__authority__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__vaccination_protocol__authority__identifier__assigner__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Vaccinationprotocol Authority Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__vaccinationProtocol__authority__identifier__assigner__identifier__type.coding}) as Immunization_1559757824302963__vaccination_protocol__authority__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__vaccination_protocol__authority__identifier__assigner__identifier__type
#       view_label: "Immunization 1559757824302963: Vaccinationprotocol Authority Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__vaccinationProtocol__authority__identifier__assigner__identifier.type}]) as Immunization_1559757824302963__vaccination_protocol__authority__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__vaccination_protocol__authority__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Vaccinationprotocol Authority Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__vaccinationProtocol__authority__identifier__type.coding}) as Immunization_1559757824302963__vaccination_protocol__authority__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__vaccination_protocol__authority__identifier__type
#       view_label: "Immunization 1559757824302963: Vaccinationprotocol Authority Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__vaccinationProtocol__authority__identifier.type}]) as Immunization_1559757824302963__vaccination_protocol__authority__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__vaccination_protocol__target_disease__coding
#       view_label: "Immunization 1559757824302963: Vaccinationprotocol Targetdisease Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__vaccinationProtocol__targetDisease.coding}) as Immunization_1559757824302963__vaccination_protocol__target_disease__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__vaccination_protocol__target_disease
#       view_label: "Immunization 1559757824302963: Vaccinationprotocol Targetdisease"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__vaccinationProtocol.targetDisease}) as Immunization_1559757824302963__vaccination_protocol__target_disease
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__meta
#       view_label: "Immunization 1559757824302963: Meta"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963.meta}]) as Immunization_1559757824302963__meta
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__meta__security
#       view_label: "Immunization 1559757824302963: Meta Security"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__meta.security}) as Immunization_1559757824302963__meta__security
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__meta__tag
#       view_label: "Immunization 1559757824302963: Meta Tag"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__meta.tag}) as Immunization_1559757824302963__meta__tag
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__report_origin__coding
#       view_label: "Immunization 1559757824302963: Reportorigin Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__reportOrigin.coding}) as Immunization_1559757824302963__report_origin__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__report_origin
#       view_label: "Immunization 1559757824302963: Reportorigin"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963.reportOrigin}]) as Immunization_1559757824302963__report_origin
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__location
#       view_label: "Immunization 1559757824302963: Location"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963.location}]) as Immunization_1559757824302963__location
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__location__identifier__period
#       view_label: "Immunization 1559757824302963: Location Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__location__identifier.period}]) as Immunization_1559757824302963__location__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__location__identifier
#       view_label: "Immunization 1559757824302963: Location Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__location.identifier}]) as Immunization_1559757824302963__location__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__location__identifier__assigner
#       view_label: "Immunization 1559757824302963: Location Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__location__identifier.assigner}]) as Immunization_1559757824302963__location__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__location__identifier__assigner__identifier__period
#       view_label: "Immunization 1559757824302963: Location Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__location__identifier__assigner__identifier.period}]) as Immunization_1559757824302963__location__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__location__identifier__assigner__identifier
#       view_label: "Immunization 1559757824302963: Location Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__location__identifier__assigner.identifier}]) as Immunization_1559757824302963__location__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__location__identifier__assigner__identifier__assigner
#       view_label: "Immunization 1559757824302963: Location Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__location__identifier__assigner__identifier.assigner}]) as Immunization_1559757824302963__location__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__location__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Immunization 1559757824302963: Location Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__location__identifier__assigner__identifier__assigner__identifier.period}]) as Immunization_1559757824302963__location__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__location__identifier__assigner__identifier__assigner__identifier
#       view_label: "Immunization 1559757824302963: Location Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__location__identifier__assigner__identifier__assigner.identifier}]) as Immunization_1559757824302963__location__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__location__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Immunization 1559757824302963: Location Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__location__identifier__assigner__identifier__assigner__identifier.assigner}]) as Immunization_1559757824302963__location__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__location__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Location Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__location__identifier__assigner__identifier__assigner__identifier__type.coding}) as Immunization_1559757824302963__location__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__location__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Immunization 1559757824302963: Location Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__location__identifier__assigner__identifier__assigner__identifier.type}]) as Immunization_1559757824302963__location__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__location__identifier__assigner__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Location Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__location__identifier__assigner__identifier__type.coding}) as Immunization_1559757824302963__location__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__location__identifier__assigner__identifier__type
#       view_label: "Immunization 1559757824302963: Location Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__location__identifier__assigner__identifier.type}]) as Immunization_1559757824302963__location__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__location__identifier__type__coding
#       view_label: "Immunization 1559757824302963: Location Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Immunization_1559757824302963__location__identifier__type.coding}) as Immunization_1559757824302963__location__identifier__type__coding
#       relationship: one_to_many
#     - join: Immunization_1559757824302963__location__identifier__type
#       view_label: "Immunization 1559757824302963: Location Identifier Type"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963__location__identifier.type}]) as Immunization_1559757824302963__location__identifier__type
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__explanation
#       view_label: "Immunization 1559757824302963: Explanation"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963.explanation}]) as Immunization_1559757824302963__explanation
#       relationship: one_to_one
#     - join: Immunization_1559757824302963__practitioner
#       view_label: "Immunization 1559757824302963: Practitioner"
#       sql: LEFT JOIN UNNEST([${Immunization_1559757824302963.practitioner}]) as Immunization_1559757824302963__practitioner
#       relationship: one_to_one

# - explore: medication_dispense_1559757824302963
#   joins:
#     - join: MedicationDispense_1559757824302963__note__author__reference
#       view_label: "Medicationdispense 1559757824302963: Note Author Reference"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__note__author.reference}]) as MedicationDispense_1559757824302963__note__author__reference
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__note__author__reference__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Note Author Reference Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__note__author__reference__identifier.period}]) as MedicationDispense_1559757824302963__note__author__reference__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__note__author__reference__identifier
#       view_label: "Medicationdispense 1559757824302963: Note Author Reference Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__note__author__reference.identifier}]) as MedicationDispense_1559757824302963__note__author__reference__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__note__author__reference__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Note Author Reference Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__note__author__reference__identifier.assigner}]) as MedicationDispense_1559757824302963__note__author__reference__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Note Author Reference Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Note Author Reference Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__note__author__reference__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Note Author Reference Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Note Author Reference Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__note__author__reference__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__note__author__reference__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Note Author Reference Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__note__author__reference__identifier__type.coding}) as MedicationDispense_1559757824302963__note__author__reference__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__note__author__reference__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Note Author Reference Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__note__author__reference__identifier.type}]) as MedicationDispense_1559757824302963__note__author__reference__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__note__author
#       view_label: "Medicationdispense 1559757824302963: Note Author"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__note.author}]) as MedicationDispense_1559757824302963__note__author
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__note
#       view_label: "Medicationdispense 1559757824302963: Note"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963.note}) as MedicationDispense_1559757824302963__note
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__part_of
#       view_label: "Medicationdispense 1559757824302963: Partof"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963.partOf}) as MedicationDispense_1559757824302963__part_of
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__part_of__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Partof Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__partOf__identifier.period}]) as MedicationDispense_1559757824302963__part_of__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__part_of__identifier
#       view_label: "Medicationdispense 1559757824302963: Partof Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__partOf.identifier}]) as MedicationDispense_1559757824302963__part_of__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__part_of__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Partof Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__partOf__identifier.assigner}]) as MedicationDispense_1559757824302963__part_of__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__part_of__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Partof Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__partOf__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__part_of__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__part_of__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Partof Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__partOf__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__part_of__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__part_of__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Partof Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__partOf__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__part_of__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Partof Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__partOf__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Partof Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__partOf__identifier__assigner__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Partof Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__partOf__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Partof Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__partOf__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Partof Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__partOf__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__part_of__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Partof Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__partOf__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__part_of__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__part_of__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Partof Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__partOf__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__part_of__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__part_of__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Partof Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__partOf__identifier__type.coding}) as MedicationDispense_1559757824302963__part_of__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__part_of__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Partof Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__partOf__identifier.type}]) as MedicationDispense_1559757824302963__part_of__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__substitution__reason__coding
#       view_label: "Medicationdispense 1559757824302963: Substitution Reason Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__substitution__reason.coding}) as MedicationDispense_1559757824302963__substitution__reason__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__substitution__reason
#       view_label: "Medicationdispense 1559757824302963: Substitution Reason"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__substitution.reason}) as MedicationDispense_1559757824302963__substitution__reason
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__substitution
#       view_label: "Medicationdispense 1559757824302963: Substitution"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963.substitution}]) as MedicationDispense_1559757824302963__substitution
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__substitution__responsible_party
#       view_label: "Medicationdispense 1559757824302963: Substitution Responsibleparty"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__substitution.responsibleParty}) as MedicationDispense_1559757824302963__substitution__responsible_party
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__substitution__responsible_party__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Substitution Responsibleparty Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__substitution__responsibleParty__identifier.period}]) as MedicationDispense_1559757824302963__substitution__responsible_party__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__substitution__responsible_party__identifier
#       view_label: "Medicationdispense 1559757824302963: Substitution Responsibleparty Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__substitution__responsibleParty.identifier}]) as MedicationDispense_1559757824302963__substitution__responsible_party__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__substitution__responsible_party__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Substitution Responsibleparty Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__substitution__responsibleParty__identifier.assigner}]) as MedicationDispense_1559757824302963__substitution__responsible_party__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__substitution__responsible_party__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Substitution Responsibleparty Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__substitution__responsibleParty__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__substitution__responsible_party__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__substitution__responsible_party__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Substitution Responsibleparty Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__substitution__responsibleParty__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__substitution__responsible_party__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__substitution__responsible_party__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Substitution Responsibleparty Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__substitution__responsibleParty__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__substitution__responsible_party__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__substitution__responsible_party__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Substitution Responsibleparty Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__substitution__responsibleParty__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__substitution__responsible_party__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__substitution__responsible_party__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Substitution Responsibleparty Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__substitution__responsibleParty__identifier__assigner__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__substitution__responsible_party__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__substitution__responsible_party__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Substitution Responsibleparty Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__substitution__responsibleParty__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__substitution__responsible_party__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__substitution__responsible_party__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Substitution Responsibleparty Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__substitution__responsibleParty__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__substitution__responsible_party__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__substitution__responsible_party__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Substitution Responsibleparty Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__substitution__responsibleParty__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__substitution__responsible_party__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__substitution__responsible_party__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Substitution Responsibleparty Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__substitution__responsibleParty__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__substitution__responsible_party__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__substitution__responsible_party__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Substitution Responsibleparty Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__substitution__responsibleParty__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__substitution__responsible_party__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__substitution__responsible_party__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Substitution Responsibleparty Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__substitution__responsibleParty__identifier__type.coding}) as MedicationDispense_1559757824302963__substitution__responsible_party__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__substitution__responsible_party__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Substitution Responsibleparty Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__substitution__responsibleParty__identifier.type}]) as MedicationDispense_1559757824302963__substitution__responsible_party__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__substitution__type__coding
#       view_label: "Medicationdispense 1559757824302963: Substitution Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__substitution__type.coding}) as MedicationDispense_1559757824302963__substitution__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__substitution__type
#       view_label: "Medicationdispense 1559757824302963: Substitution Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__substitution.type}]) as MedicationDispense_1559757824302963__substitution__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__subject
#       view_label: "Medicationdispense 1559757824302963: Subject"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963.subject}]) as MedicationDispense_1559757824302963__subject
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__subject__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Subject Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__subject__identifier.period}]) as MedicationDispense_1559757824302963__subject__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__subject__identifier
#       view_label: "Medicationdispense 1559757824302963: Subject Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__subject.identifier}]) as MedicationDispense_1559757824302963__subject__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__subject__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Subject Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__subject__identifier.assigner}]) as MedicationDispense_1559757824302963__subject__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Subject Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__subject__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__subject__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Subject Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__subject__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__subject__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Subject Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__subject__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Subject Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Subject Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__subject__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__subject__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__subject__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Subject Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__subject__identifier__type.coding}) as MedicationDispense_1559757824302963__subject__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__subject__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Subject Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__subject__identifier.type}]) as MedicationDispense_1559757824302963__subject__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__destination
#       view_label: "Medicationdispense 1559757824302963: Destination"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963.destination}]) as MedicationDispense_1559757824302963__destination
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__destination__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Destination Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__destination__identifier.period}]) as MedicationDispense_1559757824302963__destination__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__destination__identifier
#       view_label: "Medicationdispense 1559757824302963: Destination Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__destination.identifier}]) as MedicationDispense_1559757824302963__destination__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__destination__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Destination Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__destination__identifier.assigner}]) as MedicationDispense_1559757824302963__destination__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Destination Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__destination__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__destination__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Destination Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__destination__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__destination__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Destination Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__destination__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Destination Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Destination Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Destination Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Destination Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Destination Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Destination Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Destination Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__destination__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__destination__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__destination__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Destination Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__destination__identifier__type.coding}) as MedicationDispense_1559757824302963__destination__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__destination__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Destination Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__destination__identifier.type}]) as MedicationDispense_1559757824302963__destination__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__type__coding
#       view_label: "Medicationdispense 1559757824302963: Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__type.coding}) as MedicationDispense_1559757824302963__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__type
#       view_label: "Medicationdispense 1559757824302963: Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963.type}]) as MedicationDispense_1559757824302963__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__context
#       view_label: "Medicationdispense 1559757824302963: Context"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963.context}]) as MedicationDispense_1559757824302963__context
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__context__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Context Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__context__identifier.period}]) as MedicationDispense_1559757824302963__context__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__context__identifier
#       view_label: "Medicationdispense 1559757824302963: Context Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__context.identifier}]) as MedicationDispense_1559757824302963__context__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__context__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Context Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__context__identifier.assigner}]) as MedicationDispense_1559757824302963__context__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__context__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Context Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__context__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__context__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__context__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Context Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__context__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__context__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__context__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Context Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__context__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__context__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__context__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__context__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__context__identifier__assigner__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__context__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__context__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__context__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__context__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Context Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__context__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__context__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__context__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Context Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__context__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__context__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__context__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Context Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__context__identifier__type.coding}) as MedicationDispense_1559757824302963__context__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__context__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Context Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__context__identifier.type}]) as MedicationDispense_1559757824302963__context__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__text
#       view_label: "Medicationdispense 1559757824302963: Text"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963.text}]) as MedicationDispense_1559757824302963__text
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__authorizing_prescription
#       view_label: "Medicationdispense 1559757824302963: Authorizingprescription"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963.authorizingPrescription}) as MedicationDispense_1559757824302963__authorizing_prescription
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__authorizing_prescription__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Authorizingprescription Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__authorizingPrescription__identifier.period}]) as MedicationDispense_1559757824302963__authorizing_prescription__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__authorizing_prescription__identifier
#       view_label: "Medicationdispense 1559757824302963: Authorizingprescription Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__authorizingPrescription.identifier}]) as MedicationDispense_1559757824302963__authorizing_prescription__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__authorizing_prescription__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Authorizingprescription Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__authorizingPrescription__identifier.assigner}]) as MedicationDispense_1559757824302963__authorizing_prescription__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__authorizing_prescription__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Authorizingprescription Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__authorizingPrescription__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__authorizing_prescription__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__authorizing_prescription__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Authorizingprescription Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__authorizingPrescription__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__authorizing_prescription__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__authorizing_prescription__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Authorizingprescription Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__authorizingPrescription__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__authorizing_prescription__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__authorizing_prescription__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Authorizingprescription Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__authorizingPrescription__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__authorizing_prescription__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__authorizing_prescription__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Authorizingprescription Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__authorizingPrescription__identifier__assigner__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__authorizing_prescription__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__authorizing_prescription__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Authorizingprescription Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__authorizingPrescription__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__authorizing_prescription__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__authorizing_prescription__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Authorizingprescription Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__authorizingPrescription__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__authorizing_prescription__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__authorizing_prescription__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Authorizingprescription Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__authorizingPrescription__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__authorizing_prescription__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__authorizing_prescription__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Authorizingprescription Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__authorizingPrescription__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__authorizing_prescription__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__authorizing_prescription__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Authorizingprescription Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__authorizingPrescription__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__authorizing_prescription__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__authorizing_prescription__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Authorizingprescription Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__authorizingPrescription__identifier__type.coding}) as MedicationDispense_1559757824302963__authorizing_prescription__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__authorizing_prescription__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Authorizingprescription Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__authorizingPrescription__identifier.type}]) as MedicationDispense_1559757824302963__authorizing_prescription__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__identifier.period}]) as MedicationDispense_1559757824302963__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__identifier
#       view_label: "Medicationdispense 1559757824302963: Identifier"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963.identifier}) as MedicationDispense_1559757824302963__identifier
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__identifier.assigner}]) as MedicationDispense_1559757824302963__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__identifier__assigner__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__identifier__type.coding}) as MedicationDispense_1559757824302963__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__identifier.type}]) as MedicationDispense_1559757824302963__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__actor
#       view_label: "Medicationdispense 1559757824302963: Performer Actor"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer.actor}]) as MedicationDispense_1559757824302963__performer__actor
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__actor__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Performer Actor Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__actor__identifier.period}]) as MedicationDispense_1559757824302963__performer__actor__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__actor__identifier
#       view_label: "Medicationdispense 1559757824302963: Performer Actor Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__actor.identifier}]) as MedicationDispense_1559757824302963__performer__actor__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__actor__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Performer Actor Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__actor__identifier.assigner}]) as MedicationDispense_1559757824302963__performer__actor__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Performer Actor Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Performer Actor Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__actor__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Performer Actor Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Performer Actor Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Performer Actor Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Performer Actor Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Performer Actor Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Performer Actor Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Performer Actor Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Performer Actor Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__performer__actor__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__actor__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Performer Actor Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__performer__actor__identifier__type.coding}) as MedicationDispense_1559757824302963__performer__actor__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__performer__actor__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Performer Actor Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__actor__identifier.type}]) as MedicationDispense_1559757824302963__performer__actor__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__on_behalf_of
#       view_label: "Medicationdispense 1559757824302963: Performer Onbehalfof"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer.onBehalfOf}]) as MedicationDispense_1559757824302963__performer__on_behalf_of
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Performer Onbehalfof Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__onBehalfOf__identifier.period}]) as MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__on_behalf_of__identifier
#       view_label: "Medicationdispense 1559757824302963: Performer Onbehalfof Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__onBehalfOf.identifier}]) as MedicationDispense_1559757824302963__performer__on_behalf_of__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Performer Onbehalfof Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__onBehalfOf__identifier.assigner}]) as MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Performer Onbehalfof Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__onBehalfOf__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Performer Onbehalfof Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__onBehalfOf__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Performer Onbehalfof Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__onBehalfOf__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Performer Onbehalfof Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__onBehalfOf__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Performer Onbehalfof Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__onBehalfOf__identifier__assigner__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Performer Onbehalfof Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__onBehalfOf__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Performer Onbehalfof Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__performer__onBehalfOf__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Performer Onbehalfof Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__onBehalfOf__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Performer Onbehalfof Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__performer__onBehalfOf__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Performer Onbehalfof Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__onBehalfOf__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Performer Onbehalfof Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__performer__onBehalfOf__identifier__type.coding}) as MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Performer Onbehalfof Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__performer__onBehalfOf__identifier.type}]) as MedicationDispense_1559757824302963__performer__on_behalf_of__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__quantity
#       view_label: "Medicationdispense 1559757824302963: Quantity"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963.quantity}]) as MedicationDispense_1559757824302963__quantity
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__detected_issue
#       view_label: "Medicationdispense 1559757824302963: Detectedissue"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963.detectedIssue}) as MedicationDispense_1559757824302963__detected_issue
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__detected_issue__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Detectedissue Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__detectedIssue__identifier.period}]) as MedicationDispense_1559757824302963__detected_issue__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__detected_issue__identifier
#       view_label: "Medicationdispense 1559757824302963: Detectedissue Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__detectedIssue.identifier}]) as MedicationDispense_1559757824302963__detected_issue__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__detected_issue__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Detectedissue Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__detectedIssue__identifier.assigner}]) as MedicationDispense_1559757824302963__detected_issue__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__detected_issue__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Detectedissue Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__detectedIssue__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__detected_issue__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__detected_issue__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Detectedissue Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__detectedIssue__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__detected_issue__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__detected_issue__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Detectedissue Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__detectedIssue__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__detected_issue__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__detected_issue__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Detectedissue Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__detectedIssue__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__detected_issue__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__detected_issue__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Detectedissue Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__detectedIssue__identifier__assigner__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__detected_issue__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__detected_issue__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Detectedissue Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__detectedIssue__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__detected_issue__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__detected_issue__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Detectedissue Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__detectedIssue__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__detected_issue__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__detected_issue__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Detectedissue Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__detectedIssue__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__detected_issue__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__detected_issue__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Detectedissue Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__detectedIssue__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__detected_issue__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__detected_issue__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Detectedissue Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__detectedIssue__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__detected_issue__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__detected_issue__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Detectedissue Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__detectedIssue__identifier__type.coding}) as MedicationDispense_1559757824302963__detected_issue__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__detected_issue__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Detectedissue Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__detectedIssue__identifier.type}]) as MedicationDispense_1559757824302963__detected_issue__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__receiver
#       view_label: "Medicationdispense 1559757824302963: Receiver"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963.receiver}) as MedicationDispense_1559757824302963__receiver
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__receiver__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Receiver Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__receiver__identifier.period}]) as MedicationDispense_1559757824302963__receiver__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__receiver__identifier
#       view_label: "Medicationdispense 1559757824302963: Receiver Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__receiver.identifier}]) as MedicationDispense_1559757824302963__receiver__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__receiver__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Receiver Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__receiver__identifier.assigner}]) as MedicationDispense_1559757824302963__receiver__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Receiver Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Receiver Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__receiver__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Receiver Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Receiver Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Receiver Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Receiver Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Receiver Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Receiver Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Receiver Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Receiver Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__receiver__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__receiver__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Receiver Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__receiver__identifier__type.coding}) as MedicationDispense_1559757824302963__receiver__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__receiver__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Receiver Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__receiver__identifier.type}]) as MedicationDispense_1559757824302963__receiver__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__days_supply
#       view_label: "Medicationdispense 1559757824302963: Dayssupply"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963.daysSupply}]) as MedicationDispense_1559757824302963__days_supply
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__supporting_information
#       view_label: "Medicationdispense 1559757824302963: Supportinginformation"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963.supportingInformation}) as MedicationDispense_1559757824302963__supporting_information
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__supporting_information__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Supportinginformation Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__supportingInformation__identifier.period}]) as MedicationDispense_1559757824302963__supporting_information__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__supporting_information__identifier
#       view_label: "Medicationdispense 1559757824302963: Supportinginformation Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__supportingInformation.identifier}]) as MedicationDispense_1559757824302963__supporting_information__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__supporting_information__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Supportinginformation Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__supportingInformation__identifier.assigner}]) as MedicationDispense_1559757824302963__supporting_information__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__supporting_information__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Supportinginformation Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__supportingInformation__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__supporting_information__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__supporting_information__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Supportinginformation Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__supportingInformation__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__supporting_information__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__supporting_information__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Supportinginformation Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__supportingInformation__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__supporting_information__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__supporting_information__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Supportinginformation Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__supportingInformation__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__supporting_information__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__supporting_information__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Supportinginformation Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__supportingInformation__identifier__assigner__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__supporting_information__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__supporting_information__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Supportinginformation Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__supportingInformation__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__supporting_information__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__supporting_information__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Supportinginformation Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__supportingInformation__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__supporting_information__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__supporting_information__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Supportinginformation Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__supportingInformation__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__supporting_information__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__supporting_information__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Supportinginformation Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__supportingInformation__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__supporting_information__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__supporting_information__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Supportinginformation Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__supportingInformation__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__supporting_information__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__supporting_information__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Supportinginformation Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__supportingInformation__identifier__type.coding}) as MedicationDispense_1559757824302963__supporting_information__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__supporting_information__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Supportinginformation Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__supportingInformation__identifier.type}]) as MedicationDispense_1559757824302963__supporting_information__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__medication__reference
#       view_label: "Medicationdispense 1559757824302963: Medication Reference"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__medication.reference}]) as MedicationDispense_1559757824302963__medication__reference
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__medication__reference__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Medication Reference Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__medication__reference__identifier.period}]) as MedicationDispense_1559757824302963__medication__reference__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__medication__reference__identifier
#       view_label: "Medicationdispense 1559757824302963: Medication Reference Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__medication__reference.identifier}]) as MedicationDispense_1559757824302963__medication__reference__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__medication__reference__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Medication Reference Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__medication__reference__identifier.assigner}]) as MedicationDispense_1559757824302963__medication__reference__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Medication Reference Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Medication Reference Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__medication__reference__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Medication Reference Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Medication Reference Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Medication Reference Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Medication Reference Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Medication Reference Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Medication Reference Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Medication Reference Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Medication Reference Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__medication__reference__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__medication__reference__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Medication Reference Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__medication__reference__identifier__type.coding}) as MedicationDispense_1559757824302963__medication__reference__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__medication__reference__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Medication Reference Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__medication__reference__identifier.type}]) as MedicationDispense_1559757824302963__medication__reference__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__medication__codeable_concept__coding
#       view_label: "Medicationdispense 1559757824302963: Medication Codeableconcept Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__medication__codeableConcept.coding}) as MedicationDispense_1559757824302963__medication__codeable_concept__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__medication__codeable_concept
#       view_label: "Medicationdispense 1559757824302963: Medication Codeableconcept"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__medication.codeableConcept}]) as MedicationDispense_1559757824302963__medication__codeable_concept
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__max_dose_per_lifetime
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Maxdoseperlifetime"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction.maxDosePerLifetime}]) as MedicationDispense_1559757824302963__dosage_instruction__max_dose_per_lifetime
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__additional_instruction__coding
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Additionalinstruction Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__dosageInstruction__additionalInstruction.coding}) as MedicationDispense_1559757824302963__dosage_instruction__additional_instruction__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__dosage_instruction__additional_instruction
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Additionalinstruction"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__dosageInstruction.additionalInstruction}) as MedicationDispense_1559757824302963__dosage_instruction__additional_instruction
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__dosage_instruction__method__coding
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Method Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__dosageInstruction__method.coding}) as MedicationDispense_1559757824302963__dosage_instruction__method__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__dosage_instruction__method
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Method"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction.method}]) as MedicationDispense_1559757824302963__dosage_instruction__method
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__timing__code__coding
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Timing Code Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__dosageInstruction__timing__code.coding}) as MedicationDispense_1559757824302963__dosage_instruction__timing__code__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__dosage_instruction__timing__code
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Timing Code"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction__timing.code}]) as MedicationDispense_1559757824302963__dosage_instruction__timing__code
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__timing__repeat
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Timing Repeat"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction__timing.repeat}]) as MedicationDispense_1559757824302963__dosage_instruction__timing__repeat
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__timing__repeat__bounds__duration
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Timing Repeat Bounds Duration"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction__timing__repeat__bounds.duration}]) as MedicationDispense_1559757824302963__dosage_instruction__timing__repeat__bounds__duration
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__timing__repeat__bounds__period
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Timing Repeat Bounds Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction__timing__repeat__bounds.period}]) as MedicationDispense_1559757824302963__dosage_instruction__timing__repeat__bounds__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__timing__repeat__bounds__range__high
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Timing Repeat Bounds `range` High"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction__timing__repeat__bounds__`range`.high}]) as MedicationDispense_1559757824302963__dosage_instruction__timing__repeat__bounds__range__high
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__timing__repeat__bounds__range__low
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Timing Repeat Bounds `range` Low"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction__timing__repeat__bounds__`range`.low}]) as MedicationDispense_1559757824302963__dosage_instruction__timing__repeat__bounds__range__low
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__timing
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Timing"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction.timing}]) as MedicationDispense_1559757824302963__dosage_instruction__timing
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__as_needed
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Asneeded"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction.asNeeded}]) as MedicationDispense_1559757824302963__dosage_instruction__as_needed
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__as_needed__codeable_concept__coding
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Asneeded Codeableconcept Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__dosageInstruction__asNeeded__codeableConcept.coding}) as MedicationDispense_1559757824302963__dosage_instruction__as_needed__codeable_concept__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__dosage_instruction__as_needed__codeable_concept
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Asneeded Codeableconcept"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction__asNeeded.codeableConcept}]) as MedicationDispense_1559757824302963__dosage_instruction__as_needed__codeable_concept
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963.dosageInstruction}) as MedicationDispense_1559757824302963__dosage_instruction
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__dosage_instruction__site__coding
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Site Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__dosageInstruction__site.coding}) as MedicationDispense_1559757824302963__dosage_instruction__site__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__dosage_instruction__site
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Site"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction.site}]) as MedicationDispense_1559757824302963__dosage_instruction__site
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__dose__quantity
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Dose Quantity"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction__dose.quantity}]) as MedicationDispense_1559757824302963__dosage_instruction__dose__quantity
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__dose__range__high
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Dose `range` High"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction__dose__`range`.high}]) as MedicationDispense_1559757824302963__dosage_instruction__dose__range__high
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__dose__range__low
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Dose `range` Low"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction__dose__`range`.low}]) as MedicationDispense_1559757824302963__dosage_instruction__dose__range__low
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__route__coding
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Route Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__dosageInstruction__route.coding}) as MedicationDispense_1559757824302963__dosage_instruction__route__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__dosage_instruction__route
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Route"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction.route}]) as MedicationDispense_1559757824302963__dosage_instruction__route
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__rate__quantity
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Rate Quantity"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction__rate.quantity}]) as MedicationDispense_1559757824302963__dosage_instruction__rate__quantity
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__rate__range__high
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Rate `range` High"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction__rate__`range`.high}]) as MedicationDispense_1559757824302963__dosage_instruction__rate__range__high
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__rate__range__low
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Rate `range` Low"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction__rate__`range`.low}]) as MedicationDispense_1559757824302963__dosage_instruction__rate__range__low
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__rate__ratio__numerator
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Rate Ratio Numerator"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction__rate__ratio.numerator}]) as MedicationDispense_1559757824302963__dosage_instruction__rate__ratio__numerator
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__rate__ratio__denominator
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Rate Ratio Denominator"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction__rate__ratio.denominator}]) as MedicationDispense_1559757824302963__dosage_instruction__rate__ratio__denominator
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__max_dose_per_period__numerator
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Maxdoseperperiod Numerator"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction__maxDosePerPeriod.numerator}]) as MedicationDispense_1559757824302963__dosage_instruction__max_dose_per_period__numerator
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__max_dose_per_period__denominator
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Maxdoseperperiod Denominator"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction__maxDosePerPeriod.denominator}]) as MedicationDispense_1559757824302963__dosage_instruction__max_dose_per_period__denominator
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__max_dose_per_administration
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Maxdoseperadministration"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction.maxDosePerAdministration}]) as MedicationDispense_1559757824302963__dosage_instruction__max_dose_per_administration
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__meta
#       view_label: "Medicationdispense 1559757824302963: Meta"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963.meta}]) as MedicationDispense_1559757824302963__meta
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__meta__security
#       view_label: "Medicationdispense 1559757824302963: Meta Security"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__meta.security}) as MedicationDispense_1559757824302963__meta__security
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__meta__tag
#       view_label: "Medicationdispense 1559757824302963: Meta Tag"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__meta.tag}) as MedicationDispense_1559757824302963__meta__tag
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__event_history
#       view_label: "Medicationdispense 1559757824302963: Eventhistory"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963.eventHistory}) as MedicationDispense_1559757824302963__event_history
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__event_history__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Eventhistory Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__eventHistory__identifier.period}]) as MedicationDispense_1559757824302963__event_history__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__event_history__identifier
#       view_label: "Medicationdispense 1559757824302963: Eventhistory Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__eventHistory.identifier}]) as MedicationDispense_1559757824302963__event_history__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__event_history__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Eventhistory Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__eventHistory__identifier.assigner}]) as MedicationDispense_1559757824302963__event_history__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__event_history__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Eventhistory Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__eventHistory__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__event_history__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__event_history__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Eventhistory Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__eventHistory__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__event_history__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__event_history__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Eventhistory Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__eventHistory__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__event_history__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__event_history__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Eventhistory Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__eventHistory__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__event_history__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__event_history__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Eventhistory Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__eventHistory__identifier__assigner__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__event_history__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__event_history__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Eventhistory Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__eventHistory__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__event_history__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__event_history__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Eventhistory Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__eventHistory__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__event_history__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__event_history__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Eventhistory Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__eventHistory__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__event_history__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__event_history__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Eventhistory Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__eventHistory__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__event_history__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__event_history__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Eventhistory Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__eventHistory__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__event_history__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__event_history__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Eventhistory Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__eventHistory__identifier__type.coding}) as MedicationDispense_1559757824302963__event_history__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__event_history__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Eventhistory Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__eventHistory__identifier.type}]) as MedicationDispense_1559757824302963__event_history__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__not_done_reason__reference
#       view_label: "Medicationdispense 1559757824302963: Notdonereason Reference"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__notDoneReason.reference}]) as MedicationDispense_1559757824302963__not_done_reason__reference
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__not_done_reason__reference__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Notdonereason Reference Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__notDoneReason__reference__identifier.period}]) as MedicationDispense_1559757824302963__not_done_reason__reference__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__not_done_reason__reference__identifier
#       view_label: "Medicationdispense 1559757824302963: Notdonereason Reference Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__notDoneReason__reference.identifier}]) as MedicationDispense_1559757824302963__not_done_reason__reference__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__not_done_reason__reference__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Notdonereason Reference Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__notDoneReason__reference__identifier.assigner}]) as MedicationDispense_1559757824302963__not_done_reason__reference__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__not_done_reason__reference__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Notdonereason Reference Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__notDoneReason__reference__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__not_done_reason__reference__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__not_done_reason__reference__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Notdonereason Reference Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__notDoneReason__reference__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__not_done_reason__reference__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__not_done_reason__reference__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Notdonereason Reference Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__notDoneReason__reference__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__not_done_reason__reference__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__not_done_reason__reference__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationdispense 1559757824302963: Notdonereason Reference Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__notDoneReason__reference__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationDispense_1559757824302963__not_done_reason__reference__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__not_done_reason__reference__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationdispense 1559757824302963: Notdonereason Reference Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__notDoneReason__reference__identifier__assigner__identifier__assigner.identifier}]) as MedicationDispense_1559757824302963__not_done_reason__reference__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__not_done_reason__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationdispense 1559757824302963: Notdonereason Reference Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__notDoneReason__reference__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationDispense_1559757824302963__not_done_reason__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__not_done_reason__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Notdonereason Reference Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__notDoneReason__reference__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__not_done_reason__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__not_done_reason__reference__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Notdonereason Reference Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__notDoneReason__reference__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__not_done_reason__reference__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__not_done_reason__reference__identifier__assigner__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Notdonereason Reference Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__notDoneReason__reference__identifier__assigner__identifier__type.coding}) as MedicationDispense_1559757824302963__not_done_reason__reference__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__not_done_reason__reference__identifier__assigner__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Notdonereason Reference Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__notDoneReason__reference__identifier__assigner__identifier.type}]) as MedicationDispense_1559757824302963__not_done_reason__reference__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__not_done_reason__reference__identifier__type__coding
#       view_label: "Medicationdispense 1559757824302963: Notdonereason Reference Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__notDoneReason__reference__identifier__type.coding}) as MedicationDispense_1559757824302963__not_done_reason__reference__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__not_done_reason__reference__identifier__type
#       view_label: "Medicationdispense 1559757824302963: Notdonereason Reference Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__notDoneReason__reference__identifier.type}]) as MedicationDispense_1559757824302963__not_done_reason__reference__identifier__type
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__not_done_reason__codeable_concept__coding
#       view_label: "Medicationdispense 1559757824302963: Notdonereason Codeableconcept Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__notDoneReason__codeableConcept.coding}) as MedicationDispense_1559757824302963__not_done_reason__codeable_concept__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__not_done_reason__codeable_concept
#       view_label: "Medicationdispense 1559757824302963: Notdonereason Codeableconcept"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__notDoneReason.codeableConcept}]) as MedicationDispense_1559757824302963__not_done_reason__codeable_concept
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__category__coding
#       view_label: "Medicationdispense 1559757824302963: Category Coding"
#       sql: LEFT JOIN UNNEST(${MedicationDispense_1559757824302963__category.coding}) as MedicationDispense_1559757824302963__category__coding
#       relationship: one_to_many
#     - join: MedicationDispense_1559757824302963__category
#       view_label: "Medicationdispense 1559757824302963: Category"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963.category}]) as MedicationDispense_1559757824302963__category
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__performer
#       view_label: "Medicationdispense 1559757824302963: Performer"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963.performer}]) as MedicationDispense_1559757824302963__performer
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__medication
#       view_label: "Medicationdispense 1559757824302963: Medication"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963.medication}]) as MedicationDispense_1559757824302963__medication
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__timing__repeat__bounds
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Timing Repeat Bounds"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction__timing__repeat.bounds}]) as MedicationDispense_1559757824302963__dosage_instruction__timing__repeat__bounds
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__timing__repeat__bounds__range
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Timing Repeat Bounds `range`"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction__timing__repeat__bounds.`range`}]) as MedicationDispense_1559757824302963__dosage_instruction__timing__repeat__bounds__range
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__dose
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Dose"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction.dose}]) as MedicationDispense_1559757824302963__dosage_instruction__dose
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__dose__range
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Dose `range`"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction__dose.`range`}]) as MedicationDispense_1559757824302963__dosage_instruction__dose__range
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__rate
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Rate"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction.rate}]) as MedicationDispense_1559757824302963__dosage_instruction__rate
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__rate__range
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Rate `range`"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction__rate.`range`}]) as MedicationDispense_1559757824302963__dosage_instruction__rate__range
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__rate__ratio
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Rate Ratio"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction__rate.ratio}]) as MedicationDispense_1559757824302963__dosage_instruction__rate__ratio
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__dosage_instruction__max_dose_per_period
#       view_label: "Medicationdispense 1559757824302963: Dosageinstruction Maxdoseperperiod"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963__dosageInstruction.maxDosePerPeriod}]) as MedicationDispense_1559757824302963__dosage_instruction__max_dose_per_period
#       relationship: one_to_one
#     - join: MedicationDispense_1559757824302963__not_done_reason
#       view_label: "Medicationdispense 1559757824302963: Notdonereason"
#       sql: LEFT JOIN UNNEST([${MedicationDispense_1559757824302963.notDoneReason}]) as MedicationDispense_1559757824302963__not_done_reason
#       relationship: one_to_one

# - explore: medication_request_1559757824302963
#   joins:
#     - join: MedicationRequest_1559757824302963__note__author__reference
#       view_label: "Medicationrequest 1559757824302963: Note Author Reference"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__note__author.reference}]) as MedicationRequest_1559757824302963__note__author__reference
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__note__author__reference__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Note Author Reference Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__note__author__reference__identifier.period}]) as MedicationRequest_1559757824302963__note__author__reference__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__note__author__reference__identifier
#       view_label: "Medicationrequest 1559757824302963: Note Author Reference Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__note__author__reference.identifier}]) as MedicationRequest_1559757824302963__note__author__reference__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__note__author__reference__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Note Author Reference Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__note__author__reference__identifier.assigner}]) as MedicationRequest_1559757824302963__note__author__reference__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Note Author Reference Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Note Author Reference Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__note__author__reference__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Note Author Reference Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Note Author Reference Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__note__author__reference__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__note__author__reference__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Note Author Reference Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__note__author__reference__identifier__type.coding}) as MedicationRequest_1559757824302963__note__author__reference__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__note__author__reference__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Note Author Reference Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__note__author__reference__identifier.type}]) as MedicationRequest_1559757824302963__note__author__reference__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__note__author
#       view_label: "Medicationrequest 1559757824302963: Note Author"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__note.author}]) as MedicationRequest_1559757824302963__note__author
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__note
#       view_label: "Medicationrequest 1559757824302963: Note"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963.note}) as MedicationRequest_1559757824302963__note
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__substitution__reason__coding
#       view_label: "Medicationrequest 1559757824302963: Substitution Reason Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__substitution__reason.coding}) as MedicationRequest_1559757824302963__substitution__reason__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__substitution__reason
#       view_label: "Medicationrequest 1559757824302963: Substitution Reason"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__substitution.reason}]) as MedicationRequest_1559757824302963__substitution__reason
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__substitution
#       view_label: "Medicationrequest 1559757824302963: Substitution"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963.substitution}]) as MedicationRequest_1559757824302963__substitution
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__prior_prescription
#       view_label: "Medicationrequest 1559757824302963: Priorprescription"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963.priorPrescription}]) as MedicationRequest_1559757824302963__prior_prescription
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__prior_prescription__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Priorprescription Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__priorPrescription__identifier.period}]) as MedicationRequest_1559757824302963__prior_prescription__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__prior_prescription__identifier
#       view_label: "Medicationrequest 1559757824302963: Priorprescription Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__priorPrescription.identifier}]) as MedicationRequest_1559757824302963__prior_prescription__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__prior_prescription__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Priorprescription Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__priorPrescription__identifier.assigner}]) as MedicationRequest_1559757824302963__prior_prescription__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__prior_prescription__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Priorprescription Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__priorPrescription__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__prior_prescription__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__prior_prescription__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Priorprescription Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__priorPrescription__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__prior_prescription__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__prior_prescription__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Priorprescription Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__priorPrescription__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__prior_prescription__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__prior_prescription__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Priorprescription Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__priorPrescription__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__prior_prescription__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__prior_prescription__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Priorprescription Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__priorPrescription__identifier__assigner__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__prior_prescription__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__prior_prescription__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Priorprescription Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__priorPrescription__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__prior_prescription__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__prior_prescription__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Priorprescription Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__priorPrescription__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__prior_prescription__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__prior_prescription__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Priorprescription Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__priorPrescription__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__prior_prescription__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__prior_prescription__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Priorprescription Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__priorPrescription__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__prior_prescription__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__prior_prescription__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Priorprescription Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__priorPrescription__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__prior_prescription__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__prior_prescription__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Priorprescription Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__priorPrescription__identifier__type.coding}) as MedicationRequest_1559757824302963__prior_prescription__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__prior_prescription__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Priorprescription Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__priorPrescription__identifier.type}]) as MedicationRequest_1559757824302963__prior_prescription__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__subject
#       view_label: "Medicationrequest 1559757824302963: Subject"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963.subject}]) as MedicationRequest_1559757824302963__subject
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__subject__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Subject Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__subject__identifier.period}]) as MedicationRequest_1559757824302963__subject__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__subject__identifier
#       view_label: "Medicationrequest 1559757824302963: Subject Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__subject.identifier}]) as MedicationRequest_1559757824302963__subject__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__subject__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Subject Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__subject__identifier.assigner}]) as MedicationRequest_1559757824302963__subject__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Subject Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__subject__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__subject__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Subject Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__subject__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__subject__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Subject Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__subject__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Subject Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Subject Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__subject__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__subject__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__subject__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Subject Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__subject__identifier__type.coding}) as MedicationRequest_1559757824302963__subject__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__subject__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Subject Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__subject__identifier.type}]) as MedicationRequest_1559757824302963__subject__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__reason_reference
#       view_label: "Medicationrequest 1559757824302963: Reasonreference"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963.reasonReference}) as MedicationRequest_1559757824302963__reason_reference
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__reason_reference__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Reasonreference Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__reasonReference__identifier.period}]) as MedicationRequest_1559757824302963__reason_reference__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__reason_reference__identifier
#       view_label: "Medicationrequest 1559757824302963: Reasonreference Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__reasonReference.identifier}]) as MedicationRequest_1559757824302963__reason_reference__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__reason_reference__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Reasonreference Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__reasonReference__identifier.assigner}]) as MedicationRequest_1559757824302963__reason_reference__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__reason_reference__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Reasonreference Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__reasonReference__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__reason_reference__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__reason_reference__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Reasonreference Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__reasonReference__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__reason_reference__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__reason_reference__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Reasonreference Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__reasonReference__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__reason_reference__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Reasonreference Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__reasonReference__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Reasonreference Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__reasonReference__identifier__assigner__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Reasonreference Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__reasonReference__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Reasonreference Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__reasonReference__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Reasonreference Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__reasonReference__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__reason_reference__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Reasonreference Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__reasonReference__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__reason_reference__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__reason_reference__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Reasonreference Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__reasonReference__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__reason_reference__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__reason_reference__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Reasonreference Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__reasonReference__identifier__type.coding}) as MedicationRequest_1559757824302963__reason_reference__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__reason_reference__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Reasonreference Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__reasonReference__identifier.type}]) as MedicationRequest_1559757824302963__reason_reference__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dispense_request__validity_period
#       view_label: "Medicationrequest 1559757824302963: Dispenserequest Validityperiod"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dispenseRequest.validityPeriod}]) as MedicationRequest_1559757824302963__dispense_request__validity_period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dispense_request__performer
#       view_label: "Medicationrequest 1559757824302963: Dispenserequest Performer"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dispenseRequest.performer}]) as MedicationRequest_1559757824302963__dispense_request__performer
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dispense_request__performer__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Dispenserequest Performer Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dispenseRequest__performer__identifier.period}]) as MedicationRequest_1559757824302963__dispense_request__performer__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dispense_request__performer__identifier
#       view_label: "Medicationrequest 1559757824302963: Dispenserequest Performer Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dispenseRequest__performer.identifier}]) as MedicationRequest_1559757824302963__dispense_request__performer__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dispense_request__performer__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Dispenserequest Performer Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dispenseRequest__performer__identifier.assigner}]) as MedicationRequest_1559757824302963__dispense_request__performer__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dispense_request__performer__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Dispenserequest Performer Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dispenseRequest__performer__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__dispense_request__performer__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dispense_request__performer__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Dispenserequest Performer Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dispenseRequest__performer__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__dispense_request__performer__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dispense_request__performer__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Dispenserequest Performer Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dispenseRequest__performer__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__dispense_request__performer__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dispense_request__performer__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Dispenserequest Performer Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dispenseRequest__performer__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__dispense_request__performer__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dispense_request__performer__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Dispenserequest Performer Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dispenseRequest__performer__identifier__assigner__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__dispense_request__performer__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dispense_request__performer__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Dispenserequest Performer Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dispenseRequest__performer__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__dispense_request__performer__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dispense_request__performer__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Dispenserequest Performer Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__dispenseRequest__performer__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__dispense_request__performer__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__dispense_request__performer__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Dispenserequest Performer Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dispenseRequest__performer__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__dispense_request__performer__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dispense_request__performer__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Dispenserequest Performer Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__dispenseRequest__performer__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__dispense_request__performer__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__dispense_request__performer__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Dispenserequest Performer Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dispenseRequest__performer__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__dispense_request__performer__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dispense_request__performer__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Dispenserequest Performer Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__dispenseRequest__performer__identifier__type.coding}) as MedicationRequest_1559757824302963__dispense_request__performer__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__dispense_request__performer__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Dispenserequest Performer Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dispenseRequest__performer__identifier.type}]) as MedicationRequest_1559757824302963__dispense_request__performer__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dispense_request__quantity
#       view_label: "Medicationrequest 1559757824302963: Dispenserequest Quantity"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dispenseRequest.quantity}]) as MedicationRequest_1559757824302963__dispense_request__quantity
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dispense_request
#       view_label: "Medicationrequest 1559757824302963: Dispenserequest"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963.dispenseRequest}]) as MedicationRequest_1559757824302963__dispense_request
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dispense_request__expected_supply_duration
#       view_label: "Medicationrequest 1559757824302963: Dispenserequest Expectedsupplyduration"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dispenseRequest.expectedSupplyDuration}]) as MedicationRequest_1559757824302963__dispense_request__expected_supply_duration
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__context
#       view_label: "Medicationrequest 1559757824302963: Context"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963.context}]) as MedicationRequest_1559757824302963__context
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__context__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Context Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__context__identifier.period}]) as MedicationRequest_1559757824302963__context__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__context__identifier
#       view_label: "Medicationrequest 1559757824302963: Context Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__context.identifier}]) as MedicationRequest_1559757824302963__context__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__context__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Context Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__context__identifier.assigner}]) as MedicationRequest_1559757824302963__context__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__context__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Context Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__context__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__context__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__context__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Context Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__context__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__context__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__context__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Context Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__context__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__context__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__context__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__context__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__context__identifier__assigner__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__context__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__context__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__context__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__context__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Context Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__context__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__context__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__context__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Context Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__context__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__context__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__context__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Context Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__context__identifier__type.coding}) as MedicationRequest_1559757824302963__context__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__context__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Context Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__context__identifier.type}]) as MedicationRequest_1559757824302963__context__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__definition
#       view_label: "Medicationrequest 1559757824302963: Definition"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963.definition}) as MedicationRequest_1559757824302963__definition
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__definition__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Definition Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__definition__identifier.period}]) as MedicationRequest_1559757824302963__definition__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__definition__identifier
#       view_label: "Medicationrequest 1559757824302963: Definition Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__definition.identifier}]) as MedicationRequest_1559757824302963__definition__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__definition__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Definition Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__definition__identifier.assigner}]) as MedicationRequest_1559757824302963__definition__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Definition Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__definition__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__definition__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Definition Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__definition__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__definition__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Definition Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__definition__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Definition Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Definition Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Definition Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Definition Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Definition Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Definition Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Definition Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__definition__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__definition__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__definition__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Definition Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__definition__identifier__type.coding}) as MedicationRequest_1559757824302963__definition__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__definition__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Definition Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__definition__identifier.type}]) as MedicationRequest_1559757824302963__definition__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__reason_code__coding
#       view_label: "Medicationrequest 1559757824302963: Reasoncode Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__reasonCode.coding}) as MedicationRequest_1559757824302963__reason_code__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__reason_code
#       view_label: "Medicationrequest 1559757824302963: Reasoncode"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963.reasonCode}) as MedicationRequest_1559757824302963__reason_code
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__text
#       view_label: "Medicationrequest 1559757824302963: Text"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963.text}]) as MedicationRequest_1559757824302963__text
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__based_on
#       view_label: "Medicationrequest 1559757824302963: Basedon"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963.basedOn}) as MedicationRequest_1559757824302963__based_on
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__based_on__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Basedon Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__basedOn__identifier.period}]) as MedicationRequest_1559757824302963__based_on__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__based_on__identifier
#       view_label: "Medicationrequest 1559757824302963: Basedon Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__basedOn.identifier}]) as MedicationRequest_1559757824302963__based_on__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__based_on__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Basedon Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__basedOn__identifier.assigner}]) as MedicationRequest_1559757824302963__based_on__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__based_on__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Basedon Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__basedOn__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__based_on__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__based_on__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Basedon Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__basedOn__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__based_on__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__based_on__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Basedon Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__basedOn__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__based_on__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Basedon Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__basedOn__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Basedon Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__basedOn__identifier__assigner__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Basedon Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__basedOn__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Basedon Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__basedOn__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Basedon Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__basedOn__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__based_on__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Basedon Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__basedOn__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__based_on__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__based_on__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Basedon Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__basedOn__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__based_on__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__based_on__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Basedon Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__basedOn__identifier__type.coding}) as MedicationRequest_1559757824302963__based_on__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__based_on__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Basedon Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__basedOn__identifier.type}]) as MedicationRequest_1559757824302963__based_on__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__agent
#       view_label: "Medicationrequest 1559757824302963: Requester Agent"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester.agent}]) as MedicationRequest_1559757824302963__requester__agent
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__agent__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Requester Agent Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__agent__identifier.period}]) as MedicationRequest_1559757824302963__requester__agent__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__agent__identifier
#       view_label: "Medicationrequest 1559757824302963: Requester Agent Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__agent.identifier}]) as MedicationRequest_1559757824302963__requester__agent__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__agent__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Requester Agent Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__agent__identifier.assigner}]) as MedicationRequest_1559757824302963__requester__agent__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Requester Agent Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Requester Agent Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__agent__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Requester Agent Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Requester Agent Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Requester Agent Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Requester Agent Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Requester Agent Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Requester Agent Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Requester Agent Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Requester Agent Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__requester__agent__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__agent__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Requester Agent Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__requester__agent__identifier__type.coding}) as MedicationRequest_1559757824302963__requester__agent__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__requester__agent__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Requester Agent Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__agent__identifier.type}]) as MedicationRequest_1559757824302963__requester__agent__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__on_behalf_of
#       view_label: "Medicationrequest 1559757824302963: Requester Onbehalfof"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester.onBehalfOf}]) as MedicationRequest_1559757824302963__requester__on_behalf_of
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Requester Onbehalfof Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__onBehalfOf__identifier.period}]) as MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__on_behalf_of__identifier
#       view_label: "Medicationrequest 1559757824302963: Requester Onbehalfof Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__onBehalfOf.identifier}]) as MedicationRequest_1559757824302963__requester__on_behalf_of__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Requester Onbehalfof Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__onBehalfOf__identifier.assigner}]) as MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Requester Onbehalfof Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__onBehalfOf__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Requester Onbehalfof Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__onBehalfOf__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Requester Onbehalfof Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__onBehalfOf__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Requester Onbehalfof Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__onBehalfOf__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Requester Onbehalfof Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__onBehalfOf__identifier__assigner__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Requester Onbehalfof Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__onBehalfOf__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Requester Onbehalfof Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__requester__onBehalfOf__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Requester Onbehalfof Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__onBehalfOf__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Requester Onbehalfof Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__requester__onBehalfOf__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Requester Onbehalfof Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__onBehalfOf__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Requester Onbehalfof Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__requester__onBehalfOf__identifier__type.coding}) as MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Requester Onbehalfof Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__requester__onBehalfOf__identifier.type}]) as MedicationRequest_1559757824302963__requester__on_behalf_of__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__identifier.period}]) as MedicationRequest_1559757824302963__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__identifier
#       view_label: "Medicationrequest 1559757824302963: Identifier"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963.identifier}) as MedicationRequest_1559757824302963__identifier
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__identifier.assigner}]) as MedicationRequest_1559757824302963__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__identifier__assigner__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__identifier__type.coding}) as MedicationRequest_1559757824302963__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__identifier.type}]) as MedicationRequest_1559757824302963__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__recorder
#       view_label: "Medicationrequest 1559757824302963: Recorder"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963.recorder}]) as MedicationRequest_1559757824302963__recorder
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__recorder__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Recorder Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__recorder__identifier.period}]) as MedicationRequest_1559757824302963__recorder__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__recorder__identifier
#       view_label: "Medicationrequest 1559757824302963: Recorder Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__recorder.identifier}]) as MedicationRequest_1559757824302963__recorder__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__recorder__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Recorder Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__recorder__identifier.assigner}]) as MedicationRequest_1559757824302963__recorder__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Recorder Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Recorder Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__recorder__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Recorder Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Recorder Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Recorder Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Recorder Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Recorder Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Recorder Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Recorder Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Recorder Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__recorder__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__recorder__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Recorder Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__recorder__identifier__type.coding}) as MedicationRequest_1559757824302963__recorder__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__recorder__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Recorder Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__recorder__identifier.type}]) as MedicationRequest_1559757824302963__recorder__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__detected_issue
#       view_label: "Medicationrequest 1559757824302963: Detectedissue"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963.detectedIssue}) as MedicationRequest_1559757824302963__detected_issue
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__detected_issue__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Detectedissue Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__detectedIssue__identifier.period}]) as MedicationRequest_1559757824302963__detected_issue__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__detected_issue__identifier
#       view_label: "Medicationrequest 1559757824302963: Detectedissue Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__detectedIssue.identifier}]) as MedicationRequest_1559757824302963__detected_issue__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__detected_issue__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Detectedissue Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__detectedIssue__identifier.assigner}]) as MedicationRequest_1559757824302963__detected_issue__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__detected_issue__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Detectedissue Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__detectedIssue__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__detected_issue__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__detected_issue__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Detectedissue Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__detectedIssue__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__detected_issue__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__detected_issue__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Detectedissue Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__detectedIssue__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__detected_issue__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__detected_issue__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Detectedissue Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__detectedIssue__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__detected_issue__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__detected_issue__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Detectedissue Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__detectedIssue__identifier__assigner__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__detected_issue__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__detected_issue__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Detectedissue Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__detectedIssue__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__detected_issue__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__detected_issue__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Detectedissue Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__detectedIssue__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__detected_issue__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__detected_issue__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Detectedissue Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__detectedIssue__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__detected_issue__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__detected_issue__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Detectedissue Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__detectedIssue__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__detected_issue__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__detected_issue__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Detectedissue Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__detectedIssue__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__detected_issue__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__detected_issue__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Detectedissue Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__detectedIssue__identifier__type.coding}) as MedicationRequest_1559757824302963__detected_issue__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__detected_issue__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Detectedissue Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__detectedIssue__identifier.type}]) as MedicationRequest_1559757824302963__detected_issue__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__supporting_information
#       view_label: "Medicationrequest 1559757824302963: Supportinginformation"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963.supportingInformation}) as MedicationRequest_1559757824302963__supporting_information
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__supporting_information__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Supportinginformation Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__supportingInformation__identifier.period}]) as MedicationRequest_1559757824302963__supporting_information__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__supporting_information__identifier
#       view_label: "Medicationrequest 1559757824302963: Supportinginformation Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__supportingInformation.identifier}]) as MedicationRequest_1559757824302963__supporting_information__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__supporting_information__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Supportinginformation Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__supportingInformation__identifier.assigner}]) as MedicationRequest_1559757824302963__supporting_information__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__supporting_information__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Supportinginformation Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__supportingInformation__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__supporting_information__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__supporting_information__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Supportinginformation Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__supportingInformation__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__supporting_information__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__supporting_information__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Supportinginformation Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__supportingInformation__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__supporting_information__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__supporting_information__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Supportinginformation Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__supportingInformation__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__supporting_information__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__supporting_information__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Supportinginformation Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__supportingInformation__identifier__assigner__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__supporting_information__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__supporting_information__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Supportinginformation Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__supportingInformation__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__supporting_information__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__supporting_information__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Supportinginformation Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__supportingInformation__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__supporting_information__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__supporting_information__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Supportinginformation Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__supportingInformation__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__supporting_information__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__supporting_information__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Supportinginformation Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__supportingInformation__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__supporting_information__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__supporting_information__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Supportinginformation Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__supportingInformation__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__supporting_information__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__supporting_information__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Supportinginformation Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__supportingInformation__identifier__type.coding}) as MedicationRequest_1559757824302963__supporting_information__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__supporting_information__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Supportinginformation Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__supportingInformation__identifier.type}]) as MedicationRequest_1559757824302963__supporting_information__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__medication__reference
#       view_label: "Medicationrequest 1559757824302963: Medication Reference"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__medication.reference}]) as MedicationRequest_1559757824302963__medication__reference
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__medication__reference__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Medication Reference Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__medication__reference__identifier.period}]) as MedicationRequest_1559757824302963__medication__reference__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__medication__reference__identifier
#       view_label: "Medicationrequest 1559757824302963: Medication Reference Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__medication__reference.identifier}]) as MedicationRequest_1559757824302963__medication__reference__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__medication__reference__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Medication Reference Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__medication__reference__identifier.assigner}]) as MedicationRequest_1559757824302963__medication__reference__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Medication Reference Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Medication Reference Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__medication__reference__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Medication Reference Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Medication Reference Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Medication Reference Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Medication Reference Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Medication Reference Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Medication Reference Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Medication Reference Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Medication Reference Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__medication__reference__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__medication__reference__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Medication Reference Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__medication__reference__identifier__type.coding}) as MedicationRequest_1559757824302963__medication__reference__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__medication__reference__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Medication Reference Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__medication__reference__identifier.type}]) as MedicationRequest_1559757824302963__medication__reference__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__medication__codeable_concept__coding
#       view_label: "Medicationrequest 1559757824302963: Medication Codeableconcept Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__medication__codeableConcept.coding}) as MedicationRequest_1559757824302963__medication__codeable_concept__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__medication__codeable_concept
#       view_label: "Medicationrequest 1559757824302963: Medication Codeableconcept"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__medication.codeableConcept}]) as MedicationRequest_1559757824302963__medication__codeable_concept
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__max_dose_per_lifetime
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Maxdoseperlifetime"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction.maxDosePerLifetime}]) as MedicationRequest_1559757824302963__dosage_instruction__max_dose_per_lifetime
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__additional_instruction__coding
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Additionalinstruction Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__dosageInstruction__additionalInstruction.coding}) as MedicationRequest_1559757824302963__dosage_instruction__additional_instruction__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__dosage_instruction__additional_instruction
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Additionalinstruction"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__dosageInstruction.additionalInstruction}) as MedicationRequest_1559757824302963__dosage_instruction__additional_instruction
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__dosage_instruction__method__coding
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Method Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__dosageInstruction__method.coding}) as MedicationRequest_1559757824302963__dosage_instruction__method__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__dosage_instruction__method
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Method"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction.method}]) as MedicationRequest_1559757824302963__dosage_instruction__method
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__timing__code__coding
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Timing Code Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__dosageInstruction__timing__code.coding}) as MedicationRequest_1559757824302963__dosage_instruction__timing__code__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__dosage_instruction__timing__code
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Timing Code"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction__timing.code}]) as MedicationRequest_1559757824302963__dosage_instruction__timing__code
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__timing__repeat
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Timing Repeat"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction__timing.repeat}]) as MedicationRequest_1559757824302963__dosage_instruction__timing__repeat
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__timing__repeat__bounds__duration
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Timing Repeat Bounds Duration"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction__timing__repeat__bounds.duration}]) as MedicationRequest_1559757824302963__dosage_instruction__timing__repeat__bounds__duration
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__timing__repeat__bounds__period
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Timing Repeat Bounds Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction__timing__repeat__bounds.period}]) as MedicationRequest_1559757824302963__dosage_instruction__timing__repeat__bounds__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__timing__repeat__bounds__range__high
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Timing Repeat Bounds `range` High"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction__timing__repeat__bounds__`range`.high}]) as MedicationRequest_1559757824302963__dosage_instruction__timing__repeat__bounds__range__high
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__timing__repeat__bounds__range__low
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Timing Repeat Bounds `range` Low"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction__timing__repeat__bounds__`range`.low}]) as MedicationRequest_1559757824302963__dosage_instruction__timing__repeat__bounds__range__low
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__timing
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Timing"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction.timing}]) as MedicationRequest_1559757824302963__dosage_instruction__timing
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__as_needed
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Asneeded"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction.asNeeded}]) as MedicationRequest_1559757824302963__dosage_instruction__as_needed
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__as_needed__codeable_concept__coding
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Asneeded Codeableconcept Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__dosageInstruction__asNeeded__codeableConcept.coding}) as MedicationRequest_1559757824302963__dosage_instruction__as_needed__codeable_concept__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__dosage_instruction__as_needed__codeable_concept
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Asneeded Codeableconcept"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction__asNeeded.codeableConcept}]) as MedicationRequest_1559757824302963__dosage_instruction__as_needed__codeable_concept
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963.dosageInstruction}) as MedicationRequest_1559757824302963__dosage_instruction
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__dosage_instruction__site__coding
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Site Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__dosageInstruction__site.coding}) as MedicationRequest_1559757824302963__dosage_instruction__site__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__dosage_instruction__site
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Site"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction.site}]) as MedicationRequest_1559757824302963__dosage_instruction__site
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__dose__quantity
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Dose Quantity"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction__dose.quantity}]) as MedicationRequest_1559757824302963__dosage_instruction__dose__quantity
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__dose__range__high
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Dose `range` High"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction__dose__`range`.high}]) as MedicationRequest_1559757824302963__dosage_instruction__dose__range__high
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__dose__range__low
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Dose `range` Low"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction__dose__`range`.low}]) as MedicationRequest_1559757824302963__dosage_instruction__dose__range__low
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__route__coding
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Route Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__dosageInstruction__route.coding}) as MedicationRequest_1559757824302963__dosage_instruction__route__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__dosage_instruction__route
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Route"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction.route}]) as MedicationRequest_1559757824302963__dosage_instruction__route
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__rate__quantity
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Rate Quantity"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction__rate.quantity}]) as MedicationRequest_1559757824302963__dosage_instruction__rate__quantity
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__rate__range__high
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Rate `range` High"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction__rate__`range`.high}]) as MedicationRequest_1559757824302963__dosage_instruction__rate__range__high
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__rate__range__low
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Rate `range` Low"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction__rate__`range`.low}]) as MedicationRequest_1559757824302963__dosage_instruction__rate__range__low
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__rate__ratio__numerator
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Rate Ratio Numerator"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction__rate__ratio.numerator}]) as MedicationRequest_1559757824302963__dosage_instruction__rate__ratio__numerator
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__rate__ratio__denominator
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Rate Ratio Denominator"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction__rate__ratio.denominator}]) as MedicationRequest_1559757824302963__dosage_instruction__rate__ratio__denominator
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__max_dose_per_administration
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Maxdoseperadministration"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction.maxDosePerAdministration}]) as MedicationRequest_1559757824302963__dosage_instruction__max_dose_per_administration
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__max_dose_per_period__numerator
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Maxdoseperperiod Numerator"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction__maxDosePerPeriod.numerator}]) as MedicationRequest_1559757824302963__dosage_instruction__max_dose_per_period__numerator
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__max_dose_per_period__denominator
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Maxdoseperperiod Denominator"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction__maxDosePerPeriod.denominator}]) as MedicationRequest_1559757824302963__dosage_instruction__max_dose_per_period__denominator
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__meta
#       view_label: "Medicationrequest 1559757824302963: Meta"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963.meta}]) as MedicationRequest_1559757824302963__meta
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__meta__security
#       view_label: "Medicationrequest 1559757824302963: Meta Security"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__meta.security}) as MedicationRequest_1559757824302963__meta__security
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__meta__tag
#       view_label: "Medicationrequest 1559757824302963: Meta Tag"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__meta.tag}) as MedicationRequest_1559757824302963__meta__tag
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__event_history
#       view_label: "Medicationrequest 1559757824302963: Eventhistory"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963.eventHistory}) as MedicationRequest_1559757824302963__event_history
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__event_history__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Eventhistory Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__eventHistory__identifier.period}]) as MedicationRequest_1559757824302963__event_history__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__event_history__identifier
#       view_label: "Medicationrequest 1559757824302963: Eventhistory Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__eventHistory.identifier}]) as MedicationRequest_1559757824302963__event_history__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__event_history__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Eventhistory Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__eventHistory__identifier.assigner}]) as MedicationRequest_1559757824302963__event_history__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__event_history__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Eventhistory Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__eventHistory__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__event_history__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__event_history__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Eventhistory Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__eventHistory__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__event_history__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__event_history__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Eventhistory Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__eventHistory__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__event_history__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__event_history__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Eventhistory Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__eventHistory__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__event_history__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__event_history__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Eventhistory Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__eventHistory__identifier__assigner__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__event_history__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__event_history__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Eventhistory Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__eventHistory__identifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__event_history__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__event_history__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Eventhistory Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__eventHistory__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__event_history__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__event_history__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Eventhistory Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__eventHistory__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__event_history__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__event_history__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Eventhistory Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__eventHistory__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__event_history__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__event_history__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Eventhistory Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__eventHistory__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__event_history__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__event_history__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Eventhistory Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__eventHistory__identifier__type.coding}) as MedicationRequest_1559757824302963__event_history__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__event_history__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Eventhistory Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__eventHistory__identifier.type}]) as MedicationRequest_1559757824302963__event_history__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__category__coding
#       view_label: "Medicationrequest 1559757824302963: Category Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__category.coding}) as MedicationRequest_1559757824302963__category__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__category
#       view_label: "Medicationrequest 1559757824302963: Category"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963.category}]) as MedicationRequest_1559757824302963__category
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__group_identifier__period
#       view_label: "Medicationrequest 1559757824302963: Groupidentifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__groupIdentifier.period}]) as MedicationRequest_1559757824302963__group_identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__group_identifier
#       view_label: "Medicationrequest 1559757824302963: Groupidentifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963.groupIdentifier}]) as MedicationRequest_1559757824302963__group_identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__group_identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Groupidentifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__groupIdentifier.assigner}]) as MedicationRequest_1559757824302963__group_identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__group_identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Groupidentifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__groupIdentifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__group_identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__group_identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Groupidentifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__groupIdentifier__assigner.identifier}]) as MedicationRequest_1559757824302963__group_identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__group_identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Groupidentifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__groupIdentifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__group_identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__group_identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Groupidentifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__groupIdentifier__assigner__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__group_identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__group_identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Groupidentifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__groupIdentifier__assigner__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__group_identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__group_identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Medicationrequest 1559757824302963: Groupidentifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__groupIdentifier__assigner__identifier__assigner__identifier.assigner}]) as MedicationRequest_1559757824302963__group_identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__group_identifier__assigner__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Medicationrequest 1559757824302963: Groupidentifier Assigner Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__groupIdentifier__assigner__identifier__assigner__identifier__assigner__identifier.period}]) as MedicationRequest_1559757824302963__group_identifier__assigner__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__group_identifier__assigner__identifier__assigner__identifier__assigner__identifier
#       view_label: "Medicationrequest 1559757824302963: Groupidentifier Assigner Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__groupIdentifier__assigner__identifier__assigner__identifier__assigner.identifier}]) as MedicationRequest_1559757824302963__group_identifier__assigner__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__group_identifier__assigner__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Groupidentifier Assigner Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__groupIdentifier__assigner__identifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__group_identifier__assigner__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__group_identifier__assigner__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Groupidentifier Assigner Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__groupIdentifier__assigner__identifier__assigner__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__group_identifier__assigner__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__group_identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Groupidentifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__groupIdentifier__assigner__identifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__group_identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__group_identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Groupidentifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__groupIdentifier__assigner__identifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__group_identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__group_identifier__assigner__identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Groupidentifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__groupIdentifier__assigner__identifier__type.coding}) as MedicationRequest_1559757824302963__group_identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__group_identifier__assigner__identifier__type
#       view_label: "Medicationrequest 1559757824302963: Groupidentifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__groupIdentifier__assigner__identifier.type}]) as MedicationRequest_1559757824302963__group_identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__group_identifier__type__coding
#       view_label: "Medicationrequest 1559757824302963: Groupidentifier Type Coding"
#       sql: LEFT JOIN UNNEST(${MedicationRequest_1559757824302963__groupIdentifier__type.coding}) as MedicationRequest_1559757824302963__group_identifier__type__coding
#       relationship: one_to_many
#     - join: MedicationRequest_1559757824302963__group_identifier__type
#       view_label: "Medicationrequest 1559757824302963: Groupidentifier Type"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__groupIdentifier.type}]) as MedicationRequest_1559757824302963__group_identifier__type
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__requester
#       view_label: "Medicationrequest 1559757824302963: Requester"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963.requester}]) as MedicationRequest_1559757824302963__requester
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__medication
#       view_label: "Medicationrequest 1559757824302963: Medication"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963.medication}]) as MedicationRequest_1559757824302963__medication
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__timing__repeat__bounds
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Timing Repeat Bounds"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction__timing__repeat.bounds}]) as MedicationRequest_1559757824302963__dosage_instruction__timing__repeat__bounds
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__timing__repeat__bounds__range
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Timing Repeat Bounds `range`"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction__timing__repeat__bounds.`range`}]) as MedicationRequest_1559757824302963__dosage_instruction__timing__repeat__bounds__range
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__dose
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Dose"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction.dose}]) as MedicationRequest_1559757824302963__dosage_instruction__dose
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__dose__range
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Dose `range`"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction__dose.`range`}]) as MedicationRequest_1559757824302963__dosage_instruction__dose__range
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__rate
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Rate"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction.rate}]) as MedicationRequest_1559757824302963__dosage_instruction__rate
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__rate__range
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Rate `range`"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction__rate.`range`}]) as MedicationRequest_1559757824302963__dosage_instruction__rate__range
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__rate__ratio
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Rate Ratio"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction__rate.ratio}]) as MedicationRequest_1559757824302963__dosage_instruction__rate__ratio
#       relationship: one_to_one
#     - join: MedicationRequest_1559757824302963__dosage_instruction__max_dose_per_period
#       view_label: "Medicationrequest 1559757824302963: Dosageinstruction Maxdoseperperiod"
#       sql: LEFT JOIN UNNEST([${MedicationRequest_1559757824302963__dosageInstruction.maxDosePerPeriod}]) as MedicationRequest_1559757824302963__dosage_instruction__max_dose_per_period
#       relationship: one_to_one

# - explore: observation_1559757824302963
#   joins:
#     - join: Observation_1559757824302963__data_absent_reason__coding
#       view_label: "Observation 1559757824302963: Dataabsentreason Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__dataAbsentReason.coding}) as Observation_1559757824302963__data_absent_reason__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__data_absent_reason
#       view_label: "Observation 1559757824302963: Dataabsentreason"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963.dataAbsentReason}]) as Observation_1559757824302963__data_absent_reason
#       relationship: one_to_one
#     - join: Observation_1559757824302963__code__coding
#       view_label: "Observation 1559757824302963: Code Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__code.coding}) as Observation_1559757824302963__code__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__code
#       view_label: "Observation 1559757824302963: Code"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963.code}]) as Observation_1559757824302963__code
#       relationship: one_to_one
#     - join: Observation_1559757824302963__subject
#       view_label: "Observation 1559757824302963: Subject"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963.subject}]) as Observation_1559757824302963__subject
#       relationship: one_to_one
#     - join: Observation_1559757824302963__subject__identifier__period
#       view_label: "Observation 1559757824302963: Subject Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__subject__identifier.period}]) as Observation_1559757824302963__subject__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__subject__identifier
#       view_label: "Observation 1559757824302963: Subject Identifier"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__subject.identifier}]) as Observation_1559757824302963__subject__identifier
#       relationship: one_to_one
#     - join: Observation_1559757824302963__subject__identifier__assigner
#       view_label: "Observation 1559757824302963: Subject Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__subject__identifier.assigner}]) as Observation_1559757824302963__subject__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__subject__identifier__assigner__identifier__period
#       view_label: "Observation 1559757824302963: Subject Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__subject__identifier__assigner__identifier.period}]) as Observation_1559757824302963__subject__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__subject__identifier__assigner__identifier
#       view_label: "Observation 1559757824302963: Subject Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__subject__identifier__assigner.identifier}]) as Observation_1559757824302963__subject__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Observation_1559757824302963__subject__identifier__assigner__identifier__assigner
#       view_label: "Observation 1559757824302963: Subject Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__subject__identifier__assigner__identifier.assigner}]) as Observation_1559757824302963__subject__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Observation 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier.period}]) as Observation_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier
#       view_label: "Observation 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__subject__identifier__assigner__identifier__assigner.identifier}]) as Observation_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Observation_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Observation 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier.assigner}]) as Observation_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Observation 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type.coding}) as Observation_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Observation 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier.type}]) as Observation_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__subject__identifier__assigner__identifier__type__coding
#       view_label: "Observation 1559757824302963: Subject Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__subject__identifier__assigner__identifier__type.coding}) as Observation_1559757824302963__subject__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__subject__identifier__assigner__identifier__type
#       view_label: "Observation 1559757824302963: Subject Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__subject__identifier__assigner__identifier.type}]) as Observation_1559757824302963__subject__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__subject__identifier__type__coding
#       view_label: "Observation 1559757824302963: Subject Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__subject__identifier__type.coding}) as Observation_1559757824302963__subject__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__subject__identifier__type
#       view_label: "Observation 1559757824302963: Subject Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__subject__identifier.type}]) as Observation_1559757824302963__subject__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__effective
#       view_label: "Observation 1559757824302963: Effective"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963.effective}]) as Observation_1559757824302963__effective
#       relationship: one_to_one
#     - join: Observation_1559757824302963__effective__period
#       view_label: "Observation 1559757824302963: Effective Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__effective.period}]) as Observation_1559757824302963__effective__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__related
#       view_label: "Observation 1559757824302963: Related"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963.related}) as Observation_1559757824302963__related
#       relationship: one_to_many
#     - join: Observation_1559757824302963__related__target
#       view_label: "Observation 1559757824302963: Related Target"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__related.target}]) as Observation_1559757824302963__related__target
#       relationship: one_to_one
#     - join: Observation_1559757824302963__related__target__identifier__period
#       view_label: "Observation 1559757824302963: Related Target Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__related__target__identifier.period}]) as Observation_1559757824302963__related__target__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__related__target__identifier
#       view_label: "Observation 1559757824302963: Related Target Identifier"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__related__target.identifier}]) as Observation_1559757824302963__related__target__identifier
#       relationship: one_to_one
#     - join: Observation_1559757824302963__related__target__identifier__assigner
#       view_label: "Observation 1559757824302963: Related Target Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__related__target__identifier.assigner}]) as Observation_1559757824302963__related__target__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__related__target__identifier__assigner__identifier__period
#       view_label: "Observation 1559757824302963: Related Target Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__related__target__identifier__assigner__identifier.period}]) as Observation_1559757824302963__related__target__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__related__target__identifier__assigner__identifier
#       view_label: "Observation 1559757824302963: Related Target Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__related__target__identifier__assigner.identifier}]) as Observation_1559757824302963__related__target__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Observation_1559757824302963__related__target__identifier__assigner__identifier__assigner
#       view_label: "Observation 1559757824302963: Related Target Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__related__target__identifier__assigner__identifier.assigner}]) as Observation_1559757824302963__related__target__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__related__target__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Observation 1559757824302963: Related Target Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__related__target__identifier__assigner__identifier__assigner__identifier.period}]) as Observation_1559757824302963__related__target__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__related__target__identifier__assigner__identifier__assigner__identifier
#       view_label: "Observation 1559757824302963: Related Target Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__related__target__identifier__assigner__identifier__assigner.identifier}]) as Observation_1559757824302963__related__target__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Observation_1559757824302963__related__target__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Observation 1559757824302963: Related Target Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__related__target__identifier__assigner__identifier__assigner__identifier.assigner}]) as Observation_1559757824302963__related__target__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__related__target__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Observation 1559757824302963: Related Target Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__related__target__identifier__assigner__identifier__assigner__identifier__type.coding}) as Observation_1559757824302963__related__target__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__related__target__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Observation 1559757824302963: Related Target Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__related__target__identifier__assigner__identifier__assigner__identifier.type}]) as Observation_1559757824302963__related__target__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__related__target__identifier__assigner__identifier__type__coding
#       view_label: "Observation 1559757824302963: Related Target Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__related__target__identifier__assigner__identifier__type.coding}) as Observation_1559757824302963__related__target__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__related__target__identifier__assigner__identifier__type
#       view_label: "Observation 1559757824302963: Related Target Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__related__target__identifier__assigner__identifier.type}]) as Observation_1559757824302963__related__target__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__related__target__identifier__type__coding
#       view_label: "Observation 1559757824302963: Related Target Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__related__target__identifier__type.coding}) as Observation_1559757824302963__related__target__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__related__target__identifier__type
#       view_label: "Observation 1559757824302963: Related Target Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__related__target__identifier.type}]) as Observation_1559757824302963__related__target__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__specimen
#       view_label: "Observation 1559757824302963: Specimen"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963.specimen}]) as Observation_1559757824302963__specimen
#       relationship: one_to_one
#     - join: Observation_1559757824302963__specimen__identifier__period
#       view_label: "Observation 1559757824302963: Specimen Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__specimen__identifier.period}]) as Observation_1559757824302963__specimen__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__specimen__identifier
#       view_label: "Observation 1559757824302963: Specimen Identifier"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__specimen.identifier}]) as Observation_1559757824302963__specimen__identifier
#       relationship: one_to_one
#     - join: Observation_1559757824302963__specimen__identifier__assigner
#       view_label: "Observation 1559757824302963: Specimen Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__specimen__identifier.assigner}]) as Observation_1559757824302963__specimen__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__specimen__identifier__assigner__identifier__period
#       view_label: "Observation 1559757824302963: Specimen Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__specimen__identifier__assigner__identifier.period}]) as Observation_1559757824302963__specimen__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__specimen__identifier__assigner__identifier
#       view_label: "Observation 1559757824302963: Specimen Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__specimen__identifier__assigner.identifier}]) as Observation_1559757824302963__specimen__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Observation_1559757824302963__specimen__identifier__assigner__identifier__assigner
#       view_label: "Observation 1559757824302963: Specimen Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__specimen__identifier__assigner__identifier.assigner}]) as Observation_1559757824302963__specimen__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__specimen__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Observation 1559757824302963: Specimen Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__specimen__identifier__assigner__identifier__assigner__identifier.period}]) as Observation_1559757824302963__specimen__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__specimen__identifier__assigner__identifier__assigner__identifier
#       view_label: "Observation 1559757824302963: Specimen Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__specimen__identifier__assigner__identifier__assigner.identifier}]) as Observation_1559757824302963__specimen__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Observation_1559757824302963__specimen__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Observation 1559757824302963: Specimen Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__specimen__identifier__assigner__identifier__assigner__identifier.assigner}]) as Observation_1559757824302963__specimen__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__specimen__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Observation 1559757824302963: Specimen Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__specimen__identifier__assigner__identifier__assigner__identifier__type.coding}) as Observation_1559757824302963__specimen__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__specimen__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Observation 1559757824302963: Specimen Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__specimen__identifier__assigner__identifier__assigner__identifier.type}]) as Observation_1559757824302963__specimen__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__specimen__identifier__assigner__identifier__type__coding
#       view_label: "Observation 1559757824302963: Specimen Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__specimen__identifier__assigner__identifier__type.coding}) as Observation_1559757824302963__specimen__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__specimen__identifier__assigner__identifier__type
#       view_label: "Observation 1559757824302963: Specimen Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__specimen__identifier__assigner__identifier.type}]) as Observation_1559757824302963__specimen__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__specimen__identifier__type__coding
#       view_label: "Observation 1559757824302963: Specimen Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__specimen__identifier__type.coding}) as Observation_1559757824302963__specimen__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__specimen__identifier__type
#       view_label: "Observation 1559757824302963: Specimen Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__specimen__identifier.type}]) as Observation_1559757824302963__specimen__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__context
#       view_label: "Observation 1559757824302963: Context"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963.context}]) as Observation_1559757824302963__context
#       relationship: one_to_one
#     - join: Observation_1559757824302963__context__identifier__period
#       view_label: "Observation 1559757824302963: Context Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__context__identifier.period}]) as Observation_1559757824302963__context__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__context__identifier
#       view_label: "Observation 1559757824302963: Context Identifier"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__context.identifier}]) as Observation_1559757824302963__context__identifier
#       relationship: one_to_one
#     - join: Observation_1559757824302963__context__identifier__assigner
#       view_label: "Observation 1559757824302963: Context Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__context__identifier.assigner}]) as Observation_1559757824302963__context__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__context__identifier__assigner__identifier__period
#       view_label: "Observation 1559757824302963: Context Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__context__identifier__assigner__identifier.period}]) as Observation_1559757824302963__context__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__context__identifier__assigner__identifier
#       view_label: "Observation 1559757824302963: Context Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__context__identifier__assigner.identifier}]) as Observation_1559757824302963__context__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Observation_1559757824302963__context__identifier__assigner__identifier__assigner
#       view_label: "Observation 1559757824302963: Context Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__context__identifier__assigner__identifier.assigner}]) as Observation_1559757824302963__context__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Observation 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__context__identifier__assigner__identifier__assigner__identifier.period}]) as Observation_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__context__identifier__assigner__identifier__assigner__identifier
#       view_label: "Observation 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__context__identifier__assigner__identifier__assigner.identifier}]) as Observation_1559757824302963__context__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Observation_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Observation 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__context__identifier__assigner__identifier__assigner__identifier.assigner}]) as Observation_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Observation 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type.coding}) as Observation_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Observation 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__context__identifier__assigner__identifier__assigner__identifier.type}]) as Observation_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__context__identifier__assigner__identifier__type__coding
#       view_label: "Observation 1559757824302963: Context Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__context__identifier__assigner__identifier__type.coding}) as Observation_1559757824302963__context__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__context__identifier__assigner__identifier__type
#       view_label: "Observation 1559757824302963: Context Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__context__identifier__assigner__identifier.type}]) as Observation_1559757824302963__context__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__context__identifier__type__coding
#       view_label: "Observation 1559757824302963: Context Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__context__identifier__type.coding}) as Observation_1559757824302963__context__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__context__identifier__type
#       view_label: "Observation 1559757824302963: Context Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__context__identifier.type}]) as Observation_1559757824302963__context__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__text
#       view_label: "Observation 1559757824302963: Text"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963.text}]) as Observation_1559757824302963__text
#       relationship: one_to_one
#     - join: Observation_1559757824302963__value
#       view_label: "Observation 1559757824302963: Value"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963.value}]) as Observation_1559757824302963__value
#       relationship: one_to_one
#     - join: Observation_1559757824302963__value__period
#       view_label: "Observation 1559757824302963: Value Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__value.period}]) as Observation_1559757824302963__value__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__value__quantity
#       view_label: "Observation 1559757824302963: Value Quantity"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__value.quantity}]) as Observation_1559757824302963__value__quantity
#       relationship: one_to_one
#     - join: Observation_1559757824302963__value__attachment
#       view_label: "Observation 1559757824302963: Value Attachment"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__value.attachment}]) as Observation_1559757824302963__value__attachment
#       relationship: one_to_one
#     - join: Observation_1559757824302963__value__sampled_data
#       view_label: "Observation 1559757824302963: Value Sampleddata"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__value.sampledData}]) as Observation_1559757824302963__value__sampled_data
#       relationship: one_to_one
#     - join: Observation_1559757824302963__value__sampled_data__origin
#       view_label: "Observation 1559757824302963: Value Sampleddata Origin"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__value__sampledData.origin}]) as Observation_1559757824302963__value__sampled_data__origin
#       relationship: one_to_one
#     - join: Observation_1559757824302963__value__range__high
#       view_label: "Observation 1559757824302963: Value `range` High"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__value__`range`.high}]) as Observation_1559757824302963__value__range__high
#       relationship: one_to_one
#     - join: Observation_1559757824302963__value__range__low
#       view_label: "Observation 1559757824302963: Value `range` Low"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__value__`range`.low}]) as Observation_1559757824302963__value__range__low
#       relationship: one_to_one
#     - join: Observation_1559757824302963__value__codeable_concept__coding
#       view_label: "Observation 1559757824302963: Value Codeableconcept Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__value__codeableConcept.coding}) as Observation_1559757824302963__value__codeable_concept__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__value__codeable_concept
#       view_label: "Observation 1559757824302963: Value Codeableconcept"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__value.codeableConcept}]) as Observation_1559757824302963__value__codeable_concept
#       relationship: one_to_one
#     - join: Observation_1559757824302963__value__ratio__numerator
#       view_label: "Observation 1559757824302963: Value Ratio Numerator"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__value__ratio.numerator}]) as Observation_1559757824302963__value__ratio__numerator
#       relationship: one_to_one
#     - join: Observation_1559757824302963__value__ratio__denominator
#       view_label: "Observation 1559757824302963: Value Ratio Denominator"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__value__ratio.denominator}]) as Observation_1559757824302963__value__ratio__denominator
#       relationship: one_to_one
#     - join: Observation_1559757824302963__based_on
#       view_label: "Observation 1559757824302963: Basedon"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963.basedOn}) as Observation_1559757824302963__based_on
#       relationship: one_to_many
#     - join: Observation_1559757824302963__based_on__identifier__period
#       view_label: "Observation 1559757824302963: Basedon Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__basedOn__identifier.period}]) as Observation_1559757824302963__based_on__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__based_on__identifier
#       view_label: "Observation 1559757824302963: Basedon Identifier"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__basedOn.identifier}]) as Observation_1559757824302963__based_on__identifier
#       relationship: one_to_one
#     - join: Observation_1559757824302963__based_on__identifier__assigner
#       view_label: "Observation 1559757824302963: Basedon Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__basedOn__identifier.assigner}]) as Observation_1559757824302963__based_on__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__based_on__identifier__assigner__identifier__period
#       view_label: "Observation 1559757824302963: Basedon Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__basedOn__identifier__assigner__identifier.period}]) as Observation_1559757824302963__based_on__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__based_on__identifier__assigner__identifier
#       view_label: "Observation 1559757824302963: Basedon Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__basedOn__identifier__assigner.identifier}]) as Observation_1559757824302963__based_on__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Observation_1559757824302963__based_on__identifier__assigner__identifier__assigner
#       view_label: "Observation 1559757824302963: Basedon Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__basedOn__identifier__assigner__identifier.assigner}]) as Observation_1559757824302963__based_on__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Observation 1559757824302963: Basedon Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__basedOn__identifier__assigner__identifier__assigner__identifier.period}]) as Observation_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier
#       view_label: "Observation 1559757824302963: Basedon Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__basedOn__identifier__assigner__identifier__assigner.identifier}]) as Observation_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Observation_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Observation 1559757824302963: Basedon Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__basedOn__identifier__assigner__identifier__assigner__identifier.assigner}]) as Observation_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Observation 1559757824302963: Basedon Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__basedOn__identifier__assigner__identifier__assigner__identifier__type.coding}) as Observation_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Observation 1559757824302963: Basedon Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__basedOn__identifier__assigner__identifier__assigner__identifier.type}]) as Observation_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__based_on__identifier__assigner__identifier__type__coding
#       view_label: "Observation 1559757824302963: Basedon Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__basedOn__identifier__assigner__identifier__type.coding}) as Observation_1559757824302963__based_on__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__based_on__identifier__assigner__identifier__type
#       view_label: "Observation 1559757824302963: Basedon Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__basedOn__identifier__assigner__identifier.type}]) as Observation_1559757824302963__based_on__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__based_on__identifier__type__coding
#       view_label: "Observation 1559757824302963: Basedon Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__basedOn__identifier__type.coding}) as Observation_1559757824302963__based_on__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__based_on__identifier__type
#       view_label: "Observation 1559757824302963: Basedon Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__basedOn__identifier.type}]) as Observation_1559757824302963__based_on__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__identifier__period
#       view_label: "Observation 1559757824302963: Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__identifier.period}]) as Observation_1559757824302963__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__identifier
#       view_label: "Observation 1559757824302963: Identifier"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963.identifier}) as Observation_1559757824302963__identifier
#       relationship: one_to_many
#     - join: Observation_1559757824302963__identifier__assigner
#       view_label: "Observation 1559757824302963: Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__identifier.assigner}]) as Observation_1559757824302963__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__identifier__assigner__identifier__period
#       view_label: "Observation 1559757824302963: Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__identifier__assigner__identifier.period}]) as Observation_1559757824302963__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__identifier__assigner__identifier
#       view_label: "Observation 1559757824302963: Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__identifier__assigner.identifier}]) as Observation_1559757824302963__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Observation_1559757824302963__identifier__assigner__identifier__assigner
#       view_label: "Observation 1559757824302963: Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__identifier__assigner__identifier.assigner}]) as Observation_1559757824302963__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Observation 1559757824302963: Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__identifier__assigner__identifier__assigner__identifier.period}]) as Observation_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       view_label: "Observation 1559757824302963: Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__identifier__assigner__identifier__assigner.identifier}]) as Observation_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Observation_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Observation 1559757824302963: Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__identifier__assigner__identifier__assigner__identifier.assigner}]) as Observation_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Observation 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__identifier__assigner__identifier__assigner__identifier__type.coding}) as Observation_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Observation 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__identifier__assigner__identifier__assigner__identifier.type}]) as Observation_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__identifier__assigner__identifier__type__coding
#       view_label: "Observation 1559757824302963: Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__identifier__assigner__identifier__type.coding}) as Observation_1559757824302963__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__identifier__assigner__identifier__type
#       view_label: "Observation 1559757824302963: Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__identifier__assigner__identifier.type}]) as Observation_1559757824302963__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__identifier__type__coding
#       view_label: "Observation 1559757824302963: Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__identifier__type.coding}) as Observation_1559757824302963__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__identifier__type
#       view_label: "Observation 1559757824302963: Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__identifier.type}]) as Observation_1559757824302963__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__performer
#       view_label: "Observation 1559757824302963: Performer"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963.performer}) as Observation_1559757824302963__performer
#       relationship: one_to_many
#     - join: Observation_1559757824302963__performer__identifier__period
#       view_label: "Observation 1559757824302963: Performer Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__performer__identifier.period}]) as Observation_1559757824302963__performer__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__performer__identifier
#       view_label: "Observation 1559757824302963: Performer Identifier"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__performer.identifier}]) as Observation_1559757824302963__performer__identifier
#       relationship: one_to_one
#     - join: Observation_1559757824302963__performer__identifier__assigner
#       view_label: "Observation 1559757824302963: Performer Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__performer__identifier.assigner}]) as Observation_1559757824302963__performer__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__performer__identifier__assigner__identifier__period
#       view_label: "Observation 1559757824302963: Performer Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__performer__identifier__assigner__identifier.period}]) as Observation_1559757824302963__performer__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__performer__identifier__assigner__identifier
#       view_label: "Observation 1559757824302963: Performer Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__performer__identifier__assigner.identifier}]) as Observation_1559757824302963__performer__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Observation_1559757824302963__performer__identifier__assigner__identifier__assigner
#       view_label: "Observation 1559757824302963: Performer Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__performer__identifier__assigner__identifier.assigner}]) as Observation_1559757824302963__performer__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__performer__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Observation 1559757824302963: Performer Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__performer__identifier__assigner__identifier__assigner__identifier.period}]) as Observation_1559757824302963__performer__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__performer__identifier__assigner__identifier__assigner__identifier
#       view_label: "Observation 1559757824302963: Performer Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__performer__identifier__assigner__identifier__assigner.identifier}]) as Observation_1559757824302963__performer__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Observation_1559757824302963__performer__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Observation 1559757824302963: Performer Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__performer__identifier__assigner__identifier__assigner__identifier.assigner}]) as Observation_1559757824302963__performer__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__performer__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Observation 1559757824302963: Performer Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__performer__identifier__assigner__identifier__assigner__identifier__type.coding}) as Observation_1559757824302963__performer__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__performer__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Observation 1559757824302963: Performer Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__performer__identifier__assigner__identifier__assigner__identifier.type}]) as Observation_1559757824302963__performer__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__performer__identifier__assigner__identifier__type__coding
#       view_label: "Observation 1559757824302963: Performer Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__performer__identifier__assigner__identifier__type.coding}) as Observation_1559757824302963__performer__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__performer__identifier__assigner__identifier__type
#       view_label: "Observation 1559757824302963: Performer Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__performer__identifier__assigner__identifier.type}]) as Observation_1559757824302963__performer__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__performer__identifier__type__coding
#       view_label: "Observation 1559757824302963: Performer Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__performer__identifier__type.coding}) as Observation_1559757824302963__performer__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__performer__identifier__type
#       view_label: "Observation 1559757824302963: Performer Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__performer__identifier.type}]) as Observation_1559757824302963__performer__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__method__coding
#       view_label: "Observation 1559757824302963: Method Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__method.coding}) as Observation_1559757824302963__method__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__method
#       view_label: "Observation 1559757824302963: Method"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963.method}]) as Observation_1559757824302963__method
#       relationship: one_to_one
#     - join: Observation_1559757824302963__body_site__coding
#       view_label: "Observation 1559757824302963: Bodysite Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__bodySite.coding}) as Observation_1559757824302963__body_site__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__body_site
#       view_label: "Observation 1559757824302963: Bodysite"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963.bodySite}]) as Observation_1559757824302963__body_site
#       relationship: one_to_one
#     - join: Observation_1559757824302963__component__data_absent_reason__coding
#       view_label: "Observation 1559757824302963: Component Dataabsentreason Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__component__dataAbsentReason.coding}) as Observation_1559757824302963__component__data_absent_reason__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__component__data_absent_reason
#       view_label: "Observation 1559757824302963: Component Dataabsentreason"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__component.dataAbsentReason}]) as Observation_1559757824302963__component__data_absent_reason
#       relationship: one_to_one
#     - join: Observation_1559757824302963__component__reference_range__high
#       view_label: "Observation 1559757824302963: Component Referencerange High"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__component__referenceRange.high}]) as Observation_1559757824302963__component__reference_range__high
#       relationship: one_to_one
#     - join: Observation_1559757824302963__component__reference_range__low
#       view_label: "Observation 1559757824302963: Component Referencerange Low"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__component__referenceRange.low}]) as Observation_1559757824302963__component__reference_range__low
#       relationship: one_to_one
#     - join: Observation_1559757824302963__component__reference_range__applies_to__coding
#       view_label: "Observation 1559757824302963: Component Referencerange Appliesto Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__component__referenceRange__appliesTo.coding}) as Observation_1559757824302963__component__reference_range__applies_to__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__component__reference_range__applies_to
#       view_label: "Observation 1559757824302963: Component Referencerange Appliesto"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__component__referenceRange.appliesTo}) as Observation_1559757824302963__component__reference_range__applies_to
#       relationship: one_to_many
#     - join: Observation_1559757824302963__component__reference_range
#       view_label: "Observation 1559757824302963: Component Referencerange"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__component.referenceRange}) as Observation_1559757824302963__component__reference_range
#       relationship: one_to_many
#     - join: Observation_1559757824302963__component__reference_range__type__coding
#       view_label: "Observation 1559757824302963: Component Referencerange Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__component__referenceRange__type.coding}) as Observation_1559757824302963__component__reference_range__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__component__reference_range__type
#       view_label: "Observation 1559757824302963: Component Referencerange Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__component__referenceRange.type}]) as Observation_1559757824302963__component__reference_range__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__component__reference_range__age__high
#       view_label: "Observation 1559757824302963: Component Referencerange Age High"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__component__referenceRange__age.high}]) as Observation_1559757824302963__component__reference_range__age__high
#       relationship: one_to_one
#     - join: Observation_1559757824302963__component__reference_range__age__low
#       view_label: "Observation 1559757824302963: Component Referencerange Age Low"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__component__referenceRange__age.low}]) as Observation_1559757824302963__component__reference_range__age__low
#       relationship: one_to_one
#     - join: Observation_1559757824302963__component__code__coding
#       view_label: "Observation 1559757824302963: Component Code Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__component__code.coding}) as Observation_1559757824302963__component__code__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__component__code
#       view_label: "Observation 1559757824302963: Component Code"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__component.code}]) as Observation_1559757824302963__component__code
#       relationship: one_to_one
#     - join: Observation_1559757824302963__component__interpretation__coding
#       view_label: "Observation 1559757824302963: Component Interpretation Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__component__interpretation.coding}) as Observation_1559757824302963__component__interpretation__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__component__interpretation
#       view_label: "Observation 1559757824302963: Component Interpretation"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__component.interpretation}]) as Observation_1559757824302963__component__interpretation
#       relationship: one_to_one
#     - join: Observation_1559757824302963__component__value
#       view_label: "Observation 1559757824302963: Component Value"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__component.value}]) as Observation_1559757824302963__component__value
#       relationship: one_to_one
#     - join: Observation_1559757824302963__component__value__period
#       view_label: "Observation 1559757824302963: Component Value Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__component__value.period}]) as Observation_1559757824302963__component__value__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__component__value__quantity
#       view_label: "Observation 1559757824302963: Component Value Quantity"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__component__value.quantity}]) as Observation_1559757824302963__component__value__quantity
#       relationship: one_to_one
#     - join: Observation_1559757824302963__component__value__attachment
#       view_label: "Observation 1559757824302963: Component Value Attachment"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__component__value.attachment}]) as Observation_1559757824302963__component__value__attachment
#       relationship: one_to_one
#     - join: Observation_1559757824302963__component__value__sampled_data
#       view_label: "Observation 1559757824302963: Component Value Sampleddata"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__component__value.sampledData}]) as Observation_1559757824302963__component__value__sampled_data
#       relationship: one_to_one
#     - join: Observation_1559757824302963__component__value__sampled_data__origin
#       view_label: "Observation 1559757824302963: Component Value Sampleddata Origin"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__component__value__sampledData.origin}]) as Observation_1559757824302963__component__value__sampled_data__origin
#       relationship: one_to_one
#     - join: Observation_1559757824302963__component__value__range__high
#       view_label: "Observation 1559757824302963: Component Value `range` High"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__component__value__`range`.high}]) as Observation_1559757824302963__component__value__range__high
#       relationship: one_to_one
#     - join: Observation_1559757824302963__component__value__range__low
#       view_label: "Observation 1559757824302963: Component Value `range` Low"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__component__value__`range`.low}]) as Observation_1559757824302963__component__value__range__low
#       relationship: one_to_one
#     - join: Observation_1559757824302963__component__value__codeable_concept__coding
#       view_label: "Observation 1559757824302963: Component Value Codeableconcept Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__component__value__codeableConcept.coding}) as Observation_1559757824302963__component__value__codeable_concept__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__component__value__codeable_concept
#       view_label: "Observation 1559757824302963: Component Value Codeableconcept"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__component__value.codeableConcept}]) as Observation_1559757824302963__component__value__codeable_concept
#       relationship: one_to_one
#     - join: Observation_1559757824302963__component__value__ratio__numerator
#       view_label: "Observation 1559757824302963: Component Value Ratio Numerator"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__component__value__ratio.numerator}]) as Observation_1559757824302963__component__value__ratio__numerator
#       relationship: one_to_one
#     - join: Observation_1559757824302963__component__value__ratio__denominator
#       view_label: "Observation 1559757824302963: Component Value Ratio Denominator"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__component__value__ratio.denominator}]) as Observation_1559757824302963__component__value__ratio__denominator
#       relationship: one_to_one
#     - join: Observation_1559757824302963__reference_range__high
#       view_label: "Observation 1559757824302963: Referencerange High"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__referenceRange.high}]) as Observation_1559757824302963__reference_range__high
#       relationship: one_to_one
#     - join: Observation_1559757824302963__reference_range__low
#       view_label: "Observation 1559757824302963: Referencerange Low"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__referenceRange.low}]) as Observation_1559757824302963__reference_range__low
#       relationship: one_to_one
#     - join: Observation_1559757824302963__reference_range__applies_to__coding
#       view_label: "Observation 1559757824302963: Referencerange Appliesto Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__referenceRange__appliesTo.coding}) as Observation_1559757824302963__reference_range__applies_to__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__reference_range__applies_to
#       view_label: "Observation 1559757824302963: Referencerange Appliesto"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__referenceRange.appliesTo}) as Observation_1559757824302963__reference_range__applies_to
#       relationship: one_to_many
#     - join: Observation_1559757824302963__reference_range
#       view_label: "Observation 1559757824302963: Referencerange"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963.referenceRange}) as Observation_1559757824302963__reference_range
#       relationship: one_to_many
#     - join: Observation_1559757824302963__reference_range__type__coding
#       view_label: "Observation 1559757824302963: Referencerange Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__referenceRange__type.coding}) as Observation_1559757824302963__reference_range__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__reference_range__type
#       view_label: "Observation 1559757824302963: Referencerange Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__referenceRange.type}]) as Observation_1559757824302963__reference_range__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__reference_range__age__high
#       view_label: "Observation 1559757824302963: Referencerange Age High"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__referenceRange__age.high}]) as Observation_1559757824302963__reference_range__age__high
#       relationship: one_to_one
#     - join: Observation_1559757824302963__reference_range__age__low
#       view_label: "Observation 1559757824302963: Referencerange Age Low"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__referenceRange__age.low}]) as Observation_1559757824302963__reference_range__age__low
#       relationship: one_to_one
#     - join: Observation_1559757824302963__interpretation__coding
#       view_label: "Observation 1559757824302963: Interpretation Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__interpretation.coding}) as Observation_1559757824302963__interpretation__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__interpretation
#       view_label: "Observation 1559757824302963: Interpretation"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963.interpretation}]) as Observation_1559757824302963__interpretation
#       relationship: one_to_one
#     - join: Observation_1559757824302963__meta
#       view_label: "Observation 1559757824302963: Meta"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963.meta}]) as Observation_1559757824302963__meta
#       relationship: one_to_one
#     - join: Observation_1559757824302963__meta__security
#       view_label: "Observation 1559757824302963: Meta Security"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__meta.security}) as Observation_1559757824302963__meta__security
#       relationship: one_to_many
#     - join: Observation_1559757824302963__meta__tag
#       view_label: "Observation 1559757824302963: Meta Tag"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__meta.tag}) as Observation_1559757824302963__meta__tag
#       relationship: one_to_many
#     - join: Observation_1559757824302963__category__coding
#       view_label: "Observation 1559757824302963: Category Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__category.coding}) as Observation_1559757824302963__category__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__category
#       view_label: "Observation 1559757824302963: Category"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963.category}) as Observation_1559757824302963__category
#       relationship: one_to_many
#     - join: Observation_1559757824302963__device
#       view_label: "Observation 1559757824302963: Device"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963.device}]) as Observation_1559757824302963__device
#       relationship: one_to_one
#     - join: Observation_1559757824302963__device__identifier__period
#       view_label: "Observation 1559757824302963: Device Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__device__identifier.period}]) as Observation_1559757824302963__device__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__device__identifier
#       view_label: "Observation 1559757824302963: Device Identifier"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__device.identifier}]) as Observation_1559757824302963__device__identifier
#       relationship: one_to_one
#     - join: Observation_1559757824302963__device__identifier__assigner
#       view_label: "Observation 1559757824302963: Device Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__device__identifier.assigner}]) as Observation_1559757824302963__device__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__device__identifier__assigner__identifier__period
#       view_label: "Observation 1559757824302963: Device Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__device__identifier__assigner__identifier.period}]) as Observation_1559757824302963__device__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__device__identifier__assigner__identifier
#       view_label: "Observation 1559757824302963: Device Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__device__identifier__assigner.identifier}]) as Observation_1559757824302963__device__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Observation_1559757824302963__device__identifier__assigner__identifier__assigner
#       view_label: "Observation 1559757824302963: Device Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__device__identifier__assigner__identifier.assigner}]) as Observation_1559757824302963__device__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__device__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Observation 1559757824302963: Device Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__device__identifier__assigner__identifier__assigner__identifier.period}]) as Observation_1559757824302963__device__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Observation_1559757824302963__device__identifier__assigner__identifier__assigner__identifier
#       view_label: "Observation 1559757824302963: Device Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__device__identifier__assigner__identifier__assigner.identifier}]) as Observation_1559757824302963__device__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Observation_1559757824302963__device__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Observation 1559757824302963: Device Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__device__identifier__assigner__identifier__assigner__identifier.assigner}]) as Observation_1559757824302963__device__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Observation_1559757824302963__device__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Observation 1559757824302963: Device Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__device__identifier__assigner__identifier__assigner__identifier__type.coding}) as Observation_1559757824302963__device__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__device__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Observation 1559757824302963: Device Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__device__identifier__assigner__identifier__assigner__identifier.type}]) as Observation_1559757824302963__device__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__device__identifier__assigner__identifier__type__coding
#       view_label: "Observation 1559757824302963: Device Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__device__identifier__assigner__identifier__type.coding}) as Observation_1559757824302963__device__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__device__identifier__assigner__identifier__type
#       view_label: "Observation 1559757824302963: Device Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__device__identifier__assigner__identifier.type}]) as Observation_1559757824302963__device__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__device__identifier__type__coding
#       view_label: "Observation 1559757824302963: Device Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__device__identifier__type.coding}) as Observation_1559757824302963__device__identifier__type__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__device__identifier__type
#       view_label: "Observation 1559757824302963: Device Identifier Type"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__device__identifier.type}]) as Observation_1559757824302963__device__identifier__type
#       relationship: one_to_one
#     - join: Observation_1559757824302963__vital_signs_position__value__codeable_concept__coding
#       view_label: "Observation 1559757824302963: Vital Signs Position Value Codeableconcept Coding"
#       sql: LEFT JOIN UNNEST(${Observation_1559757824302963__vital_signs_position__value__codeableConcept.coding}) as Observation_1559757824302963__vital_signs_position__value__codeable_concept__coding
#       relationship: one_to_many
#     - join: Observation_1559757824302963__vital_signs_position__value__codeable_concept
#       view_label: "Observation 1559757824302963: Vital Signs Position Value Codeableconcept"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__vital_signs_position__value.codeableConcept}]) as Observation_1559757824302963__vital_signs_position__value__codeable_concept
#       relationship: one_to_one
#     - join: Observation_1559757824302963__value__range
#       view_label: "Observation 1559757824302963: Value `range`"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__value.`range`}]) as Observation_1559757824302963__value__range
#       relationship: one_to_one
#     - join: Observation_1559757824302963__value__ratio
#       view_label: "Observation 1559757824302963: Value Ratio"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__value.ratio}]) as Observation_1559757824302963__value__ratio
#       relationship: one_to_one
#     - join: Observation_1559757824302963__component
#       view_label: "Observation 1559757824302963: Component"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963.component}]) as Observation_1559757824302963__component
#       relationship: one_to_one
#     - join: Observation_1559757824302963__component__reference_range__age
#       view_label: "Observation 1559757824302963: Component Referencerange Age"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__component__referenceRange.age}]) as Observation_1559757824302963__component__reference_range__age
#       relationship: one_to_one
#     - join: Observation_1559757824302963__component__value__range
#       view_label: "Observation 1559757824302963: Component Value `range`"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__component__value.`range`}]) as Observation_1559757824302963__component__value__range
#       relationship: one_to_one
#     - join: Observation_1559757824302963__component__value__ratio
#       view_label: "Observation 1559757824302963: Component Value Ratio"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__component__value.ratio}]) as Observation_1559757824302963__component__value__ratio
#       relationship: one_to_one
#     - join: Observation_1559757824302963__reference_range__age
#       view_label: "Observation 1559757824302963: Referencerange Age"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__referenceRange.age}]) as Observation_1559757824302963__reference_range__age
#       relationship: one_to_one
#     - join: Observation_1559757824302963__vital_signs_position__value
#       view_label: "Observation 1559757824302963: Vital Signs Position Value"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963__vital_signs_position.value}]) as Observation_1559757824302963__vital_signs_position__value
#       relationship: one_to_one
#     - join: Observation_1559757824302963__vital_signs_position
#       view_label: "Observation 1559757824302963: Vital Signs Position"
#       sql: LEFT JOIN UNNEST([${Observation_1559757824302963.vital_signs_position}]) as Observation_1559757824302963__vital_signs_position
#       relationship: one_to_one

# - explore: practitioner_1559757824302963
#   joins:
#     - join: Practitioner_1559757824302963__identifier__period
#       view_label: "Practitioner 1559757824302963: Identifier Period"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__identifier.period}]) as Practitioner_1559757824302963__identifier__period
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__identifier
#       view_label: "Practitioner 1559757824302963: Identifier"
#       sql: LEFT JOIN UNNEST(${Practitioner_1559757824302963.identifier}) as Practitioner_1559757824302963__identifier
#       relationship: one_to_many
#     - join: Practitioner_1559757824302963__identifier__assigner
#       view_label: "Practitioner 1559757824302963: Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__identifier.assigner}]) as Practitioner_1559757824302963__identifier__assigner
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__identifier__assigner__identifier__period
#       view_label: "Practitioner 1559757824302963: Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__identifier__assigner__identifier.period}]) as Practitioner_1559757824302963__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__identifier__assigner__identifier
#       view_label: "Practitioner 1559757824302963: Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__identifier__assigner.identifier}]) as Practitioner_1559757824302963__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__identifier__assigner__identifier__assigner
#       view_label: "Practitioner 1559757824302963: Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__identifier__assigner__identifier.assigner}]) as Practitioner_1559757824302963__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Practitioner 1559757824302963: Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__identifier__assigner__identifier__assigner__identifier.period}]) as Practitioner_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       view_label: "Practitioner 1559757824302963: Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__identifier__assigner__identifier__assigner.identifier}]) as Practitioner_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Practitioner 1559757824302963: Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__identifier__assigner__identifier__assigner__identifier.assigner}]) as Practitioner_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Practitioner 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Practitioner_1559757824302963__identifier__assigner__identifier__assigner__identifier__type.coding}) as Practitioner_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Practitioner_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Practitioner 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__identifier__assigner__identifier__assigner__identifier.type}]) as Practitioner_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__identifier__assigner__identifier__type__coding
#       view_label: "Practitioner 1559757824302963: Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Practitioner_1559757824302963__identifier__assigner__identifier__type.coding}) as Practitioner_1559757824302963__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Practitioner_1559757824302963__identifier__assigner__identifier__type
#       view_label: "Practitioner 1559757824302963: Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__identifier__assigner__identifier.type}]) as Practitioner_1559757824302963__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__identifier__type__coding
#       view_label: "Practitioner 1559757824302963: Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Practitioner_1559757824302963__identifier__type.coding}) as Practitioner_1559757824302963__identifier__type__coding
#       relationship: one_to_many
#     - join: Practitioner_1559757824302963__identifier__type
#       view_label: "Practitioner 1559757824302963: Identifier Type"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__identifier.type}]) as Practitioner_1559757824302963__identifier__type
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__address
#       view_label: "Practitioner 1559757824302963: Address"
#       sql: LEFT JOIN UNNEST(${Practitioner_1559757824302963.address}) as Practitioner_1559757824302963__address
#       relationship: one_to_many
#     - join: Practitioner_1559757824302963__address__period
#       view_label: "Practitioner 1559757824302963: Address Period"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__address.period}]) as Practitioner_1559757824302963__address__period
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__photo
#       view_label: "Practitioner 1559757824302963: Photo"
#       sql: LEFT JOIN UNNEST(${Practitioner_1559757824302963.photo}) as Practitioner_1559757824302963__photo
#       relationship: one_to_many
#     - join: Practitioner_1559757824302963__qualification__identifier__period
#       view_label: "Practitioner 1559757824302963: Qualification Identifier Period"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification__identifier.period}]) as Practitioner_1559757824302963__qualification__identifier__period
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__identifier
#       view_label: "Practitioner 1559757824302963: Qualification Identifier"
#       sql: LEFT JOIN UNNEST(${Practitioner_1559757824302963__qualification.identifier}) as Practitioner_1559757824302963__qualification__identifier
#       relationship: one_to_many
#     - join: Practitioner_1559757824302963__qualification__identifier__assigner
#       view_label: "Practitioner 1559757824302963: Qualification Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification__identifier.assigner}]) as Practitioner_1559757824302963__qualification__identifier__assigner
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__identifier__assigner__identifier__period
#       view_label: "Practitioner 1559757824302963: Qualification Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification__identifier__assigner__identifier.period}]) as Practitioner_1559757824302963__qualification__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__identifier__assigner__identifier
#       view_label: "Practitioner 1559757824302963: Qualification Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification__identifier__assigner.identifier}]) as Practitioner_1559757824302963__qualification__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__identifier__assigner__identifier__assigner
#       view_label: "Practitioner 1559757824302963: Qualification Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification__identifier__assigner__identifier.assigner}]) as Practitioner_1559757824302963__qualification__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Practitioner 1559757824302963: Qualification Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification__identifier__assigner__identifier__assigner__identifier.period}]) as Practitioner_1559757824302963__qualification__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__identifier__assigner__identifier__assigner__identifier
#       view_label: "Practitioner 1559757824302963: Qualification Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification__identifier__assigner__identifier__assigner.identifier}]) as Practitioner_1559757824302963__qualification__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Practitioner 1559757824302963: Qualification Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification__identifier__assigner__identifier__assigner__identifier.assigner}]) as Practitioner_1559757824302963__qualification__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Practitioner 1559757824302963: Qualification Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Practitioner_1559757824302963__qualification__identifier__assigner__identifier__assigner__identifier__type.coding}) as Practitioner_1559757824302963__qualification__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Practitioner_1559757824302963__qualification__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Practitioner 1559757824302963: Qualification Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification__identifier__assigner__identifier__assigner__identifier.type}]) as Practitioner_1559757824302963__qualification__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__identifier__assigner__identifier__type__coding
#       view_label: "Practitioner 1559757824302963: Qualification Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Practitioner_1559757824302963__qualification__identifier__assigner__identifier__type.coding}) as Practitioner_1559757824302963__qualification__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Practitioner_1559757824302963__qualification__identifier__assigner__identifier__type
#       view_label: "Practitioner 1559757824302963: Qualification Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification__identifier__assigner__identifier.type}]) as Practitioner_1559757824302963__qualification__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__identifier__type__coding
#       view_label: "Practitioner 1559757824302963: Qualification Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Practitioner_1559757824302963__qualification__identifier__type.coding}) as Practitioner_1559757824302963__qualification__identifier__type__coding
#       relationship: one_to_many
#     - join: Practitioner_1559757824302963__qualification__identifier__type
#       view_label: "Practitioner 1559757824302963: Qualification Identifier Type"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification__identifier.type}]) as Practitioner_1559757824302963__qualification__identifier__type
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__period
#       view_label: "Practitioner 1559757824302963: Qualification Period"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification.period}]) as Practitioner_1559757824302963__qualification__period
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__code__coding
#       view_label: "Practitioner 1559757824302963: Qualification Code Coding"
#       sql: LEFT JOIN UNNEST(${Practitioner_1559757824302963__qualification__code.coding}) as Practitioner_1559757824302963__qualification__code__coding
#       relationship: one_to_many
#     - join: Practitioner_1559757824302963__qualification__code
#       view_label: "Practitioner 1559757824302963: Qualification Code"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification.code}]) as Practitioner_1559757824302963__qualification__code
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__issuer
#       view_label: "Practitioner 1559757824302963: Qualification Issuer"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification.issuer}]) as Practitioner_1559757824302963__qualification__issuer
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__issuer__identifier__period
#       view_label: "Practitioner 1559757824302963: Qualification Issuer Identifier Period"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification__issuer__identifier.period}]) as Practitioner_1559757824302963__qualification__issuer__identifier__period
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__issuer__identifier
#       view_label: "Practitioner 1559757824302963: Qualification Issuer Identifier"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification__issuer.identifier}]) as Practitioner_1559757824302963__qualification__issuer__identifier
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__issuer__identifier__assigner
#       view_label: "Practitioner 1559757824302963: Qualification Issuer Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification__issuer__identifier.assigner}]) as Practitioner_1559757824302963__qualification__issuer__identifier__assigner
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__period
#       view_label: "Practitioner 1559757824302963: Qualification Issuer Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier.period}]) as Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier
#       view_label: "Practitioner 1559757824302963: Qualification Issuer Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification__issuer__identifier__assigner.identifier}]) as Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__assigner
#       view_label: "Practitioner 1559757824302963: Qualification Issuer Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier.assigner}]) as Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Practitioner 1559757824302963: Qualification Issuer Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__assigner__identifier.period}]) as Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__assigner__identifier
#       view_label: "Practitioner 1559757824302963: Qualification Issuer Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__assigner.identifier}]) as Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Practitioner 1559757824302963: Qualification Issuer Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__assigner__identifier.assigner}]) as Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Practitioner 1559757824302963: Qualification Issuer Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__assigner__identifier__type.coding}) as Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Practitioner 1559757824302963: Qualification Issuer Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__assigner__identifier.type}]) as Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__type__coding
#       view_label: "Practitioner 1559757824302963: Qualification Issuer Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__type.coding}) as Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__type
#       view_label: "Practitioner 1559757824302963: Qualification Issuer Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier.type}]) as Practitioner_1559757824302963__qualification__issuer__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__qualification__issuer__identifier__type__coding
#       view_label: "Practitioner 1559757824302963: Qualification Issuer Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Practitioner_1559757824302963__qualification__issuer__identifier__type.coding}) as Practitioner_1559757824302963__qualification__issuer__identifier__type__coding
#       relationship: one_to_many
#     - join: Practitioner_1559757824302963__qualification__issuer__identifier__type
#       view_label: "Practitioner 1559757824302963: Qualification Issuer Identifier Type"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__qualification__issuer__identifier.type}]) as Practitioner_1559757824302963__qualification__issuer__identifier__type
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__meta
#       view_label: "Practitioner 1559757824302963: Meta"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963.meta}]) as Practitioner_1559757824302963__meta
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__meta__security
#       view_label: "Practitioner 1559757824302963: Meta Security"
#       sql: LEFT JOIN UNNEST(${Practitioner_1559757824302963__meta.security}) as Practitioner_1559757824302963__meta__security
#       relationship: one_to_many
#     - join: Practitioner_1559757824302963__meta__tag
#       view_label: "Practitioner 1559757824302963: Meta Tag"
#       sql: LEFT JOIN UNNEST(${Practitioner_1559757824302963__meta.tag}) as Practitioner_1559757824302963__meta__tag
#       relationship: one_to_many
#     - join: Practitioner_1559757824302963__name
#       view_label: "Practitioner 1559757824302963: Name"
#       sql: LEFT JOIN UNNEST(${Practitioner_1559757824302963.name}) as Practitioner_1559757824302963__name
#       relationship: one_to_many
#     - join: Practitioner_1559757824302963__name__period
#       view_label: "Practitioner 1559757824302963: Name Period"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__name.period}]) as Practitioner_1559757824302963__name__period
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__telecom__period
#       view_label: "Practitioner 1559757824302963: Telecom Period"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963__telecom.period}]) as Practitioner_1559757824302963__telecom__period
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__telecom
#       view_label: "Practitioner 1559757824302963: Telecom"
#       sql: LEFT JOIN UNNEST(${Practitioner_1559757824302963.telecom}) as Practitioner_1559757824302963__telecom
#       relationship: one_to_many
#     - join: Practitioner_1559757824302963__text
#       view_label: "Practitioner 1559757824302963: Text"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963.text}]) as Practitioner_1559757824302963__text
#       relationship: one_to_one
#     - join: Practitioner_1559757824302963__communication__coding
#       view_label: "Practitioner 1559757824302963: Communication Coding"
#       sql: LEFT JOIN UNNEST(${Practitioner_1559757824302963__communication.coding}) as Practitioner_1559757824302963__communication__coding
#       relationship: one_to_many
#     - join: Practitioner_1559757824302963__communication
#       view_label: "Practitioner 1559757824302963: Communication"
#       sql: LEFT JOIN UNNEST(${Practitioner_1559757824302963.communication}) as Practitioner_1559757824302963__communication
#       relationship: one_to_many
#     - join: Practitioner_1559757824302963__qualification
#       view_label: "Practitioner 1559757824302963: Qualification"
#       sql: LEFT JOIN UNNEST([${Practitioner_1559757824302963.qualification}]) as Practitioner_1559757824302963__qualification
#       relationship: one_to_one

# - explore: procedure_1559757824302963
#   joins:
#     - join: Procedure_1559757824302963__note__author__reference
#       view_label: "Procedure 1559757824302963: Note Author Reference"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__note__author.reference}]) as Procedure_1559757824302963__note__author__reference
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__note__author__reference__identifier__period
#       view_label: "Procedure 1559757824302963: Note Author Reference Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__note__author__reference__identifier.period}]) as Procedure_1559757824302963__note__author__reference__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__note__author__reference__identifier
#       view_label: "Procedure 1559757824302963: Note Author Reference Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__note__author__reference.identifier}]) as Procedure_1559757824302963__note__author__reference__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__note__author__reference__identifier__assigner
#       view_label: "Procedure 1559757824302963: Note Author Reference Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__note__author__reference__identifier.assigner}]) as Procedure_1559757824302963__note__author__reference__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Note Author Reference Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Note Author Reference Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__note__author__reference__identifier__assigner.identifier}]) as Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner.identifier}]) as Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Note Author Reference Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Note Author Reference Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Note Author Reference Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__note__author__reference__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__note__author__reference__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Note Author Reference Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__note__author__reference__identifier__type.coding}) as Procedure_1559757824302963__note__author__reference__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__note__author__reference__identifier__type
#       view_label: "Procedure 1559757824302963: Note Author Reference Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__note__author__reference__identifier.type}]) as Procedure_1559757824302963__note__author__reference__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__note__author
#       view_label: "Procedure 1559757824302963: Note Author"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__note.author}]) as Procedure_1559757824302963__note__author
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__note
#       view_label: "Procedure 1559757824302963: Note"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963.note}) as Procedure_1559757824302963__note
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__part_of
#       view_label: "Procedure 1559757824302963: Partof"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963.partOf}) as Procedure_1559757824302963__part_of
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__part_of__identifier__period
#       view_label: "Procedure 1559757824302963: Partof Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__partOf__identifier.period}]) as Procedure_1559757824302963__part_of__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__part_of__identifier
#       view_label: "Procedure 1559757824302963: Partof Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__partOf.identifier}]) as Procedure_1559757824302963__part_of__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__part_of__identifier__assigner
#       view_label: "Procedure 1559757824302963: Partof Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__partOf__identifier.assigner}]) as Procedure_1559757824302963__part_of__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__part_of__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Partof Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__partOf__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__part_of__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__part_of__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Partof Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__partOf__identifier__assigner.identifier}]) as Procedure_1559757824302963__part_of__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__part_of__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Partof Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__partOf__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__part_of__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Partof Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__partOf__identifier__assigner__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Partof Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__partOf__identifier__assigner__identifier__assigner.identifier}]) as Procedure_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Partof Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__partOf__identifier__assigner__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Partof Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__partOf__identifier__assigner__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Partof Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__partOf__identifier__assigner__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__part_of__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__part_of__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Partof Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__partOf__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__part_of__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__part_of__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Partof Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__partOf__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__part_of__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__part_of__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Partof Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__partOf__identifier__type.coding}) as Procedure_1559757824302963__part_of__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__part_of__identifier__type
#       view_label: "Procedure 1559757824302963: Partof Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__partOf__identifier.type}]) as Procedure_1559757824302963__part_of__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__complication__coding
#       view_label: "Procedure 1559757824302963: Complication Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__complication.coding}) as Procedure_1559757824302963__complication__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__complication
#       view_label: "Procedure 1559757824302963: Complication"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963.complication}) as Procedure_1559757824302963__complication
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__code__coding
#       view_label: "Procedure 1559757824302963: Code Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__code.coding}) as Procedure_1559757824302963__code__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__code
#       view_label: "Procedure 1559757824302963: Code"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963.code}]) as Procedure_1559757824302963__code
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__subject
#       view_label: "Procedure 1559757824302963: Subject"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963.subject}]) as Procedure_1559757824302963__subject
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__subject__identifier__period
#       view_label: "Procedure 1559757824302963: Subject Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__subject__identifier.period}]) as Procedure_1559757824302963__subject__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__subject__identifier
#       view_label: "Procedure 1559757824302963: Subject Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__subject.identifier}]) as Procedure_1559757824302963__subject__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__subject__identifier__assigner
#       view_label: "Procedure 1559757824302963: Subject Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__subject__identifier.assigner}]) as Procedure_1559757824302963__subject__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__subject__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Subject Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__subject__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__subject__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__subject__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Subject Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__subject__identifier__assigner.identifier}]) as Procedure_1559757824302963__subject__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__subject__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Subject Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__subject__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__subject__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__subject__identifier__assigner__identifier__assigner.identifier}]) as Procedure_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Subject Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__subject__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__subject__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Subject Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__subject__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__subject__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__subject__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Subject Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__subject__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__subject__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__subject__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Subject Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__subject__identifier__type.coding}) as Procedure_1559757824302963__subject__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__subject__identifier__type
#       view_label: "Procedure 1559757824302963: Subject Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__subject__identifier.type}]) as Procedure_1559757824302963__subject__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__reason_reference
#       view_label: "Procedure 1559757824302963: Reasonreference"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963.reasonReference}) as Procedure_1559757824302963__reason_reference
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__reason_reference__identifier__period
#       view_label: "Procedure 1559757824302963: Reasonreference Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__reasonReference__identifier.period}]) as Procedure_1559757824302963__reason_reference__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__reason_reference__identifier
#       view_label: "Procedure 1559757824302963: Reasonreference Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__reasonReference.identifier}]) as Procedure_1559757824302963__reason_reference__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__reason_reference__identifier__assigner
#       view_label: "Procedure 1559757824302963: Reasonreference Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__reasonReference__identifier.assigner}]) as Procedure_1559757824302963__reason_reference__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__reason_reference__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Reasonreference Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__reasonReference__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__reason_reference__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__reason_reference__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Reasonreference Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__reasonReference__identifier__assigner.identifier}]) as Procedure_1559757824302963__reason_reference__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__reason_reference__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Reasonreference Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__reasonReference__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__reason_reference__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Reasonreference Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__reasonReference__identifier__assigner__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Reasonreference Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__reasonReference__identifier__assigner__identifier__assigner.identifier}]) as Procedure_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Reasonreference Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__reasonReference__identifier__assigner__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Reasonreference Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__reasonReference__identifier__assigner__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Reasonreference Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__reasonReference__identifier__assigner__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__reason_reference__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__reason_reference__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Reasonreference Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__reasonReference__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__reason_reference__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__reason_reference__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Reasonreference Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__reasonReference__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__reason_reference__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__reason_reference__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Reasonreference Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__reasonReference__identifier__type.coding}) as Procedure_1559757824302963__reason_reference__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__reason_reference__identifier__type
#       view_label: "Procedure 1559757824302963: Reasonreference Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__reasonReference__identifier.type}]) as Procedure_1559757824302963__reason_reference__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__follow_up__coding
#       view_label: "Procedure 1559757824302963: Followup Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__followUp.coding}) as Procedure_1559757824302963__follow_up__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__follow_up
#       view_label: "Procedure 1559757824302963: Followup"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963.followUp}) as Procedure_1559757824302963__follow_up
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__context
#       view_label: "Procedure 1559757824302963: Context"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963.context}]) as Procedure_1559757824302963__context
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__context__identifier__period
#       view_label: "Procedure 1559757824302963: Context Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__context__identifier.period}]) as Procedure_1559757824302963__context__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__context__identifier
#       view_label: "Procedure 1559757824302963: Context Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__context.identifier}]) as Procedure_1559757824302963__context__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__context__identifier__assigner
#       view_label: "Procedure 1559757824302963: Context Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__context__identifier.assigner}]) as Procedure_1559757824302963__context__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__context__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Context Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__context__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__context__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__context__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Context Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__context__identifier__assigner.identifier}]) as Procedure_1559757824302963__context__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__context__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Context Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__context__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__context__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__context__identifier__assigner__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__context__identifier__assigner__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__context__identifier__assigner__identifier__assigner.identifier}]) as Procedure_1559757824302963__context__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__context__identifier__assigner__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Context Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__context__identifier__assigner__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__context__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__context__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Context Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__context__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__context__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__context__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Context Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__context__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__context__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__context__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Context Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__context__identifier__type.coding}) as Procedure_1559757824302963__context__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__context__identifier__type
#       view_label: "Procedure 1559757824302963: Context Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__context__identifier.type}]) as Procedure_1559757824302963__context__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__definition
#       view_label: "Procedure 1559757824302963: Definition"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963.definition}) as Procedure_1559757824302963__definition
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__definition__identifier__period
#       view_label: "Procedure 1559757824302963: Definition Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__definition__identifier.period}]) as Procedure_1559757824302963__definition__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__definition__identifier
#       view_label: "Procedure 1559757824302963: Definition Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__definition.identifier}]) as Procedure_1559757824302963__definition__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__definition__identifier__assigner
#       view_label: "Procedure 1559757824302963: Definition Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__definition__identifier.assigner}]) as Procedure_1559757824302963__definition__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__definition__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Definition Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__definition__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__definition__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__definition__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Definition Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__definition__identifier__assigner.identifier}]) as Procedure_1559757824302963__definition__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__definition__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Definition Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__definition__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__definition__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Definition Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Definition Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__definition__identifier__assigner__identifier__assigner.identifier}]) as Procedure_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Definition Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Definition Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Definition Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__definition__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__definition__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Definition Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__definition__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__definition__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__definition__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Definition Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__definition__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__definition__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__definition__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Definition Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__definition__identifier__type.coding}) as Procedure_1559757824302963__definition__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__definition__identifier__type
#       view_label: "Procedure 1559757824302963: Definition Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__definition__identifier.type}]) as Procedure_1559757824302963__definition__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__used_code__coding
#       view_label: "Procedure 1559757824302963: Usedcode Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__usedCode.coding}) as Procedure_1559757824302963__used_code__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__used_code
#       view_label: "Procedure 1559757824302963: Usedcode"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963.usedCode}) as Procedure_1559757824302963__used_code
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__reason_code__coding
#       view_label: "Procedure 1559757824302963: Reasoncode Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__reasonCode.coding}) as Procedure_1559757824302963__reason_code__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__reason_code
#       view_label: "Procedure 1559757824302963: Reasoncode"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963.reasonCode}) as Procedure_1559757824302963__reason_code
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__text
#       view_label: "Procedure 1559757824302963: Text"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963.text}]) as Procedure_1559757824302963__text
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__based_on
#       view_label: "Procedure 1559757824302963: Basedon"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963.basedOn}) as Procedure_1559757824302963__based_on
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__based_on__identifier__period
#       view_label: "Procedure 1559757824302963: Basedon Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__basedOn__identifier.period}]) as Procedure_1559757824302963__based_on__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__based_on__identifier
#       view_label: "Procedure 1559757824302963: Basedon Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__basedOn.identifier}]) as Procedure_1559757824302963__based_on__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__based_on__identifier__assigner
#       view_label: "Procedure 1559757824302963: Basedon Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__basedOn__identifier.assigner}]) as Procedure_1559757824302963__based_on__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__based_on__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Basedon Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__basedOn__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__based_on__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__based_on__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Basedon Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__basedOn__identifier__assigner.identifier}]) as Procedure_1559757824302963__based_on__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__based_on__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Basedon Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__basedOn__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__based_on__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Basedon Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__basedOn__identifier__assigner__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Basedon Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__basedOn__identifier__assigner__identifier__assigner.identifier}]) as Procedure_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Basedon Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__basedOn__identifier__assigner__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Basedon Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__basedOn__identifier__assigner__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Basedon Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__basedOn__identifier__assigner__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__based_on__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__based_on__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Basedon Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__basedOn__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__based_on__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__based_on__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Basedon Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__basedOn__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__based_on__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__based_on__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Basedon Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__basedOn__identifier__type.coding}) as Procedure_1559757824302963__based_on__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__based_on__identifier__type
#       view_label: "Procedure 1559757824302963: Basedon Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__basedOn__identifier.type}]) as Procedure_1559757824302963__based_on__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__outcome__coding
#       view_label: "Procedure 1559757824302963: Outcome Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__outcome.coding}) as Procedure_1559757824302963__outcome__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__outcome
#       view_label: "Procedure 1559757824302963: Outcome"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963.outcome}]) as Procedure_1559757824302963__outcome
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__identifier__period
#       view_label: "Procedure 1559757824302963: Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__identifier.period}]) as Procedure_1559757824302963__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__identifier
#       view_label: "Procedure 1559757824302963: Identifier"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963.identifier}) as Procedure_1559757824302963__identifier
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__identifier__assigner
#       view_label: "Procedure 1559757824302963: Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__identifier.assigner}]) as Procedure_1559757824302963__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__identifier__assigner.identifier}]) as Procedure_1559757824302963__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__identifier__assigner__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__identifier__assigner__identifier__assigner.identifier}]) as Procedure_1559757824302963__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__identifier__assigner__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__identifier__assigner__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__identifier__assigner__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__identifier__type.coding}) as Procedure_1559757824302963__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__identifier__type
#       view_label: "Procedure 1559757824302963: Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__identifier.type}]) as Procedure_1559757824302963__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__complication_detail
#       view_label: "Procedure 1559757824302963: Complicationdetail"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963.complicationDetail}) as Procedure_1559757824302963__complication_detail
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__complication_detail__identifier__period
#       view_label: "Procedure 1559757824302963: Complicationdetail Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__complicationDetail__identifier.period}]) as Procedure_1559757824302963__complication_detail__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__complication_detail__identifier
#       view_label: "Procedure 1559757824302963: Complicationdetail Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__complicationDetail.identifier}]) as Procedure_1559757824302963__complication_detail__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__complication_detail__identifier__assigner
#       view_label: "Procedure 1559757824302963: Complicationdetail Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__complicationDetail__identifier.assigner}]) as Procedure_1559757824302963__complication_detail__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__complication_detail__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Complicationdetail Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__complicationDetail__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__complication_detail__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__complication_detail__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Complicationdetail Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__complicationDetail__identifier__assigner.identifier}]) as Procedure_1559757824302963__complication_detail__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__complication_detail__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Complicationdetail Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__complicationDetail__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__complication_detail__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__complication_detail__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Complicationdetail Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__complicationDetail__identifier__assigner__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__complication_detail__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__complication_detail__identifier__assigner__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Complicationdetail Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__complicationDetail__identifier__assigner__identifier__assigner.identifier}]) as Procedure_1559757824302963__complication_detail__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__complication_detail__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Complicationdetail Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__complicationDetail__identifier__assigner__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__complication_detail__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__complication_detail__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Complicationdetail Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__complicationDetail__identifier__assigner__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__complication_detail__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__complication_detail__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Complicationdetail Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__complicationDetail__identifier__assigner__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__complication_detail__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__complication_detail__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Complicationdetail Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__complicationDetail__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__complication_detail__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__complication_detail__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Complicationdetail Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__complicationDetail__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__complication_detail__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__complication_detail__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Complicationdetail Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__complicationDetail__identifier__type.coding}) as Procedure_1559757824302963__complication_detail__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__complication_detail__identifier__type
#       view_label: "Procedure 1559757824302963: Complicationdetail Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__complicationDetail__identifier.type}]) as Procedure_1559757824302963__complication_detail__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__actor
#       view_label: "Procedure 1559757824302963: Performer Actor"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer.actor}]) as Procedure_1559757824302963__performer__actor
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__actor__identifier__period
#       view_label: "Procedure 1559757824302963: Performer Actor Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__actor__identifier.period}]) as Procedure_1559757824302963__performer__actor__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__actor__identifier
#       view_label: "Procedure 1559757824302963: Performer Actor Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__actor.identifier}]) as Procedure_1559757824302963__performer__actor__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__actor__identifier__assigner
#       view_label: "Procedure 1559757824302963: Performer Actor Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__actor__identifier.assigner}]) as Procedure_1559757824302963__performer__actor__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Performer Actor Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__actor__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__actor__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Performer Actor Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__actor__identifier__assigner.identifier}]) as Procedure_1559757824302963__performer__actor__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Performer Actor Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__actor__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Performer Actor Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Performer Actor Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__assigner.identifier}]) as Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Performer Actor Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Performer Actor Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Performer Actor Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Performer Actor Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Performer Actor Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__actor__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__performer__actor__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__actor__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Performer Actor Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__performer__actor__identifier__type.coding}) as Procedure_1559757824302963__performer__actor__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__performer__actor__identifier__type
#       view_label: "Procedure 1559757824302963: Performer Actor Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__actor__identifier.type}]) as Procedure_1559757824302963__performer__actor__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__role__coding
#       view_label: "Procedure 1559757824302963: Performer Role Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__performer__role.coding}) as Procedure_1559757824302963__performer__role__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__performer__role
#       view_label: "Procedure 1559757824302963: Performer Role"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer.role}]) as Procedure_1559757824302963__performer__role
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__on_behalf_of
#       view_label: "Procedure 1559757824302963: Performer Onbehalfof"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer.onBehalfOf}]) as Procedure_1559757824302963__performer__on_behalf_of
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__on_behalf_of__identifier__period
#       view_label: "Procedure 1559757824302963: Performer Onbehalfof Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__onBehalfOf__identifier.period}]) as Procedure_1559757824302963__performer__on_behalf_of__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__on_behalf_of__identifier
#       view_label: "Procedure 1559757824302963: Performer Onbehalfof Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__onBehalfOf.identifier}]) as Procedure_1559757824302963__performer__on_behalf_of__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__on_behalf_of__identifier__assigner
#       view_label: "Procedure 1559757824302963: Performer Onbehalfof Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__onBehalfOf__identifier.assigner}]) as Procedure_1559757824302963__performer__on_behalf_of__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Performer Onbehalfof Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__onBehalfOf__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Performer Onbehalfof Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__onBehalfOf__identifier__assigner.identifier}]) as Procedure_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Performer Onbehalfof Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__onBehalfOf__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Performer Onbehalfof Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__onBehalfOf__identifier__assigner__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Performer Onbehalfof Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__onBehalfOf__identifier__assigner__identifier__assigner.identifier}]) as Procedure_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Performer Onbehalfof Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__onBehalfOf__identifier__assigner__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Performer Onbehalfof Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__performer__onBehalfOf__identifier__assigner__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Performer Onbehalfof Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__onBehalfOf__identifier__assigner__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Performer Onbehalfof Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__performer__onBehalfOf__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Performer Onbehalfof Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__onBehalfOf__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__performer__on_behalf_of__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer__on_behalf_of__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Performer Onbehalfof Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__performer__onBehalfOf__identifier__type.coding}) as Procedure_1559757824302963__performer__on_behalf_of__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__performer__on_behalf_of__identifier__type
#       view_label: "Procedure 1559757824302963: Performer Onbehalfof Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performer__onBehalfOf__identifier.type}]) as Procedure_1559757824302963__performer__on_behalf_of__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__used_reference
#       view_label: "Procedure 1559757824302963: Usedreference"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963.usedReference}) as Procedure_1559757824302963__used_reference
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__used_reference__identifier__period
#       view_label: "Procedure 1559757824302963: Usedreference Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__usedReference__identifier.period}]) as Procedure_1559757824302963__used_reference__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__used_reference__identifier
#       view_label: "Procedure 1559757824302963: Usedreference Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__usedReference.identifier}]) as Procedure_1559757824302963__used_reference__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__used_reference__identifier__assigner
#       view_label: "Procedure 1559757824302963: Usedreference Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__usedReference__identifier.assigner}]) as Procedure_1559757824302963__used_reference__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__used_reference__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Usedreference Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__usedReference__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__used_reference__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__used_reference__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Usedreference Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__usedReference__identifier__assigner.identifier}]) as Procedure_1559757824302963__used_reference__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__used_reference__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Usedreference Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__usedReference__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__used_reference__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__used_reference__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Usedreference Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__usedReference__identifier__assigner__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__used_reference__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__used_reference__identifier__assigner__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Usedreference Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__usedReference__identifier__assigner__identifier__assigner.identifier}]) as Procedure_1559757824302963__used_reference__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__used_reference__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Usedreference Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__usedReference__identifier__assigner__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__used_reference__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__used_reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Usedreference Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__usedReference__identifier__assigner__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__used_reference__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__used_reference__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Usedreference Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__usedReference__identifier__assigner__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__used_reference__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__used_reference__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Usedreference Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__usedReference__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__used_reference__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__used_reference__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Usedreference Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__usedReference__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__used_reference__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__used_reference__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Usedreference Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__usedReference__identifier__type.coding}) as Procedure_1559757824302963__used_reference__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__used_reference__identifier__type
#       view_label: "Procedure 1559757824302963: Usedreference Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__usedReference__identifier.type}]) as Procedure_1559757824302963__used_reference__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__focal_device__action__coding
#       view_label: "Procedure 1559757824302963: Focaldevice Action Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__focalDevice__action.coding}) as Procedure_1559757824302963__focal_device__action__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__focal_device__action
#       view_label: "Procedure 1559757824302963: Focaldevice Action"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__focalDevice.action}]) as Procedure_1559757824302963__focal_device__action
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__focal_device__manipulated
#       view_label: "Procedure 1559757824302963: Focaldevice Manipulated"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__focalDevice.manipulated}]) as Procedure_1559757824302963__focal_device__manipulated
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__focal_device__manipulated__identifier__period
#       view_label: "Procedure 1559757824302963: Focaldevice Manipulated Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__focalDevice__manipulated__identifier.period}]) as Procedure_1559757824302963__focal_device__manipulated__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__focal_device__manipulated__identifier
#       view_label: "Procedure 1559757824302963: Focaldevice Manipulated Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__focalDevice__manipulated.identifier}]) as Procedure_1559757824302963__focal_device__manipulated__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__focal_device__manipulated__identifier__assigner
#       view_label: "Procedure 1559757824302963: Focaldevice Manipulated Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__focalDevice__manipulated__identifier.assigner}]) as Procedure_1559757824302963__focal_device__manipulated__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__focal_device__manipulated__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Focaldevice Manipulated Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__focalDevice__manipulated__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__focal_device__manipulated__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__focal_device__manipulated__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Focaldevice Manipulated Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__focalDevice__manipulated__identifier__assigner.identifier}]) as Procedure_1559757824302963__focal_device__manipulated__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__focal_device__manipulated__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Focaldevice Manipulated Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__focalDevice__manipulated__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__focal_device__manipulated__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__focal_device__manipulated__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Focaldevice Manipulated Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__focalDevice__manipulated__identifier__assigner__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__focal_device__manipulated__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__focal_device__manipulated__identifier__assigner__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Focaldevice Manipulated Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__focalDevice__manipulated__identifier__assigner__identifier__assigner.identifier}]) as Procedure_1559757824302963__focal_device__manipulated__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__focal_device__manipulated__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Focaldevice Manipulated Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__focalDevice__manipulated__identifier__assigner__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__focal_device__manipulated__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__focal_device__manipulated__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Focaldevice Manipulated Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__focalDevice__manipulated__identifier__assigner__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__focal_device__manipulated__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__focal_device__manipulated__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Focaldevice Manipulated Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__focalDevice__manipulated__identifier__assigner__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__focal_device__manipulated__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__focal_device__manipulated__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Focaldevice Manipulated Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__focalDevice__manipulated__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__focal_device__manipulated__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__focal_device__manipulated__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Focaldevice Manipulated Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__focalDevice__manipulated__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__focal_device__manipulated__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__focal_device__manipulated__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Focaldevice Manipulated Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__focalDevice__manipulated__identifier__type.coding}) as Procedure_1559757824302963__focal_device__manipulated__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__focal_device__manipulated__identifier__type
#       view_label: "Procedure 1559757824302963: Focaldevice Manipulated Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__focalDevice__manipulated__identifier.type}]) as Procedure_1559757824302963__focal_device__manipulated__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performed
#       view_label: "Procedure 1559757824302963: Performed"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963.performed}]) as Procedure_1559757824302963__performed
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performed__period
#       view_label: "Procedure 1559757824302963: Performed Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__performed.period}]) as Procedure_1559757824302963__performed__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__body_site__coding
#       view_label: "Procedure 1559757824302963: Bodysite Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__bodySite.coding}) as Procedure_1559757824302963__body_site__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__body_site
#       view_label: "Procedure 1559757824302963: Bodysite"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963.bodySite}) as Procedure_1559757824302963__body_site
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__meta
#       view_label: "Procedure 1559757824302963: Meta"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963.meta}]) as Procedure_1559757824302963__meta
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__meta__security
#       view_label: "Procedure 1559757824302963: Meta Security"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__meta.security}) as Procedure_1559757824302963__meta__security
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__meta__tag
#       view_label: "Procedure 1559757824302963: Meta Tag"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__meta.tag}) as Procedure_1559757824302963__meta__tag
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__report
#       view_label: "Procedure 1559757824302963: Report"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963.report}) as Procedure_1559757824302963__report
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__report__identifier__period
#       view_label: "Procedure 1559757824302963: Report Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__report__identifier.period}]) as Procedure_1559757824302963__report__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__report__identifier
#       view_label: "Procedure 1559757824302963: Report Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__report.identifier}]) as Procedure_1559757824302963__report__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__report__identifier__assigner
#       view_label: "Procedure 1559757824302963: Report Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__report__identifier.assigner}]) as Procedure_1559757824302963__report__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__report__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Report Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__report__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__report__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__report__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Report Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__report__identifier__assigner.identifier}]) as Procedure_1559757824302963__report__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__report__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Report Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__report__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__report__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__report__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Report Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__report__identifier__assigner__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__report__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__report__identifier__assigner__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Report Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__report__identifier__assigner__identifier__assigner.identifier}]) as Procedure_1559757824302963__report__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__report__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Report Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__report__identifier__assigner__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__report__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__report__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Report Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__report__identifier__assigner__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__report__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__report__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Report Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__report__identifier__assigner__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__report__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__report__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Report Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__report__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__report__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__report__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Report Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__report__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__report__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__report__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Report Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__report__identifier__type.coding}) as Procedure_1559757824302963__report__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__report__identifier__type
#       view_label: "Procedure 1559757824302963: Report Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__report__identifier.type}]) as Procedure_1559757824302963__report__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__location
#       view_label: "Procedure 1559757824302963: Location"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963.location}]) as Procedure_1559757824302963__location
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__location__identifier__period
#       view_label: "Procedure 1559757824302963: Location Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__location__identifier.period}]) as Procedure_1559757824302963__location__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__location__identifier
#       view_label: "Procedure 1559757824302963: Location Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__location.identifier}]) as Procedure_1559757824302963__location__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__location__identifier__assigner
#       view_label: "Procedure 1559757824302963: Location Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__location__identifier.assigner}]) as Procedure_1559757824302963__location__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__location__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Location Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__location__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__location__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__location__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Location Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__location__identifier__assigner.identifier}]) as Procedure_1559757824302963__location__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__location__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Location Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__location__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__location__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__location__identifier__assigner__identifier__assigner__identifier__period
#       view_label: "Procedure 1559757824302963: Location Identifier Assigner Identifier Assigner Identifier Period"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__location__identifier__assigner__identifier__assigner__identifier.period}]) as Procedure_1559757824302963__location__identifier__assigner__identifier__assigner__identifier__period
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__location__identifier__assigner__identifier__assigner__identifier
#       view_label: "Procedure 1559757824302963: Location Identifier Assigner Identifier Assigner Identifier"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__location__identifier__assigner__identifier__assigner.identifier}]) as Procedure_1559757824302963__location__identifier__assigner__identifier__assigner__identifier
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__location__identifier__assigner__identifier__assigner__identifier__assigner
#       view_label: "Procedure 1559757824302963: Location Identifier Assigner Identifier Assigner Identifier Assigner"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__location__identifier__assigner__identifier__assigner__identifier.assigner}]) as Procedure_1559757824302963__location__identifier__assigner__identifier__assigner__identifier__assigner
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__location__identifier__assigner__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Location Identifier Assigner Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__location__identifier__assigner__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__location__identifier__assigner__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__location__identifier__assigner__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Location Identifier Assigner Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__location__identifier__assigner__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__location__identifier__assigner__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__location__identifier__assigner__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Location Identifier Assigner Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__location__identifier__assigner__identifier__type.coding}) as Procedure_1559757824302963__location__identifier__assigner__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__location__identifier__assigner__identifier__type
#       view_label: "Procedure 1559757824302963: Location Identifier Assigner Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__location__identifier__assigner__identifier.type}]) as Procedure_1559757824302963__location__identifier__assigner__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__location__identifier__type__coding
#       view_label: "Procedure 1559757824302963: Location Identifier Type Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__location__identifier__type.coding}) as Procedure_1559757824302963__location__identifier__type__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__location__identifier__type
#       view_label: "Procedure 1559757824302963: Location Identifier Type"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963__location__identifier.type}]) as Procedure_1559757824302963__location__identifier__type
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__not_done_reason__coding
#       view_label: "Procedure 1559757824302963: Notdonereason Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__notDoneReason.coding}) as Procedure_1559757824302963__not_done_reason__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__not_done_reason
#       view_label: "Procedure 1559757824302963: Notdonereason"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963.notDoneReason}]) as Procedure_1559757824302963__not_done_reason
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__category__coding
#       view_label: "Procedure 1559757824302963: Category Coding"
#       sql: LEFT JOIN UNNEST(${Procedure_1559757824302963__category.coding}) as Procedure_1559757824302963__category__coding
#       relationship: one_to_many
#     - join: Procedure_1559757824302963__category
#       view_label: "Procedure 1559757824302963: Category"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963.category}]) as Procedure_1559757824302963__category
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__performer
#       view_label: "Procedure 1559757824302963: Performer"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963.performer}]) as Procedure_1559757824302963__performer
#       relationship: one_to_one
#     - join: Procedure_1559757824302963__focal_device
#       view_label: "Procedure 1559757824302963: Focaldevice"
#       sql: LEFT JOIN UNNEST([${Procedure_1559757824302963.focalDevice}]) as Procedure_1559757824302963__focal_device
#       relationship: one_to_one
