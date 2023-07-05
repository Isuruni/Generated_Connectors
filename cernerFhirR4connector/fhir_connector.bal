import ballerinax/health.clients.fhir;

public isolated client class FHIRConnector{

private final fhir:FHIRConnector fhirConnectorObj;

public function init(
string tokenUrl, string clientId, string clientSecret, string [] scopes
) returns error? {
fhir:FHIRConnectorConfig connectorConfig = {
   baseURL : "https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d",
   mimeType: fhir:FHIR_JSON,
   authConfig:{
       tokenUrl: tokenUrl,
       clientId: clientId,
       clientSecret: clientSecret,
       scopes: scopes
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

    remote isolated function updateAllergyIntolerance(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function createAppointment(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function patchAppointment(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Appointment",id, data,returnMimeType,patchContentType);
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

    remote isolated function getChargeItemById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("ChargeItem",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchChargeItem(@display {label: "Search Parameters"} ChargeItemSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("ChargeItem",searchParameters,returnMimeType);
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

    remote isolated function patchCommunication(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Communication",id, data,returnMimeType,patchContentType);
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

    remote isolated function updateCondition(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
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

    remote isolated function createCoverage(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function patchCoverage(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Coverage",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteCoverage(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Coverage",id);
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

    remote isolated function createEncounter(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function patchEncounter(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Encounter",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function createFamilyMemberHistory(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateFamilyMemberHistory(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
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

    remote isolated function createImmunization(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateImmunization(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function getInsurancePlanById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("InsurancePlan",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchInsurancePlan(@display {label: "Search Parameters"} InsurancePlanSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("InsurancePlan",searchParameters,returnMimeType);
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

    remote isolated function createMedicationRequest(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function patchMedicationRequest(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("MedicationRequest",id, data,returnMimeType,patchContentType);
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

    remote isolated function createOrganization(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function patchPatient(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Patient",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function getPersonById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Person",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchPerson(@display {label: "Search Parameters"} PersonSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Person",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function createPractitioner(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function createProcedure(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function createProvenance(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getProvenanceById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Provenance",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchProvenance(@display {label: "Search Parameters"} ProvenanceSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Provenance",searchParameters,returnMimeType);
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

    remote isolated function updateQuestionnaireResponse(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function createRelatedPerson(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getRelatedPersonById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("RelatedPerson",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchRelatedPerson(@display {label: "Search Parameters"} RelatedPersonSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("RelatedPerson",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function patchRelatedPerson(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("RelatedPerson",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function getScheduleById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Schedule",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchSchedule(@display {label: "Search Parameters"} ScheduleSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Schedule",searchParameters,returnMimeType);
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

    remote isolated function getSlotById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Slot",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchSlot(@display {label: "Search Parameters"} SlotSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Slot",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function patchSlot(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Slot",id, data,returnMimeType,patchContentType);
            return response;
        }
    }
}




  