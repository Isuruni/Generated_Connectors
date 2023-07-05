import ballerinax/health.clients.fhir;

public isolated client class FHIRConnector{

private final fhir:FHIRConnector fhirConnectorObj;

public function init(
string clientId,string tokenEndpoint,string keyFile
) returns error? {
fhir:FHIRConnectorConfig connectorConfig = {
   baseURL : "https://fhir.epic.com/interconnect-fhir-oauth/api/FHIR/R4/",
   mimeType: fhir:FHIR_JSON,
   authConfig:{
       clientId: clientId,
       tokenEndpoint: tokenEndpoint,
       keyFile: keyFile
   }
};
        fhir:FHIRConnector fhirConnectorObj = check new (connectorConfig);
        self.fhirConnectorObj = fhirConnectorObj;
    }

    remote isolated function getAccountById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Account",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchAccount(@display {label: "Search Parameters"} AccountSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Account",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getAdverseEventById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("AdverseEvent",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchAdverseEvent(@display {label: "Search Parameters"} AdverseEventSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("AdverseEvent",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function createAllergyIntolerance(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getAllergyIntoleranceById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("AllergyIntolerance",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchAllergyIntolerance(@display {label: "Search Parameters"} AllergyIntoleranceSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("AllergyIntolerance",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getAppointmentById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Appointment",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchAppointment(@display {label: "Search Parameters"} AppointmentSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Appointment",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getBodyStructureById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("BodyStructure",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchBodyStructure(@display {label: "Search Parameters"} BodyStructureSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("BodyStructure",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getCarePlanById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("CarePlan",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchCarePlan(@display {label: "Search Parameters"} CarePlanSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("CarePlan",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getCareTeamById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("CareTeam",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchCareTeam(@display {label: "Search Parameters"} CareTeamSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("CareTeam",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function createCommunication(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getCommunicationById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Communication",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchCommunication(@display {label: "Search Parameters"} CommunicationSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Communication",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function createCondition(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getConditionById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Condition",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchCondition(@display {label: "Search Parameters"} ConditionSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Condition",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getConsentById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Consent",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchConsent(@display {label: "Search Parameters"} ConsentSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Consent",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getCoverageById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Coverage",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchCoverage(@display {label: "Search Parameters"} CoverageSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Coverage",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getDeviceById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Device",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchDevice(@display {label: "Search Parameters"} DeviceSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Device",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getDeviceRequestById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("DeviceRequest",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchDeviceRequest(@display {label: "Search Parameters"} DeviceRequestSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("DeviceRequest",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getDeviceUseStatementById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("DeviceUseStatement",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchDeviceUseStatement(@display {label: "Search Parameters"} DeviceUseStatementSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("DeviceUseStatement",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getDiagnosticReportById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("DiagnosticReport",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchDiagnosticReport(@display {label: "Search Parameters"} DiagnosticReportSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("DiagnosticReport",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateDiagnosticReport(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function createDocumentReference(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getDocumentReferenceById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("DocumentReference",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchDocumentReference(@display {label: "Search Parameters"} DocumentReferenceSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("DocumentReference",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateDocumentReference(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function getEncounterById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Encounter",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchEncounter(@display {label: "Search Parameters"} EncounterSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Encounter",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getEpisodeOfCareById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("EpisodeOfCare",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchEpisodeOfCare(@display {label: "Search Parameters"} EpisodeOfCareSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("EpisodeOfCare",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getExplanationOfBenefitById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("ExplanationOfBenefit",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchExplanationOfBenefit(@display {label: "Search Parameters"} ExplanationOfBenefitSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("ExplanationOfBenefit",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getFamilyMemberHistoryById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("FamilyMemberHistory",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchFamilyMemberHistory(@display {label: "Search Parameters"} FamilyMemberHistorySearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("FamilyMemberHistory",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getFlagById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Flag",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchFlag(@display {label: "Search Parameters"} FlagSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Flag",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getGoalById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Goal",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchGoal(@display {label: "Search Parameters"} GoalSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Goal",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getGroupById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Group",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchGroup(@display {label: "Search Parameters"} GroupSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Group",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getImagingStudyById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("ImagingStudy",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchImagingStudy(@display {label: "Search Parameters"} ImagingStudySearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("ImagingStudy",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getImmunizationById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Immunization",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchImmunization(@display {label: "Search Parameters"} ImmunizationSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Immunization",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getImmunizationRecommendationById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("ImmunizationRecommendation",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchImmunizationRecommendation(@display {label: "Search Parameters"} ImmunizationRecommendationSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("ImmunizationRecommendation",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getListById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("List",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchList(@display {label: "Search Parameters"} ListSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("List",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getLocationById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Location",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchLocation(@display {label: "Search Parameters"} LocationSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Location",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getMeasureById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Measure",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchMeasure(@display {label: "Search Parameters"} MeasureSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Measure",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getMeasureReportById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("MeasureReport",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchMeasureReport(@display {label: "Search Parameters"} MeasureReportSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("MeasureReport",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getMedicationById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Medication",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchMedication(@display {label: "Search Parameters"} MedicationSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Medication",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getMedicationAdministrationById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("MedicationAdministration",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchMedicationAdministration(@display {label: "Search Parameters"} MedicationAdministrationSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("MedicationAdministration",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getMedicationDispenseById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("MedicationDispense",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchMedicationDispense(@display {label: "Search Parameters"} MedicationDispenseSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("MedicationDispense",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getMedicationRequestById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("MedicationRequest",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchMedicationRequest(@display {label: "Search Parameters"} MedicationRequestSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("MedicationRequest",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getNutritionOrderById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("NutritionOrder",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchNutritionOrder(@display {label: "Search Parameters"} NutritionOrderSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("NutritionOrder",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function createObservation(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getObservationById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Observation",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchObservation(@display {label: "Search Parameters"} ObservationSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Observation",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateObservation(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function getOrganizationById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Organization",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchOrganization(@display {label: "Search Parameters"} OrganizationSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Organization",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function createPatient(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getPatientById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Patient",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchPatient(@display {label: "Search Parameters"} PatientSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Patient",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getPractitionerById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Practitioner",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchPractitioner(@display {label: "Search Parameters"} PractitionerSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Practitioner",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getPractitionerRoleById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("PractitionerRole",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchPractitionerRole(@display {label: "Search Parameters"} PractitionerRoleSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("PractitionerRole",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getProcedureById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Procedure",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchProcedure(@display {label: "Search Parameters"} ProcedureSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Procedure",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getQuestionnaireById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Questionnaire",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchQuestionnaire(@display {label: "Search Parameters"} QuestionnaireSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Questionnaire",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function createQuestionnaireResponse(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getQuestionnaireResponseById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("QuestionnaireResponse",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchQuestionnaireResponse(@display {label: "Search Parameters"} QuestionnaireResponseSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("QuestionnaireResponse",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getRequestGroupById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("RequestGroup",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchRequestGroup(@display {label: "Search Parameters"} RequestGroupSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("RequestGroup",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getResearchStudyById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("ResearchStudy",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchResearchStudy(@display {label: "Search Parameters"} ResearchStudySearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("ResearchStudy",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getResearchSubjectById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("ResearchSubject",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchResearchSubject(@display {label: "Search Parameters"} ResearchSubjectSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("ResearchSubject",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getServiceRequestById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("ServiceRequest",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchServiceRequest(@display {label: "Search Parameters"} ServiceRequestSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("ServiceRequest",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getSpecimenById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Specimen",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchSpecimen(@display {label: "Search Parameters"} SpecimenSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Specimen",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getSubstanceById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Substance",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchSubstance(@display {label: "Search Parameters"} SubstanceSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Substance",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function getTaskById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Task",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchTask(@display {label: "Search Parameters"} TaskSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Task",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateTask(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }
}