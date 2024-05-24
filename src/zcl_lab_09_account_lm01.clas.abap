CLASS zcl_lab_09_account_lm01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS set_iban IMPORTING iban TYPE string.
    METHODS get_iban EXPORTING iban TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA iban TYPE string.
ENDCLASS.



CLASS zcl_lab_09_account_lm01 IMPLEMENTATION.
  METHOD get_iban.
    iban = me->iban.
  ENDMETHOD.

  METHOD set_iban.
    me->iban = iban.
  ENDMETHOD.

ENDCLASS.
