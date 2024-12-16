@AbapCatalog.sqlViewName: 'ZV_RENTLMJ'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Renting'
@Metadata.allowExtensions: true
define view z_i_renting_lmj
  as select from z_b_carslmj as Cars
  association [1]    to z_b_rem_days_lmj as _RemDays     on Cars.Plate = _RemDays.Plate
  association [0..*] to z_b_brands_lmj   as _Brands      on Cars.Brand = _Brands.Brand
  association [0..*] to z_b_det_cust_lmj as _DetCustomer on Cars.Plate = _DetCustomer.Plate
{
      //cars
  key Plate,
      Brand,
      Model,
      Color,
      Engine,
      Power,
      UnitPower,
      DateManfacture,
      Fuel,
      Consumption,
      Doors,
      Price,
      Currency,
      Rent,
      RentFrom,
      RentTo,
      // 0 neutral grey 1 negative red 2 critical yellow 3 positive green
      case
      when _RemDays.Dayrs <= 0 then 0
      when _RemDays.Dayrs between 1 and 30 then 1
      when _RemDays.Dayrs between 31 and 100 then 2
      when _RemDays.Dayrs > 100 then 3
      else 0
      end as RentTime,
      '' as Status,
      _Brands.ImageCar,
      _DetCustomer

}
