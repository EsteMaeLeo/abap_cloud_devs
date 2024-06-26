CLASS zcl_02_exec_abapoo_lm01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_exec_abapoo_lm01 IMPLEMENTATION.

METHOD if_oo_adt_classrun~main.

    DATA(lo_contract2) = NEW zcl_01_contract_oo(  ).

    zcl_01_contract_oo_private=>get_instance( IMPORTING er_instance = DATA(lo_contract) ).

    DATA lv_process TYPE string.

    DATA: lt_address TYPE zcl_01_contract_oo=>tty_address,
          ls_address TYPE zcl_01_contract_oo=>ty_address.

    IF lo_contract IS BOUND.

      lo_contract->set_client(
        EXPORTING
          iv_client   = 'Walmart'
          iv_location = space
        IMPORTING
          ev_status   = DATA(lv_status)
        CHANGING
          cv_process  = lv_process ).


      lo_contract->get_client( IMPORTING ev_client = DATA(lv_client) ).

      lo_contract->region = 'EU'.

      DATA(lv_client_name) = lo_contract->get_client_name( iv_client_id = '01' ).

      out->write( |name: | && lv_client_name ).

      IF NOT lo_contract2->get_client_name( iv_client_id = '02' )  IS INITIAL.
        out->write( lo_contract2->get_client_name( iv_client_id = '02' ) ).
      ENDIF.

    ENDIF.

    zcl_01_contract_oo=>set_cntr_type( 'Construction' ).

    zcl_01_contract_oo=>get_cntr_type(
      IMPORTING
        ev_cntr_type = DATA(lv_cntr_type)
    ).

    zcl_01_contract_oo=>currency = 'USD'.

    zcl_01_contract_oo=>currency =  zcl_01_contract_oo=>cs_currency-eur.

    out->write( lo_contract->currency ).

    out->write( lo_contract2->currency ).

    out->write( 'Class Cloud Trial' ).
    out->write( |{ lv_client }-{ lv_status }-{ lv_process }-{ lo_contract->region } | ).

    out->write( lv_cntr_type ).

    out->write( zcl_01_contract_oo=>company ).

  ENDMETHOD.

ENDCLASS.
