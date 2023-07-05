public type AccountSearchParameters record {|
string __id?;
string _patient?;
string __guarantor?;
string _type?;
string _identifier?;
string __count?;
string _additional_search_parameters?;
|};
public type AllergyIntoleranceSearchParameters record {|
string __id?;
string _patient?;
string _clinical_status?;
string _additional_search_parameters?;
|};
public type AppointmentSearchParameters record {|
string __id?;
string __count?;
string _date?;
string __date_or_req_period?;
string _patient?;
string _practitioner?;
string _location?;
string _status?;
string _additional_search_parameters?;
|};
public type CarePlanSearchParameters record {|
string __id?;
string _date?;
string _patient?;
string _category?;
string __count?;
string _additional_search_parameters?;
|};
public type CareTeamSearchParameters record {|
string __id?;
string _category?;
string _encounter?;
string _patient?;
string _status?;
string _additional_search_parameters?;
|};
public type ChargeItemSearchParameters record {|
string __id?;
string _context?;
string _account?;
string __status?;
string __count?;
string _additional_search_parameters?;
|};
public type CommunicationSearchParameters record {|
string __id?;
string _category?;
string _received?;
string _recipient?;
string __email_status?;
string _additional_search_parameters?;
|};
public type ConditionSearchParameters record {|
string __id?;
string _patient?;
string _encounter?;
string _subject?;
string _clinical_status?;
string _category?;
string _additional_search_parameters?;
|};
public type ConsentSearchParameters record {|
string __id?;
string _patient?;
string _actor?;
string _patient_identifier?;
string _actor_identifier?;
string _additional_search_parameters?;
|};
public type CoverageSearchParameters record {|
string _patient?;
string __encounter?;
string _additional_search_parameters?;
|};
public type DeviceSearchParameters record {|
string __id?;
string _patient?;
string _additional_search_parameters?;
|};
public type DiagnosticReportSearchParameters record {|
string __id?;
string _category?;
string _code?;
string _encounter?;
string _patient?;
string _date?;
string __count?;
string _additional_search_parameters?;
|};
public type DocumentReferenceSearchParameters record {|
string __id?;
string _patient?;
string _encounter?;
string _period?;
string __count?;
string _type?;
string _category?;
string _date?;
string _additional_search_parameters?;
|};
public type EncounterSearchParameters record {|
string __id?;
string __count?;
string _patient?;
string _subject?;
string _status?;
string _date?;
string _identifier?;
string _additional_search_parameters?;
|};
public type FamilyMemberHistorySearchParameters record {|
string __id?;
string _patient?;
string _status?;
string _additional_search_parameters?;
|};
public type GoalSearchParameters record {|
string __id?;
string _patient?;
string _target_date?;
string _additional_search_parameters?;
|};
public type ImmunizationSearchParameters record {|
string __id?;
string _patient?;
string _date?;
string _target_disease?;
string _additional_search_parameters?;
|};
public type InsurancePlanSearchParameters record {|
string __id?;
string _owned_by?;
string _additional_search_parameters?;
|};
public type LocationSearchParameters record {|
string __id?;
string __physicalType?;
string _identifier?;
string _address?;
string _address_city?;
string _address_state?;
string _address_postalcode?;
string _name?;
string _organization?;
string _additional_search_parameters?;
|};
public type MedicationAdministrationSearchParameters record {|
string __id?;
string _patient?;
string _status?;
string _performer?;
string _effective_time?;
string _additional_search_parameters?;
|};
public type MedicationRequestSearchParameters record {|
string __id?;
string _patient?;
string _intent?;
string _status?;
string __lastUpdated?;
string __timing_boundsPeriod?;
string __count?;
string _additional_search_parameters?;
|};
public type NutritionOrderSearchParameters record {|
string __id?;
string _patient?;
string _status?;
string __lastUpdated?;
string __count?;
string _additional_search_parameters?;
|};
public type ObservationSearchParameters record {|
string _patient?;
string _subject?;
string _category?;
string _code?;
string _date?;
string __lastUpdated?;
string __count?;
string _additional_search_parameters?;
|};
public type OrganizationSearchParameters record {|
string __id?;
string _identifier?;
string _type?;
string __count?;
string _name?;
string _address?;
string _additional_search_parameters?;
|};
public type PatientSearchParameters record {|
string __id?;
string _identifier?;
string _name?;
string _given?;
string _family?;
string _address_postalcode?;
string _birthdate?;
string _phone?;
string _email?;
string _gender?;
string __count?;
string _additional_search_parameters?;
|};
public type PersonSearchParameters record {|
string __id?;
string _identifier?;
string _additional_search_parameters?;
|};
public type PractitionerSearchParameters record {|
string __id?;
string _identifier?;
string _given?;
string _family?;
string _name?;
string _active?;
string __count?;
string _additional_search_parameters?;
|};
public type ProcedureSearchParameters record {|
string __id?;
string _patient?;
string _subject?;
string _date?;
string _additional_search_parameters?;
|};
public type ProvenanceSearchParameters record {|
string __id?;
string _target?;
string _additional_search_parameters?;
|};
public type QuestionnaireSearchParameters record {|
string __id?;
string _additional_search_parameters?;
|};
public type QuestionnaireResponseSearchParameters record {|
string __id?;
string _patient?;
string _additional_search_parameters?;
|};
public type RelatedPersonSearchParameters record {|
string __id?;
string _identifier?;
string _patient?;
string __encounter?;
string __relationship_level?;
string _additional_search_parameters?;
|};
public type ScheduleSearchParameters record {|
string __id?;
string _additional_search_parameters?;
|};
public type ServiceRequestSearchParameters record {|
string __id?;
string _patient?;
string _subject?;
string _code?;
string __lastUpdated?;
string __count?;
string _additional_search_parameters?;
|};
public type SlotSearchParameters record {|
string __id?;
string _start?;
string _service_type?;
string _schedule_actor?;
string __location?;
string __count?;
string _additional_search_parameters?;
|};
