CLASS zcl_01_contract_oo_private DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE .


  PUBLIC SECTION.

    TYPES: BEGIN OF ty_address,
             country    TYPE string,
             city       TYPE string,
             posta_code TYPE string,
             region     TYPE string,
             street     TYPE string,
             number     TYPE string,
           END OF ty_address,

           tty_address TYPE TABLE OF ty_address.

    CONSTANTS: BEGIN OF cs_currency,
                 usd TYPE c LENGTH 3 VALUE 'USD',
                 eur TYPE c LENGTH 3 VALUE 'EUR',
               END OF cs_currency.

    CLASS-DATA currency TYPE c LENGTH 3.
    DATA region TYPE string.

    METHODS set_client IMPORTING VALUE(iv_client)   TYPE string
                                 VALUE(iv_location) TYPE string OPTIONAL
                       EXPORTING VALUE(ev_status)   TYPE string
                       CHANGING  VALUE(cv_process)  TYPE string OPTIONAL.

    METHODS get_client EXPORTING ev_client TYPE string.

    CLASS-METHODS set_cntr_type IMPORTING iv_cntr_type TYPE string.
    CLASS-METHODS get_cntr_type EXPORTING ev_cntr_type TYPE string.

    METHODS get_client_name IMPORTING iv_client_id     TYPE string
                            RETURNING VALUE(rv_client) TYPE string.

    METHODS set_address IMPORTING it_address TYPE tty_address.

    CLASS-DATA company TYPE string READ-ONLY.

    METHODS set_sales_org IMPORTING sales_org TYPE string.
    METHODS get_sales_org EXPORTING sales_org TYPE string.

    CLASS-METHODS get_instance EXPORTING er_instance TYPE REF TO zcl_01_contract_oo_private.

  PROTECTED SECTION.
    DATA creation_date TYPE sydate.

  PRIVATE SECTION.
    DATA client TYPE string.
    CLASS-DATA cntr_type TYPE string.
    DATA sales_org TYPE string.

ENDCLASS.



CLASS zcl_01_contract_oo_private IMPLEMENTATION.

  METHOD set_client.

    client = iv_client.
    ev_status = 'OK'.

    IF iv_location IS SUPPLIED.
      cv_process = 'STARTED'.
    ELSE.
      cv_process = 'NOT STARTED'.
    ENDIF.

    company = 'Walmart USA'.

  ENDMETHOD.


  METHOD get_client.

    ev_client = client.

  ENDMETHOD.


  METHOD get_cntr_type.

    ev_cntr_type = cntr_type.

  ENDMETHOD.


  METHOD set_cntr_type.

    cntr_type = iv_cntr_type.

  ENDMETHOD.

  METHOD get_client_name.

    CASE iv_client_id.
      WHEN '01'.
        rv_client = 'Client Name 01'.
      WHEN '02'.
        rv_client = 'Client Name 02'.
    ENDCASE.

  ENDMETHOD.

  METHOD set_address.

  ENDMETHOD.

  METHOD set_sales_org.

    me->sales_org = sales_org.
    me->set_address( it_address = VALUE #( ( country = 'ES' ) ) ).

  ENDMETHOD.

  METHOD get_sales_org.

    sales_org = me->sales_org.

  ENDMETHOD.

  METHOD get_instance.

    er_instance = NEW zcl_01_contract_oo_private(  ).

  ENDMETHOD.

ENDCLASS.
