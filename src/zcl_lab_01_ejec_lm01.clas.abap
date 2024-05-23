CLASS zcl_lab_01_ejec_lm01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_ejec_lm01 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA(lo_age) = NEW zcl_lab_04_person_lm01(  ).

    lo_age->set_age( iv_age = 41 ).

    lo_age->get_age( IMPORTING ex_age = DATA(lv_age) ).

    out->write( |Age: | && lv_age ).



  ENDMETHOD.

ENDCLASS.
