This package contains a FHIR client connector that can be used to connect to a FHIR server.

Prerequisites

Before using this connector, make sure you have the following prerequisites:

- Ballerina programming language installed
- Authentication credentials($auth) required for accessing the FHIR server

Usage

1. To use the `$connectorName` connector in your Ballerina program, import the connector module as follows:

'''
import org.wso2.health.tool.$connectorName;
'''

2. Instantiate an instance of the class containing the `init` function and invoke the `init` function with the required parameters
'''
${connectorName}: ConnectorObj  = check new("https://auth.example.com/token", "client_id", "client_secret", ["read", "write"]);
'''
