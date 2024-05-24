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

    DATA(lo_flight) = NEW zcl_lab_05_flight_lm01(  ).

    DATA(lv_status) = SWITCH #( lo_flight->get_flight_boolean(
                                                                 iv_carrier = 'AA'
                                                                 iv_connid  = '0015' )

                              WHEN 'X' THEN 'True'
                              ELSE 'False'
                          ).


    out->write( |Flight exist for Carrier and Connection: | && lv_status ).

    DATA lv_elem_objects TYPE zcl_lab_06_elements_lm01=>ty_elem_objects.
    DATA(lo_elements) = NEW zcl_lab_06_elements_lm01(  ).

    lv_elem_objects-class = 'ZCL_LAB_06_ELEMENTS_LM01'.
    lv_elem_objects-instance = 'LO_ELEMENTS'.
    lv_elem_objects-reference = 'ELEMENTS'.

    out->write( lv_elem_objects ).

    out->write( |{  zcl_lab_06_elements_lm01=>c_constant1 }-{ zcl_lab_06_elements_lm01=>c_constant2 }-{ zcl_lab_06_elements_lm01=>c_constant3 }-{ zcl_lab_06_elements_lm01=>c_constant4 } | ).

    DATA(lo_student07) = NEW zcl_lab_07_student_lm01(  ).

    lo_student07->set_birth_date( iv_birth_date = '08221982' ).

    out->write( lo_student07->birth_date ).

    zcl_lab_08_work_record_lm01=>open_new_record(
      iv_date       = '20032024'
      iv_first_name = 'William'
      iv_last_name  = 'Anderson'
      iv_surname    = 'Will'
    ).

    DATA(lo_account) = NEW zcl_lab_09_account_lm01( ).
    lo_account->set_iban( iban = '10202020' ).
    lo_account->get_iban( IMPORTING iban = DATA(lv_iban) ).

    out->write( lv_iban ).


  ENDMETHOD.

ENDCLASS.
