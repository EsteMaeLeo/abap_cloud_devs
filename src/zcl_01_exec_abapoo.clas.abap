CLASS zcl_01_exec_abapoo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_exec_abapoo IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    out->write( 'Hello Cloud Trial' ).

  ENDMETHOD.

ENDCLASS.
