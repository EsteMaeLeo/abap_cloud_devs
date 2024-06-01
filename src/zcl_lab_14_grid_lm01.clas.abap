CLASS zcl_lab_14_grid_lm01 DEFINITION INHERITING FROM zcl_lab_13_view_lm01
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor IMPORTING iv_view_type type string
                                  iv_box type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_14_grid_lm01 IMPLEMENTATION.
  METHOD constructor.

    super->constructor( iv_view_type = iv_view_type ).
    box = iv_box.

  ENDMETHOD.

ENDCLASS.
