@AbapCatalog.sqlViewName: 'ZV_REM_DAYSLMJ'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Remaining Days'
@Metadata.ignorePropagatedAnnotations: true
define view z_b_rem_days_lmj
  as select from zrent_cars_lmj
{
  key plate as Plate,
      brand as Brand,
      case
      when rent_to <> ''
      then dats_days_between( cast( $session.system_date as abap.dats), rent_to)
      end   as Dayrs
}
