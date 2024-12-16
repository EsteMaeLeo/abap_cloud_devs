@AbapCatalog.sqlViewName: 'ZV_DET_CUSTLMJ'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Details Customer'
@Metadata.allowExtensions: true
define view z_b_det_cust_lmj
  as select from zrent_cust_lmj
{
  key doc_id    as ID,
  key plate     as Plate,
      name      as Name,
      last_name as LastName,
      email     as Email,
      cntr_type as TypeContract
}
