CLASS zcl_10_eu_citizen_lm01 DEFINITION INHERITING FROM zcl_09_citizen_lm01
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS geT_parent_instance RETURNING VALUE(ro) TYPE REF TO zcl_09_citizen_lm01.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_10_eu_citizen_lm01 IMPLEMENTATION.


  METHOD get_parent_instance.
    ro = NEW zcl_09_citizen_lm01(  ).
  ENDMETHOD.

ENDCLASS.
