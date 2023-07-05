public type AccountSearchParameters record {|
string _patient?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type AdverseEventSearchParameters record {|
string _seriousness?;
string _study?;
string _subject?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type AllergyIntoleranceSearchParameters record {|
string _clinical_status?;
string _patient?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type AppointmentSearchParameters record {|
string _date?;
string _identifier?;
string _patient?;
string _service_category?;
string _status?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type BodyStructureSearchParameters record {|
string _location?;
string _morphology?;
string _patient?;
string _subject?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type CarePlanSearchParameters record {|
string _activity_date?;
string _category?;
string _encounter?;
string _patient?;
string _part_of?;
string _status?;
string _subject?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type CareTeamSearchParameters record {|
string _patient?;
string _status?;
string _subject?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type CommunicationSearchParameters record {|
string _based_on?;
string _category?;
string _encounter?;
string _part_of?;
string _patient?;
string _subject?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type ConditionSearchParameters record {|
string _abatement_date?;
string _category?;
string _clinical_status?;
string _code?;
string _encounter?;
string _onset_date?;
string _patient?;
string _recorded_date?;
string _subject?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type ConsentSearchParameters record {|
string _category?;
string _patient?;
string _status?;
string _subject?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type CoverageSearchParameters record {|
string _beneficiary?;
string _patient?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type DeviceSearchParameters record {|
string _device_name?;
string _manufacturer?;
string _model?;
string _patient?;
string _udi_carrier?;
string _udi_di?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type DeviceRequestSearchParameters record {|
string _patient?;
string _status?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type DeviceUseStatementSearchParameters record {|
string _patient?;
string _subject?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type DiagnosticReportSearchParameters record {|
string _category?;
string _code?;
string _date?;
string _identifier?;
string _patient?;
string _subject?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type DocumentReferenceSearchParameters record {|
string _author?;
string _category?;
string _date?;
string _docstatus?;
string _encounter?;
string _patient?;
string _period?;
string _status?;
string _subject?;
string _type?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type EncounterSearchParameters record {|
string _class?;
string _date?;
string _identifier?;
string _onlyscannable?;
string _patient?;
string _subject?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type EpisodeOfCareSearchParameters record {|
string _patient?;
string _status?;
string _type?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type ExplanationOfBenefitSearchParameters record {|
string _created?;
string _patient?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type FamilyMemberHistorySearchParameters record {|
string _patient?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type FlagSearchParameters record {|
string _category?;
string _encounter?;
string _patient?;
string _status?;
string _subject?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type GoalSearchParameters record {|
string _category?;
string _lifecycle_status?;
string _patient?;
string _subject?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type GroupSearchParameters record {|
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type ImagingStudySearchParameters record {|
string _identifier?;
string _patient?;
string _subject?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type ImmunizationSearchParameters record {|
string _date?;
string _patient?;
string _status?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type ImmunizationRecommendationSearchParameters record {|
string _patient?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type ListSearchParameters record {|
string _code?;
string _encounter?;
string _patient?;
string _subject?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type LocationSearchParameters record {|
string _type?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type MeasureSearchParameters record {|
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type MeasureReportSearchParameters record {|
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type MedicationSearchParameters record {|
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type MedicationAdministrationSearchParameters record {|
string _context?;
string _effective_time?;
string _patient?;
string _performer?;
string _request?;
string _status?;
string _subject?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type MedicationDispenseSearchParameters record {|
string _patient?;
string _subject?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type MedicationRequestSearchParameters record {|
string _authoredon?;
string _category?;
string _date?;
string _intent?;
string _patient?;
string _status?;
string _subject?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type NutritionOrderSearchParameters record {|
string _patient?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type ObservationSearchParameters record {|
string _based_on?;
string _category?;
string _code?;
string _date?;
string _focus?;
string _issued?;
string _patient?;
string _subject?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type OrganizationSearchParameters record {|
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type PatientSearchParameters record {|
string _address?;
string _address_city?;
string _address_postalcode?;
string _address_state?;
string _birthdate?;
string _doc_type?;
string _family?;
string _gender?;
string _given?;
string _identifier?;
string _legal_sex?;
string _name?;
string _own_name?;
string _own_prefix?;
string _partner_name?;
string _partner_prefix?;
string _telecom?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type PractitionerSearchParameters record {|
string _address?;
string _address_city?;
string _address_postalcode?;
string _address_state?;
string _family?;
string _given?;
string _identifier?;
string _name?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type PractitionerRoleSearchParameters record {|
string _email?;
string _identifier?;
string _location?;
string _organization?;
string _phone?;
string _practitioner?;
string _role?;
string _specialty?;
string _telecom?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type ProcedureSearchParameters record {|
string _category?;
string _date?;
string _patient?;
string _subject?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type QuestionnaireSearchParameters record {|
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type QuestionnaireResponseSearchParameters record {|
string _encounter?;
string _patient?;
string _subject?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type RequestGroupSearchParameters record {|
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type ResearchStudySearchParameters record {|
string _identifier?;
string _status?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type ResearchSubjectSearchParameters record {|
string _patient?;
string _status?;
string _study?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type ServiceRequestSearchParameters record {|
string _category?;
string _encounter?;
string _onlyscannable?;
string _patient?;
string _requester?;
string _status?;
string _subject?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type SpecimenSearchParameters record {|
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type SubstanceSearchParameters record {|
string __id?;
string __count?;
string _additional_search_parameters?;
|};
public type TaskSearchParameters record {|
string _code?;
string _encounter?;
string _focus?;
string _patient?;
string _status?;
string _subject?;
string __id?;
string __count?;
string _additional_search_parameters?;
|};
