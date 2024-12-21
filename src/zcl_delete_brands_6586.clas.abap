CLASS zcl_delete_brands_6586 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_delete_brands_6586 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DELETE FROM zrent_brands_lmj.

    IF sy-subrc EQ 0.
      out->write( 'All data deleted from zrent_brands_lmj table' ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
