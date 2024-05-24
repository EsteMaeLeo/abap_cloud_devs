CLASS zcl_03_exec_abapoo_lm01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_03_exec_abapoo_lm01 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    out->write( zcl_03_employee_lm01=>log ).

    DATA(lo_employee1) = NEW zcl_03_employee_lm01( iv_employee_id = '0001' ).

    out->write( lo_employee1->get_employee_id(  ) ).
    out->write( zcl_03_employee_lm01=>log ).

    DATA(lo_employee2) = NEW zcl_03_employee_lm01( iv_employee_id = '0002' ).

    out->write( lo_employee2->get_employee_id(  ) ).

    out->write( zcl_03_employee_lm01=>company ).

    out->write( zcl_03_employee_lm01=>log ).

    out->write( zcl_lab_10_constructor_lm01=>log ).

    DATA(lo_constructor01) = NEW zcl_lab_10_constructor_lm01( 'Instance 1' ).

    out->write( zcl_lab_10_constructor_lm01=>log ).

    DATA(lo_constructor02) = NEW zcl_lab_10_constructor_lm01( 'Instance 2' ).

    out->write( zcl_lab_10_constructor_lm01=>log ).


  ENDMETHOD.

ENDCLASS.
