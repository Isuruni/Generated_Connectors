import wso2healthcare/healthcare.clients.fhir;

public isolated client class FHIRConnector{

private final fhir:FHIRConnector fhirConnectorObj;

public function init(
) returns error? {
fhir:FHIRConnectorConfig connectorConfig = {
   baseURL : "http://hapi.fhir.org/baseR4",
   mimeType: fhir:FHIR_JSON,
    authConfig:{}
};
        fhir:FHIRConnector fhirConnectorObj = check new (connectorConfig);
        self.fhirConnectorObj = fhirConnectorObj;
    }

    remote isolated function createAccount(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
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

    remote isolated function updateAccount(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchAccount(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Account",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteAccount(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Account",id);
            return response;
        }
    }

    remote isolated function createActivityDefinition(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getActivityDefinitionById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("ActivityDefinition",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchActivityDefinition(@display {label: "Search Parameters"} ActivityDefinitionSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("ActivityDefinition",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateActivityDefinition(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchActivityDefinition(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("ActivityDefinition",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteActivityDefinition(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("ActivityDefinition",id);
            return response;
        }
    }

    remote isolated function createAdverseEvent(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateAdverseEvent(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchAdverseEvent(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("AdverseEvent",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteAdverseEvent(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("AdverseEvent",id);
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

    remote isolated function patchAllergyIntolerance(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("AllergyIntolerance",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteAllergyIntolerance(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("AllergyIntolerance",id);
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

    remote isolated function updateAppointment(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
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

    remote isolated function deleteAppointment(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Appointment",id);
            return response;
        }
    }

    remote isolated function createAppointmentResponse(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getAppointmentResponseById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("AppointmentResponse",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchAppointmentResponse(@display {label: "Search Parameters"} AppointmentResponseSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("AppointmentResponse",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateAppointmentResponse(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchAppointmentResponse(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("AppointmentResponse",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteAppointmentResponse(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("AppointmentResponse",id);
            return response;
        }
    }

    remote isolated function createAuditEvent(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getAuditEventById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("AuditEvent",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchAuditEvent(@display {label: "Search Parameters"} AuditEventSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("AuditEvent",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateAuditEvent(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchAuditEvent(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("AuditEvent",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteAuditEvent(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("AuditEvent",id);
            return response;
        }
    }

    remote isolated function createBasic(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getBasicById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Basic",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchBasic(@display {label: "Search Parameters"} BasicSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Basic",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateBasic(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchBasic(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Basic",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteBasic(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Basic",id);
            return response;
        }
    }

    remote isolated function createBinary(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getBinaryById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Binary",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchBinary(@display {label: "Search Parameters"} BinarySearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Binary",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateBinary(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchBinary(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Binary",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteBinary(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Binary",id);
            return response;
        }
    }

    remote isolated function createBiologicallyDerivedProduct(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getBiologicallyDerivedProductById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("BiologicallyDerivedProduct",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchBiologicallyDerivedProduct(@display {label: "Search Parameters"} BiologicallyDerivedProductSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("BiologicallyDerivedProduct",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateBiologicallyDerivedProduct(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchBiologicallyDerivedProduct(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("BiologicallyDerivedProduct",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteBiologicallyDerivedProduct(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("BiologicallyDerivedProduct",id);
            return response;
        }
    }

    remote isolated function createBodyStructure(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateBodyStructure(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchBodyStructure(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("BodyStructure",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteBodyStructure(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("BodyStructure",id);
            return response;
        }
    }

    remote isolated function createBundle(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getBundleById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Bundle",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchBundle(@display {label: "Search Parameters"} BundleSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Bundle",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateBundle(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchBundle(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Bundle",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteBundle(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Bundle",id);
            return response;
        }
    }

    remote isolated function createCapabilityStatement(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getCapabilityStatementById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("CapabilityStatement",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchCapabilityStatement(@display {label: "Search Parameters"} CapabilityStatementSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("CapabilityStatement",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateCapabilityStatement(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchCapabilityStatement(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("CapabilityStatement",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteCapabilityStatement(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("CapabilityStatement",id);
            return response;
        }
    }

    remote isolated function createCarePlan(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateCarePlan(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchCarePlan(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("CarePlan",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteCarePlan(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("CarePlan",id);
            return response;
        }
    }

    remote isolated function createCareTeam(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateCareTeam(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchCareTeam(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("CareTeam",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteCareTeam(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("CareTeam",id);
            return response;
        }
    }

    remote isolated function createCatalogEntry(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getCatalogEntryById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("CatalogEntry",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchCatalogEntry(@display {label: "Search Parameters"} CatalogEntrySearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("CatalogEntry",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateCatalogEntry(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchCatalogEntry(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("CatalogEntry",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteCatalogEntry(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("CatalogEntry",id);
            return response;
        }
    }

    remote isolated function createChargeItem(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateChargeItem(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchChargeItem(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("ChargeItem",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteChargeItem(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("ChargeItem",id);
            return response;
        }
    }

    remote isolated function createChargeItemDefinition(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getChargeItemDefinitionById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("ChargeItemDefinition",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchChargeItemDefinition(@display {label: "Search Parameters"} ChargeItemDefinitionSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("ChargeItemDefinition",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateChargeItemDefinition(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchChargeItemDefinition(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("ChargeItemDefinition",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteChargeItemDefinition(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("ChargeItemDefinition",id);
            return response;
        }
    }

    remote isolated function createClaim(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getClaimById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Claim",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchClaim(@display {label: "Search Parameters"} ClaimSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Claim",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateClaim(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchClaim(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Claim",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteClaim(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Claim",id);
            return response;
        }
    }

    remote isolated function createClaimResponse(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getClaimResponseById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("ClaimResponse",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchClaimResponse(@display {label: "Search Parameters"} ClaimResponseSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("ClaimResponse",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateClaimResponse(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchClaimResponse(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("ClaimResponse",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteClaimResponse(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("ClaimResponse",id);
            return response;
        }
    }

    remote isolated function createClinicalImpression(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getClinicalImpressionById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("ClinicalImpression",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchClinicalImpression(@display {label: "Search Parameters"} ClinicalImpressionSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("ClinicalImpression",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateClinicalImpression(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchClinicalImpression(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("ClinicalImpression",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteClinicalImpression(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("ClinicalImpression",id);
            return response;
        }
    }

    remote isolated function createCodeSystem(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getCodeSystemById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("CodeSystem",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchCodeSystem(@display {label: "Search Parameters"} CodeSystemSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("CodeSystem",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateCodeSystem(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchCodeSystem(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("CodeSystem",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteCodeSystem(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("CodeSystem",id);
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

    remote isolated function updateCommunication(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
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

    remote isolated function deleteCommunication(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Communication",id);
            return response;
        }
    }

    remote isolated function createCommunicationRequest(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getCommunicationRequestById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("CommunicationRequest",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchCommunicationRequest(@display {label: "Search Parameters"} CommunicationRequestSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("CommunicationRequest",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateCommunicationRequest(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchCommunicationRequest(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("CommunicationRequest",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteCommunicationRequest(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("CommunicationRequest",id);
            return response;
        }
    }

    remote isolated function createCompartmentDefinition(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getCompartmentDefinitionById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("CompartmentDefinition",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchCompartmentDefinition(@display {label: "Search Parameters"} CompartmentDefinitionSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("CompartmentDefinition",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateCompartmentDefinition(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchCompartmentDefinition(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("CompartmentDefinition",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteCompartmentDefinition(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("CompartmentDefinition",id);
            return response;
        }
    }

    remote isolated function createComposition(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getCompositionById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Composition",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchComposition(@display {label: "Search Parameters"} CompositionSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Composition",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateComposition(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchComposition(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Composition",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteComposition(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Composition",id);
            return response;
        }
    }

    remote isolated function createConceptMap(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getConceptMapById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("ConceptMap",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchConceptMap(@display {label: "Search Parameters"} ConceptMapSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("ConceptMap",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateConceptMap(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchConceptMap(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("ConceptMap",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteConceptMap(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("ConceptMap",id);
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

    remote isolated function patchCondition(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Condition",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteCondition(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Condition",id);
            return response;
        }
    }

    remote isolated function createConsent(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateConsent(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchConsent(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Consent",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteConsent(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Consent",id);
            return response;
        }
    }

    remote isolated function createContract(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getContractById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Contract",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchContract(@display {label: "Search Parameters"} ContractSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Contract",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateContract(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchContract(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Contract",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteContract(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Contract",id);
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

    remote isolated function updateCoverage(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
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

    remote isolated function createCoverageEligibilityRequest(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getCoverageEligibilityRequestById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("CoverageEligibilityRequest",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchCoverageEligibilityRequest(@display {label: "Search Parameters"} CoverageEligibilityRequestSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("CoverageEligibilityRequest",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateCoverageEligibilityRequest(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchCoverageEligibilityRequest(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("CoverageEligibilityRequest",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteCoverageEligibilityRequest(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("CoverageEligibilityRequest",id);
            return response;
        }
    }

    remote isolated function createCoverageEligibilityResponse(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getCoverageEligibilityResponseById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("CoverageEligibilityResponse",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchCoverageEligibilityResponse(@display {label: "Search Parameters"} CoverageEligibilityResponseSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("CoverageEligibilityResponse",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateCoverageEligibilityResponse(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchCoverageEligibilityResponse(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("CoverageEligibilityResponse",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteCoverageEligibilityResponse(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("CoverageEligibilityResponse",id);
            return response;
        }
    }

    remote isolated function createDetectedIssue(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getDetectedIssueById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("DetectedIssue",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchDetectedIssue(@display {label: "Search Parameters"} DetectedIssueSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("DetectedIssue",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateDetectedIssue(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchDetectedIssue(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("DetectedIssue",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteDetectedIssue(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("DetectedIssue",id);
            return response;
        }
    }

    remote isolated function createDevice(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateDevice(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchDevice(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Device",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteDevice(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Device",id);
            return response;
        }
    }

    remote isolated function createDeviceDefinition(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getDeviceDefinitionById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("DeviceDefinition",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchDeviceDefinition(@display {label: "Search Parameters"} DeviceDefinitionSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("DeviceDefinition",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateDeviceDefinition(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchDeviceDefinition(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("DeviceDefinition",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteDeviceDefinition(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("DeviceDefinition",id);
            return response;
        }
    }

    remote isolated function createDeviceMetric(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getDeviceMetricById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("DeviceMetric",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchDeviceMetric(@display {label: "Search Parameters"} DeviceMetricSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("DeviceMetric",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateDeviceMetric(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchDeviceMetric(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("DeviceMetric",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteDeviceMetric(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("DeviceMetric",id);
            return response;
        }
    }

    remote isolated function createDeviceRequest(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateDeviceRequest(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchDeviceRequest(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("DeviceRequest",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteDeviceRequest(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("DeviceRequest",id);
            return response;
        }
    }

    remote isolated function createDeviceUseStatement(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateDeviceUseStatement(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchDeviceUseStatement(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("DeviceUseStatement",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteDeviceUseStatement(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("DeviceUseStatement",id);
            return response;
        }
    }

    remote isolated function createDiagnosticReport(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function patchDiagnosticReport(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("DiagnosticReport",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteDiagnosticReport(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("DiagnosticReport",id);
            return response;
        }
    }

    remote isolated function createDocumentManifest(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getDocumentManifestById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("DocumentManifest",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchDocumentManifest(@display {label: "Search Parameters"} DocumentManifestSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("DocumentManifest",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateDocumentManifest(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchDocumentManifest(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("DocumentManifest",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteDocumentManifest(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("DocumentManifest",id);
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

    remote isolated function patchDocumentReference(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("DocumentReference",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteDocumentReference(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("DocumentReference",id);
            return response;
        }
    }

    remote isolated function createEffectEvidenceSynthesis(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getEffectEvidenceSynthesisById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("EffectEvidenceSynthesis",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchEffectEvidenceSynthesis(@display {label: "Search Parameters"} EffectEvidenceSynthesisSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("EffectEvidenceSynthesis",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateEffectEvidenceSynthesis(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchEffectEvidenceSynthesis(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("EffectEvidenceSynthesis",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteEffectEvidenceSynthesis(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("EffectEvidenceSynthesis",id);
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

    remote isolated function updateEncounter(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
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

    remote isolated function deleteEncounter(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Encounter",id);
            return response;
        }
    }

    remote isolated function createEndpoint(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getEndpointById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Endpoint",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchEndpoint(@display {label: "Search Parameters"} EndpointSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Endpoint",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateEndpoint(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchEndpoint(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Endpoint",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteEndpoint(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Endpoint",id);
            return response;
        }
    }

    remote isolated function createEnrollmentRequest(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getEnrollmentRequestById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("EnrollmentRequest",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchEnrollmentRequest(@display {label: "Search Parameters"} EnrollmentRequestSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("EnrollmentRequest",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateEnrollmentRequest(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchEnrollmentRequest(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("EnrollmentRequest",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteEnrollmentRequest(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("EnrollmentRequest",id);
            return response;
        }
    }

    remote isolated function createEnrollmentResponse(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getEnrollmentResponseById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("EnrollmentResponse",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchEnrollmentResponse(@display {label: "Search Parameters"} EnrollmentResponseSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("EnrollmentResponse",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateEnrollmentResponse(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchEnrollmentResponse(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("EnrollmentResponse",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteEnrollmentResponse(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("EnrollmentResponse",id);
            return response;
        }
    }

    remote isolated function createEpisodeOfCare(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateEpisodeOfCare(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchEpisodeOfCare(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("EpisodeOfCare",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteEpisodeOfCare(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("EpisodeOfCare",id);
            return response;
        }
    }

    remote isolated function createEventDefinition(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getEventDefinitionById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("EventDefinition",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchEventDefinition(@display {label: "Search Parameters"} EventDefinitionSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("EventDefinition",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateEventDefinition(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchEventDefinition(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("EventDefinition",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteEventDefinition(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("EventDefinition",id);
            return response;
        }
    }

    remote isolated function createEvidence(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getEvidenceById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Evidence",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchEvidence(@display {label: "Search Parameters"} EvidenceSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Evidence",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateEvidence(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchEvidence(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Evidence",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteEvidence(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Evidence",id);
            return response;
        }
    }

    remote isolated function createEvidenceVariable(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getEvidenceVariableById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("EvidenceVariable",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchEvidenceVariable(@display {label: "Search Parameters"} EvidenceVariableSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("EvidenceVariable",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateEvidenceVariable(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchEvidenceVariable(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("EvidenceVariable",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteEvidenceVariable(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("EvidenceVariable",id);
            return response;
        }
    }

    remote isolated function createExampleScenario(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getExampleScenarioById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("ExampleScenario",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchExampleScenario(@display {label: "Search Parameters"} ExampleScenarioSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("ExampleScenario",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateExampleScenario(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchExampleScenario(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("ExampleScenario",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteExampleScenario(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("ExampleScenario",id);
            return response;
        }
    }

    remote isolated function createExplanationOfBenefit(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateExplanationOfBenefit(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchExplanationOfBenefit(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("ExplanationOfBenefit",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteExplanationOfBenefit(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("ExplanationOfBenefit",id);
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

    remote isolated function patchFamilyMemberHistory(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("FamilyMemberHistory",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteFamilyMemberHistory(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("FamilyMemberHistory",id);
            return response;
        }
    }

    remote isolated function createFlag(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateFlag(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchFlag(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Flag",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteFlag(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Flag",id);
            return response;
        }
    }

    remote isolated function createGoal(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateGoal(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchGoal(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Goal",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteGoal(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Goal",id);
            return response;
        }
    }

    remote isolated function createGraphDefinition(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getGraphDefinitionById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("GraphDefinition",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchGraphDefinition(@display {label: "Search Parameters"} GraphDefinitionSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("GraphDefinition",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateGraphDefinition(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchGraphDefinition(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("GraphDefinition",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteGraphDefinition(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("GraphDefinition",id);
            return response;
        }
    }

    remote isolated function createGroup(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateGroup(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchGroup(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Group",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteGroup(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Group",id);
            return response;
        }
    }

    remote isolated function createGuidanceResponse(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getGuidanceResponseById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("GuidanceResponse",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchGuidanceResponse(@display {label: "Search Parameters"} GuidanceResponseSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("GuidanceResponse",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateGuidanceResponse(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchGuidanceResponse(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("GuidanceResponse",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteGuidanceResponse(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("GuidanceResponse",id);
            return response;
        }
    }

    remote isolated function createHealthcareService(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getHealthcareServiceById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("HealthcareService",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchHealthcareService(@display {label: "Search Parameters"} HealthcareServiceSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("HealthcareService",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateHealthcareService(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchHealthcareService(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("HealthcareService",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteHealthcareService(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("HealthcareService",id);
            return response;
        }
    }

    remote isolated function createImagingStudy(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateImagingStudy(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchImagingStudy(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("ImagingStudy",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteImagingStudy(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("ImagingStudy",id);
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

    remote isolated function patchImmunization(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Immunization",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteImmunization(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Immunization",id);
            return response;
        }
    }

    remote isolated function createImmunizationEvaluation(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getImmunizationEvaluationById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("ImmunizationEvaluation",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchImmunizationEvaluation(@display {label: "Search Parameters"} ImmunizationEvaluationSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("ImmunizationEvaluation",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateImmunizationEvaluation(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchImmunizationEvaluation(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("ImmunizationEvaluation",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteImmunizationEvaluation(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("ImmunizationEvaluation",id);
            return response;
        }
    }

    remote isolated function createImmunizationRecommendation(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateImmunizationRecommendation(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchImmunizationRecommendation(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("ImmunizationRecommendation",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteImmunizationRecommendation(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("ImmunizationRecommendation",id);
            return response;
        }
    }

    remote isolated function createImplementationGuide(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getImplementationGuideById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("ImplementationGuide",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchImplementationGuide(@display {label: "Search Parameters"} ImplementationGuideSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("ImplementationGuide",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateImplementationGuide(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchImplementationGuide(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("ImplementationGuide",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteImplementationGuide(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("ImplementationGuide",id);
            return response;
        }
    }

    remote isolated function createInsurancePlan(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateInsurancePlan(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchInsurancePlan(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("InsurancePlan",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteInsurancePlan(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("InsurancePlan",id);
            return response;
        }
    }

    remote isolated function createInvoice(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getInvoiceById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Invoice",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchInvoice(@display {label: "Search Parameters"} InvoiceSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Invoice",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateInvoice(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchInvoice(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Invoice",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteInvoice(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Invoice",id);
            return response;
        }
    }

    remote isolated function createLibrary(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getLibraryById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Library",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchLibrary(@display {label: "Search Parameters"} LibrarySearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Library",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateLibrary(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchLibrary(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Library",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteLibrary(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Library",id);
            return response;
        }
    }

    remote isolated function createLinkage(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getLinkageById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Linkage",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchLinkage(@display {label: "Search Parameters"} LinkageSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Linkage",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateLinkage(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchLinkage(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Linkage",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteLinkage(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Linkage",id);
            return response;
        }
    }

    remote isolated function createList(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateList(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchList(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("List",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteList(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("List",id);
            return response;
        }
    }

    remote isolated function createLocation(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateLocation(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchLocation(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Location",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteLocation(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Location",id);
            return response;
        }
    }

    remote isolated function createMeasure(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateMeasure(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchMeasure(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Measure",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteMeasure(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Measure",id);
            return response;
        }
    }

    remote isolated function createMeasureReport(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateMeasureReport(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchMeasureReport(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("MeasureReport",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteMeasureReport(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("MeasureReport",id);
            return response;
        }
    }

    remote isolated function createMedia(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getMediaById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Media",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchMedia(@display {label: "Search Parameters"} MediaSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Media",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateMedia(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchMedia(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Media",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteMedia(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Media",id);
            return response;
        }
    }

    remote isolated function createMedication(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateMedication(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchMedication(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Medication",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteMedication(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Medication",id);
            return response;
        }
    }

    remote isolated function createMedicationAdministration(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateMedicationAdministration(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchMedicationAdministration(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("MedicationAdministration",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteMedicationAdministration(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("MedicationAdministration",id);
            return response;
        }
    }

    remote isolated function createMedicationDispense(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateMedicationDispense(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchMedicationDispense(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("MedicationDispense",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteMedicationDispense(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("MedicationDispense",id);
            return response;
        }
    }

    remote isolated function createMedicationKnowledge(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getMedicationKnowledgeById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("MedicationKnowledge",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchMedicationKnowledge(@display {label: "Search Parameters"} MedicationKnowledgeSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("MedicationKnowledge",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateMedicationKnowledge(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchMedicationKnowledge(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("MedicationKnowledge",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteMedicationKnowledge(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("MedicationKnowledge",id);
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

    remote isolated function updateMedicationRequest(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
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

    remote isolated function deleteMedicationRequest(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("MedicationRequest",id);
            return response;
        }
    }

    remote isolated function createMedicationStatement(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getMedicationStatementById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("MedicationStatement",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchMedicationStatement(@display {label: "Search Parameters"} MedicationStatementSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("MedicationStatement",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateMedicationStatement(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchMedicationStatement(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("MedicationStatement",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteMedicationStatement(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("MedicationStatement",id);
            return response;
        }
    }

    remote isolated function createMedicinalProduct(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getMedicinalProductById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("MedicinalProduct",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchMedicinalProduct(@display {label: "Search Parameters"} MedicinalProductSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("MedicinalProduct",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateMedicinalProduct(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchMedicinalProduct(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("MedicinalProduct",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteMedicinalProduct(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("MedicinalProduct",id);
            return response;
        }
    }

    remote isolated function createMedicinalProductAuthorization(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getMedicinalProductAuthorizationById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("MedicinalProductAuthorization",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchMedicinalProductAuthorization(@display {label: "Search Parameters"} MedicinalProductAuthorizationSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("MedicinalProductAuthorization",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateMedicinalProductAuthorization(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchMedicinalProductAuthorization(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("MedicinalProductAuthorization",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteMedicinalProductAuthorization(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("MedicinalProductAuthorization",id);
            return response;
        }
    }

    remote isolated function createMedicinalProductContraindication(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getMedicinalProductContraindicationById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("MedicinalProductContraindication",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchMedicinalProductContraindication(@display {label: "Search Parameters"} MedicinalProductContraindicationSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("MedicinalProductContraindication",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateMedicinalProductContraindication(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchMedicinalProductContraindication(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("MedicinalProductContraindication",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteMedicinalProductContraindication(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("MedicinalProductContraindication",id);
            return response;
        }
    }

    remote isolated function createMedicinalProductIndication(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getMedicinalProductIndicationById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("MedicinalProductIndication",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchMedicinalProductIndication(@display {label: "Search Parameters"} MedicinalProductIndicationSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("MedicinalProductIndication",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateMedicinalProductIndication(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchMedicinalProductIndication(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("MedicinalProductIndication",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteMedicinalProductIndication(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("MedicinalProductIndication",id);
            return response;
        }
    }

    remote isolated function createMedicinalProductIngredient(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getMedicinalProductIngredientById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("MedicinalProductIngredient",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchMedicinalProductIngredient(@display {label: "Search Parameters"} MedicinalProductIngredientSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("MedicinalProductIngredient",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateMedicinalProductIngredient(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchMedicinalProductIngredient(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("MedicinalProductIngredient",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteMedicinalProductIngredient(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("MedicinalProductIngredient",id);
            return response;
        }
    }

    remote isolated function createMedicinalProductInteraction(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getMedicinalProductInteractionById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("MedicinalProductInteraction",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchMedicinalProductInteraction(@display {label: "Search Parameters"} MedicinalProductInteractionSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("MedicinalProductInteraction",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateMedicinalProductInteraction(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchMedicinalProductInteraction(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("MedicinalProductInteraction",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteMedicinalProductInteraction(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("MedicinalProductInteraction",id);
            return response;
        }
    }

    remote isolated function createMedicinalProductManufactured(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getMedicinalProductManufacturedById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("MedicinalProductManufactured",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchMedicinalProductManufactured(@display {label: "Search Parameters"} MedicinalProductManufacturedSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("MedicinalProductManufactured",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateMedicinalProductManufactured(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchMedicinalProductManufactured(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("MedicinalProductManufactured",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteMedicinalProductManufactured(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("MedicinalProductManufactured",id);
            return response;
        }
    }

    remote isolated function createMedicinalProductPackaged(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getMedicinalProductPackagedById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("MedicinalProductPackaged",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchMedicinalProductPackaged(@display {label: "Search Parameters"} MedicinalProductPackagedSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("MedicinalProductPackaged",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateMedicinalProductPackaged(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchMedicinalProductPackaged(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("MedicinalProductPackaged",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteMedicinalProductPackaged(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("MedicinalProductPackaged",id);
            return response;
        }
    }

    remote isolated function createMedicinalProductPharmaceutical(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getMedicinalProductPharmaceuticalById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("MedicinalProductPharmaceutical",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchMedicinalProductPharmaceutical(@display {label: "Search Parameters"} MedicinalProductPharmaceuticalSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("MedicinalProductPharmaceutical",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateMedicinalProductPharmaceutical(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchMedicinalProductPharmaceutical(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("MedicinalProductPharmaceutical",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteMedicinalProductPharmaceutical(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("MedicinalProductPharmaceutical",id);
            return response;
        }
    }

    remote isolated function createMedicinalProductUndesirableEffect(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getMedicinalProductUndesirableEffectById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("MedicinalProductUndesirableEffect",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchMedicinalProductUndesirableEffect(@display {label: "Search Parameters"} MedicinalProductUndesirableEffectSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("MedicinalProductUndesirableEffect",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateMedicinalProductUndesirableEffect(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchMedicinalProductUndesirableEffect(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("MedicinalProductUndesirableEffect",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteMedicinalProductUndesirableEffect(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("MedicinalProductUndesirableEffect",id);
            return response;
        }
    }

    remote isolated function createMessageDefinition(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getMessageDefinitionById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("MessageDefinition",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchMessageDefinition(@display {label: "Search Parameters"} MessageDefinitionSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("MessageDefinition",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateMessageDefinition(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchMessageDefinition(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("MessageDefinition",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteMessageDefinition(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("MessageDefinition",id);
            return response;
        }
    }

    remote isolated function createMessageHeader(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getMessageHeaderById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("MessageHeader",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchMessageHeader(@display {label: "Search Parameters"} MessageHeaderSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("MessageHeader",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateMessageHeader(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchMessageHeader(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("MessageHeader",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteMessageHeader(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("MessageHeader",id);
            return response;
        }
    }

    remote isolated function createMolecularSequence(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getMolecularSequenceById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("MolecularSequence",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchMolecularSequence(@display {label: "Search Parameters"} MolecularSequenceSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("MolecularSequence",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateMolecularSequence(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchMolecularSequence(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("MolecularSequence",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteMolecularSequence(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("MolecularSequence",id);
            return response;
        }
    }

    remote isolated function createNamingSystem(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getNamingSystemById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("NamingSystem",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchNamingSystem(@display {label: "Search Parameters"} NamingSystemSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("NamingSystem",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateNamingSystem(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchNamingSystem(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("NamingSystem",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteNamingSystem(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("NamingSystem",id);
            return response;
        }
    }

    remote isolated function createNutritionOrder(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateNutritionOrder(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchNutritionOrder(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("NutritionOrder",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteNutritionOrder(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("NutritionOrder",id);
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

    remote isolated function patchObservation(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Observation",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteObservation(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Observation",id);
            return response;
        }
    }

    remote isolated function createObservationDefinition(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getObservationDefinitionById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("ObservationDefinition",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchObservationDefinition(@display {label: "Search Parameters"} ObservationDefinitionSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("ObservationDefinition",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateObservationDefinition(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchObservationDefinition(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("ObservationDefinition",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteObservationDefinition(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("ObservationDefinition",id);
            return response;
        }
    }

    remote isolated function createOperationDefinition(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getOperationDefinitionById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("OperationDefinition",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchOperationDefinition(@display {label: "Search Parameters"} OperationDefinitionSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("OperationDefinition",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateOperationDefinition(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchOperationDefinition(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("OperationDefinition",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteOperationDefinition(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("OperationDefinition",id);
            return response;
        }
    }

    remote isolated function createOperationOutcome(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getOperationOutcomeById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("OperationOutcome",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchOperationOutcome(@display {label: "Search Parameters"} OperationOutcomeSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("OperationOutcome",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateOperationOutcome(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchOperationOutcome(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("OperationOutcome",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteOperationOutcome(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("OperationOutcome",id);
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

    remote isolated function updateOrganization(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchOrganization(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Organization",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteOrganization(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Organization",id);
            return response;
        }
    }

    remote isolated function createOrganizationAffiliation(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getOrganizationAffiliationById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("OrganizationAffiliation",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchOrganizationAffiliation(@display {label: "Search Parameters"} OrganizationAffiliationSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("OrganizationAffiliation",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateOrganizationAffiliation(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchOrganizationAffiliation(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("OrganizationAffiliation",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteOrganizationAffiliation(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("OrganizationAffiliation",id);
            return response;
        }
    }

    remote isolated function createParameters(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getParametersById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Parameters",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchParameters(@display {label: "Search Parameters"} ParametersSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Parameters",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateParameters(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchParameters(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Parameters",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteParameters(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Parameters",id);
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

    remote isolated function updatePatient(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
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

    remote isolated function deletePatient(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Patient",id);
            return response;
        }
    }

    remote isolated function createPaymentNotice(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getPaymentNoticeById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("PaymentNotice",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchPaymentNotice(@display {label: "Search Parameters"} PaymentNoticeSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("PaymentNotice",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updatePaymentNotice(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchPaymentNotice(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("PaymentNotice",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deletePaymentNotice(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("PaymentNotice",id);
            return response;
        }
    }

    remote isolated function createPaymentReconciliation(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getPaymentReconciliationById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("PaymentReconciliation",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchPaymentReconciliation(@display {label: "Search Parameters"} PaymentReconciliationSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("PaymentReconciliation",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updatePaymentReconciliation(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchPaymentReconciliation(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("PaymentReconciliation",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deletePaymentReconciliation(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("PaymentReconciliation",id);
            return response;
        }
    }

    remote isolated function createPerson(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updatePerson(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchPerson(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Person",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deletePerson(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Person",id);
            return response;
        }
    }

    remote isolated function createPlanDefinition(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getPlanDefinitionById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("PlanDefinition",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchPlanDefinition(@display {label: "Search Parameters"} PlanDefinitionSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("PlanDefinition",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updatePlanDefinition(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchPlanDefinition(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("PlanDefinition",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deletePlanDefinition(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("PlanDefinition",id);
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

    remote isolated function updatePractitioner(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchPractitioner(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Practitioner",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deletePractitioner(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Practitioner",id);
            return response;
        }
    }

    remote isolated function createPractitionerRole(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updatePractitionerRole(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchPractitionerRole(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("PractitionerRole",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deletePractitionerRole(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("PractitionerRole",id);
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

    remote isolated function updateProcedure(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchProcedure(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Procedure",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteProcedure(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Procedure",id);
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

    remote isolated function updateProvenance(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchProvenance(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Provenance",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteProvenance(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Provenance",id);
            return response;
        }
    }

    remote isolated function createQuestionnaire(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateQuestionnaire(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchQuestionnaire(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Questionnaire",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteQuestionnaire(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Questionnaire",id);
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

    remote isolated function updateQuestionnaireResponse(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchQuestionnaireResponse(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("QuestionnaireResponse",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteQuestionnaireResponse(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("QuestionnaireResponse",id);
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

    remote isolated function updateRelatedPerson(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
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

    remote isolated function deleteRelatedPerson(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("RelatedPerson",id);
            return response;
        }
    }

    remote isolated function createRequestGroup(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateRequestGroup(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchRequestGroup(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("RequestGroup",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteRequestGroup(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("RequestGroup",id);
            return response;
        }
    }

    remote isolated function createResearchDefinition(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getResearchDefinitionById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("ResearchDefinition",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchResearchDefinition(@display {label: "Search Parameters"} ResearchDefinitionSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("ResearchDefinition",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateResearchDefinition(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchResearchDefinition(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("ResearchDefinition",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteResearchDefinition(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("ResearchDefinition",id);
            return response;
        }
    }

    remote isolated function createResearchElementDefinition(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getResearchElementDefinitionById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("ResearchElementDefinition",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchResearchElementDefinition(@display {label: "Search Parameters"} ResearchElementDefinitionSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("ResearchElementDefinition",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateResearchElementDefinition(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchResearchElementDefinition(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("ResearchElementDefinition",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteResearchElementDefinition(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("ResearchElementDefinition",id);
            return response;
        }
    }

    remote isolated function createResearchStudy(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateResearchStudy(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchResearchStudy(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("ResearchStudy",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteResearchStudy(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("ResearchStudy",id);
            return response;
        }
    }

    remote isolated function createResearchSubject(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateResearchSubject(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchResearchSubject(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("ResearchSubject",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteResearchSubject(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("ResearchSubject",id);
            return response;
        }
    }

    remote isolated function createRiskAssessment(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getRiskAssessmentById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("RiskAssessment",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchRiskAssessment(@display {label: "Search Parameters"} RiskAssessmentSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("RiskAssessment",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateRiskAssessment(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchRiskAssessment(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("RiskAssessment",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteRiskAssessment(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("RiskAssessment",id);
            return response;
        }
    }

    remote isolated function createRiskEvidenceSynthesis(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getRiskEvidenceSynthesisById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("RiskEvidenceSynthesis",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchRiskEvidenceSynthesis(@display {label: "Search Parameters"} RiskEvidenceSynthesisSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("RiskEvidenceSynthesis",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateRiskEvidenceSynthesis(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchRiskEvidenceSynthesis(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("RiskEvidenceSynthesis",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteRiskEvidenceSynthesis(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("RiskEvidenceSynthesis",id);
            return response;
        }
    }

    remote isolated function createSchedule(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateSchedule(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchSchedule(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Schedule",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteSchedule(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Schedule",id);
            return response;
        }
    }

    remote isolated function createSearchParameter(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getSearchParameterById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("SearchParameter",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchSearchParameter(@display {label: "Search Parameters"} SearchParameterSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("SearchParameter",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateSearchParameter(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchSearchParameter(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("SearchParameter",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteSearchParameter(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("SearchParameter",id);
            return response;
        }
    }

    remote isolated function createServiceRequest(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateServiceRequest(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchServiceRequest(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("ServiceRequest",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteServiceRequest(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("ServiceRequest",id);
            return response;
        }
    }

    remote isolated function createSlot(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateSlot(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
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

    remote isolated function deleteSlot(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Slot",id);
            return response;
        }
    }

    remote isolated function createSpecimen(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateSpecimen(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchSpecimen(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Specimen",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteSpecimen(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Specimen",id);
            return response;
        }
    }

    remote isolated function createSpecimenDefinition(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getSpecimenDefinitionById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("SpecimenDefinition",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchSpecimenDefinition(@display {label: "Search Parameters"} SpecimenDefinitionSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("SpecimenDefinition",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateSpecimenDefinition(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchSpecimenDefinition(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("SpecimenDefinition",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteSpecimenDefinition(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("SpecimenDefinition",id);
            return response;
        }
    }

    remote isolated function createStructureDefinition(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getStructureDefinitionById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("StructureDefinition",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchStructureDefinition(@display {label: "Search Parameters"} StructureDefinitionSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("StructureDefinition",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateStructureDefinition(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchStructureDefinition(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("StructureDefinition",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteStructureDefinition(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("StructureDefinition",id);
            return response;
        }
    }

    remote isolated function createStructureMap(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getStructureMapById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("StructureMap",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchStructureMap(@display {label: "Search Parameters"} StructureMapSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("StructureMap",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateStructureMap(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchStructureMap(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("StructureMap",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteStructureMap(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("StructureMap",id);
            return response;
        }
    }

    remote isolated function createSubscription(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getSubscriptionById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("Subscription",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchSubscription(@display {label: "Search Parameters"} SubscriptionSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("Subscription",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateSubscription(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchSubscription(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Subscription",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteSubscription(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Subscription",id);
            return response;
        }
    }

    remote isolated function createSubstance(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function updateSubstance(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchSubstance(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Substance",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteSubstance(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Substance",id);
            return response;
        }
    }

    remote isolated function createSubstanceNucleicAcid(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getSubstanceNucleicAcidById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("SubstanceNucleicAcid",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchSubstanceNucleicAcid(@display {label: "Search Parameters"} SubstanceNucleicAcidSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("SubstanceNucleicAcid",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateSubstanceNucleicAcid(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchSubstanceNucleicAcid(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("SubstanceNucleicAcid",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteSubstanceNucleicAcid(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("SubstanceNucleicAcid",id);
            return response;
        }
    }

    remote isolated function createSubstancePolymer(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getSubstancePolymerById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("SubstancePolymer",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchSubstancePolymer(@display {label: "Search Parameters"} SubstancePolymerSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("SubstancePolymer",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateSubstancePolymer(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchSubstancePolymer(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("SubstancePolymer",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteSubstancePolymer(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("SubstancePolymer",id);
            return response;
        }
    }

    remote isolated function createSubstanceProtein(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getSubstanceProteinById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("SubstanceProtein",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchSubstanceProtein(@display {label: "Search Parameters"} SubstanceProteinSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("SubstanceProtein",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateSubstanceProtein(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchSubstanceProtein(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("SubstanceProtein",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteSubstanceProtein(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("SubstanceProtein",id);
            return response;
        }
    }

    remote isolated function createSubstanceReferenceInformation(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getSubstanceReferenceInformationById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("SubstanceReferenceInformation",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchSubstanceReferenceInformation(@display {label: "Search Parameters"} SubstanceReferenceInformationSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("SubstanceReferenceInformation",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateSubstanceReferenceInformation(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchSubstanceReferenceInformation(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("SubstanceReferenceInformation",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteSubstanceReferenceInformation(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("SubstanceReferenceInformation",id);
            return response;
        }
    }

    remote isolated function createSubstanceSourceMaterial(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getSubstanceSourceMaterialById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("SubstanceSourceMaterial",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchSubstanceSourceMaterial(@display {label: "Search Parameters"} SubstanceSourceMaterialSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("SubstanceSourceMaterial",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateSubstanceSourceMaterial(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchSubstanceSourceMaterial(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("SubstanceSourceMaterial",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteSubstanceSourceMaterial(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("SubstanceSourceMaterial",id);
            return response;
        }
    }

    remote isolated function createSubstanceSpecification(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getSubstanceSpecificationById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("SubstanceSpecification",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchSubstanceSpecification(@display {label: "Search Parameters"} SubstanceSpecificationSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("SubstanceSpecification",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateSubstanceSpecification(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchSubstanceSpecification(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("SubstanceSpecification",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteSubstanceSpecification(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("SubstanceSpecification",id);
            return response;
        }
    }

    remote isolated function createSupplyDelivery(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getSupplyDeliveryById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("SupplyDelivery",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchSupplyDelivery(@display {label: "Search Parameters"} SupplyDeliverySearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("SupplyDelivery",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateSupplyDelivery(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchSupplyDelivery(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("SupplyDelivery",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteSupplyDelivery(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("SupplyDelivery",id);
            return response;
        }
    }

    remote isolated function createSupplyRequest(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getSupplyRequestById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("SupplyRequest",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchSupplyRequest(@display {label: "Search Parameters"} SupplyRequestSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("SupplyRequest",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateSupplyRequest(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchSupplyRequest(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("SupplyRequest",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteSupplyRequest(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("SupplyRequest",id);
            return response;
        }
    }

    remote isolated function createTask(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
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

    remote isolated function patchTask(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("Task",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteTask(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("Task",id);
            return response;
        }
    }

    remote isolated function createTerminologyCapabilities(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getTerminologyCapabilitiesById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("TerminologyCapabilities",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchTerminologyCapabilities(@display {label: "Search Parameters"} TerminologyCapabilitiesSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("TerminologyCapabilities",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateTerminologyCapabilities(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchTerminologyCapabilities(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("TerminologyCapabilities",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteTerminologyCapabilities(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("TerminologyCapabilities",id);
            return response;
        }
    }

    remote isolated function createTestReport(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getTestReportById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("TestReport",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchTestReport(@display {label: "Search Parameters"} TestReportSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("TestReport",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateTestReport(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchTestReport(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("TestReport",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteTestReport(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("TestReport",id);
            return response;
        }
    }

    remote isolated function createTestScript(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getTestScriptById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("TestScript",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchTestScript(@display {label: "Search Parameters"} TestScriptSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("TestScript",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateTestScript(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchTestScript(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("TestScript",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteTestScript(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("TestScript",id);
            return response;
        }
    }

    remote isolated function createValueSet(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getValueSetById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("ValueSet",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchValueSet(@display {label: "Search Parameters"} ValueSetSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("ValueSet",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateValueSet(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchValueSet(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("ValueSet",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteValueSet(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("ValueSet",id);
            return response;
        }
    }

    remote isolated function createVerificationResult(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getVerificationResultById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("VerificationResult",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchVerificationResult(@display {label: "Search Parameters"} VerificationResultSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("VerificationResult",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateVerificationResult(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchVerificationResult(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("VerificationResult",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteVerificationResult(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("VerificationResult",id);
            return response;
        }
    }

    remote isolated function createVisionPrescription(@display {label: "Resource data"} json|xml data,
                                                 @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                 @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                                 returns fhir:FHIRResponse|fhir:FHIRError {

            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->create(data,returnMimeType,returnPreference);
                return response;
            }
    }

    remote isolated function getVisionPrescriptionById(@display {label: "Logical ID"} string id,
                                                @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                                @display {label: "Summary"} fhir:SummaryType? summary = ())
                                                returns fhir:FHIRResponse|fhir:FHIRError {


            do {
                fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->getById("VisionPrescription",id,returnMimeType);
                return response;
            }
        }

    remote isolated function searchVisionPrescription(@display {label: "Search Parameters"} VisionPrescriptionSearchParameters|map<string[]>? searchParameters = (),
                                              @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = ())
                                              returns fhir:FHIRResponse|fhir:FHIRError  {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->search("VisionPrescription",searchParameters,returnMimeType);
            return response;
        }
    }

    remote isolated function updateVisionPrescription(@display {label: "Resource data"} json|xml data,
                                            @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                            @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->update(data,returnMimeType,returnPreference);
            return response;
        }
    }

    remote isolated function patchVisionPrescription(@display {label: "Logical ID"} string id,
                                        @display {label: "Resource data"} json|xml data,
                                        @display {label: "Return MIME Type"} fhir:MimeType? returnMimeType = (),
                                        @display {label: "Patch Content Type"} fhir:MimeType|fhir:PatchContentType? patchContentType = (),
                                        @display {label: "Return Preference Type"} fhir:PreferenceType returnPreference = fhir:MINIMAL)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->patch("VisionPrescription",id, data,returnMimeType,patchContentType);
            return response;
        }
    }

    remote isolated function deleteVisionPrescription(@display {label: "Logical ID"} string id)
                                            returns fhir:FHIRResponse|fhir:FHIRError {


        do {
            fhir:FHIRResponse|fhir:FHIRError response = self.fhirConnectorObj->delete("VisionPrescription",id);
            return response;
        }
    }
}