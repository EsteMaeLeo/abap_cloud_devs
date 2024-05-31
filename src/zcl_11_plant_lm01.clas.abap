CLASS zcl_11_plant_lm01 DEFINITION
  PUBLIC

  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_product RETURNING VALUE(rv_product) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_11_plant_lm01 IMPLEMENTATION.
  METHOD get_product.
    DATA(lo_storage_location) = NEW zcl_12_storage_location_lm01(  ).
    lo_storage_location->product = 'PC'.
    lo_storage_location->set_product( iv_product = 'Laptop' ).

  ENDMETHOD.

ENDCLASS.
