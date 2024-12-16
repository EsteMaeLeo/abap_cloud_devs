@AbapCatalog.sqlViewName: 'ZV_CARSLMJ'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cars'
@Metadata.ignorePropagatedAnnotations: true
define view z_b_carslmj
  as select from zrent_cars_lmj
{
  key plate           as Plate,
      brand           as Brand,
      model           as Model,
      color           as Color,
      engine          as Engine,
      power           as Power,
      unit_power      as UnitPower,
      date_manfacture as DateManfacture,
      fuel            as Fuel,
      consumption     as Consumption,
      doors           as Doors,
      price           as Price,
      currency        as Currency,
      rent            as Rent,
      rent_from       as RentFrom,
      rent_to         as RentTo
}
