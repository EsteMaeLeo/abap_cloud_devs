CLASS zcl_lab_13_view_lm01 DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor IMPORTING iv_view_type TYPE string.

  PROTECTED SECTION.

    DATA view_type TYPE string.
    DATA box TYPE string.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_13_view_lm01 IMPLEMENTATION.
  METHOD constructor.
    view_type = iv_view_type.
  ENDMETHOD.

ENDCLASS.
