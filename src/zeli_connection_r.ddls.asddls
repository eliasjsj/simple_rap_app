@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Connection View - CDS Data Model'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity ZELI_CONNECTION_R
  as select from /dmo/connection as Connection
{
  key  Connection.carrier_id      as CarrierId,
  key  Connection.connection_id   as ConnectionId,
       Connection.airport_from_id as AirportFromId,
       Connection.airport_to_id   as AirportToId,
       Connection.departure_time  as DepartureTime,
       Connection.arrival_time    as ArrivalTime,
       @Semantics.quantity.unitOfMeasure: 'DistanceUnit'
       Connection.distance        as Distance,
       Connection.distance_unit   as DistanceUnit
}
