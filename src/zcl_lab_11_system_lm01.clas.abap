CLASS zcl_lab_11_system_lm01 DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA architecture TYPE string VALUE '64BITS'.
    METHODS GET_architecture RETURNING VALUE(rv_architecture) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_11_system_lm01 IMPLEMENTATION.

  METHOD get_architecture.
    rv_architecture = architecture.
  ENDMETHOD.

ENDCLASS.
