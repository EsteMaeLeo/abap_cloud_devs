CLASS zcl_13_ny_plant_lm01 DEFINITION INHERITING FROM zcl_11_plant_lm01
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS get_products_sl.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_13_ny_plant_lm01 IMPLEMENTATION.

  METHOD get_products_sl.
    DATA(lo_storage_location) = NEW zcl_12_storage_location_lm01(  ).
    lo_storage_location->product = 'PC'.
  ENDMETHOD.

ENDCLASS.
