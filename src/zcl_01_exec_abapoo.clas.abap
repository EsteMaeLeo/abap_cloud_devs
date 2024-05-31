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

*    data lo_contract type REF TO zcl_01_contract_oo.
*
*    create OBJECT lo_contract.
*
*    lo_contract = new #(  ).

    DATA(lo_contract) = NEW zcl_01_contract_oo(  ).

    DATA(lo_contract2) = NEW zcl_01_contract_oo(  ).

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

*          CALL METHOD lo_contract->set_client
*            EXPORTING
*              iv_client   =
*              iv_location =
**            IMPORTING
**             ev_status   =
*            CHANGING
*              cv_process  =.

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

    "INHERITING
    out->write( |--inheritance--| ).

    DATA(lo_company)          = NEW zcl_04_company_lm01( iv_quotation = 'Q1'  ).
    DATA(lo_plant)            = NEW zcl_05_plant_lm01( iv_quotation = 'Q2' iv_products = 'P2' ).
    DATA(lo_storate_location) = NEW zcl_06_storage_lm01( iv_quotation = 'Q3' iv_products = 'P3' ).

    lo_company->set_company_code( '0001' ).
    lo_company->set_currency( 'USD' ).

    lo_company->get_company_code(  IMPORTING   ev_company_code = DATA(lv_company_code) ).
    lo_company->get_currency(  IMPORTING   ev_currency = DATA(lv_currency) ).

    out->write( |Company-{ lv_company_code }-{ lv_currency }| ).

    lo_plant->set_company_code( '0020' ).
    lo_plant->set_currency( 'EUR' ).

    lo_plant->get_company_code(  IMPORTING   ev_company_code = lv_company_code ).
    lo_plant->get_currency(  IMPORTING   ev_currency = lv_currency ).

    out->write( |Plant-{ lv_company_code }-{ lv_currency }| ).

    lo_storate_location->set_company_code( '0030' ).
    lo_storate_location->set_currency( 'MXN' ).

    lo_storate_location->get_company_code(  IMPORTING   ev_company_code = lv_company_code ).
    lo_storate_location->get_currency(  IMPORTING   ev_currency = lv_currency ).

    out->write( |Storage Location-{ lv_company_code }-{ lv_currency }| ).

    out->write( | | ).
    out->write( |--Narrowing Casting--| ).

    DATA(lo_animal) = NEW zcl_07_animall_lm01(  ).
    DATA(lo_lion) = NEW zcl_08_lion_lm01(  ).
    out->write( lo_animal->walk(  ) ).
    out->write( lo_lion->walk(  ) ).

    lo_animal = lo_lion.
    out->write( | | ).
    out->write( |--After assigning Narrowing Casting--| ).
    out->write( lo_animal->walk(  ) ).
    out->write( lo_lion->walk(  ) ).

  ENDMETHOD.
ENDCLASS.
