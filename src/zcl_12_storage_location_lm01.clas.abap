CLASS zcl_12_storage_location_lm01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
    GLOBAL FRIENDS zcl_11_plant_lm01.

  PUBLIC SECTION.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA product TYPE string.
    METHODS set_product IMPORTING iv_product TYPE string.
ENDCLASS.



CLASS zcl_12_storage_location_lm01 IMPLEMENTATION.
  METHOD set_product.

  ENDMETHOD.

ENDCLASS.
