@AbapCatalog.sqlViewName: 'ZV_BRANDSLMJ'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
@Metadata.ignorePropagatedAnnotations: true
define view z_b_brands_lmj
  as select from zrent_brands_lmj
{
  key brand as Brand,
  @UI.hidden: true
      url   as ImageCar
}
