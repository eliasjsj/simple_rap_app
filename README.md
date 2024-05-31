# Simple RAP App
A very simple RAP (RESTFul ABAP Programming) App

This app was created using tutorial provided at https://help.sap.com/docs/abap-cloud/abap-rap/developing-odata-service-for-simple-list-reporting?locale=en-US?version=sap_btp.
The app is a Read-Only Flight Connection List.

Basically, the steps:
1 - Create a Data Model (Table + CDS View)
2 - Expose through a Service Definition
3 - Publish the Service Definitio through Service Binding (this version was created using OData V2).
4 - Refine the UI with Annotations.

The intent was to understand at high level how an RAP App works, OData Services with Fiori Elements UI. 
