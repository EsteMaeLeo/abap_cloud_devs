CLASS zcl_lab_10_constructor_lm01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA log TYPE string.

    METHODS constructor IMPORTING iv_log TYPE string.

    CLASS-METHODS class_constructor.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_10_constructor_lm01 IMPLEMENTATION.
  METHOD constructor.
     log = |{ log }-Instance contructor -->|.
  ENDMETHOD.

  METHOD class_constructor.
    log = |{ log }-Static Constructor-->|.
  ENDMETHOD.

ENDCLASS.
