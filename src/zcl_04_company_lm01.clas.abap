CLASS zcl_04_company_lm01 DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      set_company_code IMPORTING iv_company_code TYPE string,
      get_company_code EXPORTING ev_company_code TYPE string,
      set_currency IMPORTING iv_currency TYPE string,
      get_currency EXPORTING ev_currency TYPE string.
  PROTECTED SECTION.

    DATA company_code TYPE c LENGTH 4.
    DATA currency TYPE c LENGTH 3.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_04_company_lm01 IMPLEMENTATION.
  METHOD get_company_code.

    ev_company_code = me->company_code.

  ENDMETHOD.

  METHOD get_currency.
    ev_currency = me->currency.
  ENDMETHOD.

  METHOD set_company_code.
  me->company_code = iv_company_code.
  ENDMETHOD.

  METHOD set_currency.
    me->currency = iv_currency.
  ENDMETHOD.

ENDCLASS.
