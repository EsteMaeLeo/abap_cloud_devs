CLASS zcl_05_plant_lm01 DEFINITION INHERITING FROM zcl_04_company_lm01
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS constructor IMPORTING iv_quotation type string
                                  iv_products type string.

    data products type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_05_plant_lm01 IMPLEMENTATION.
  METHOD constructor.

    super->constructor( iv_quotation = iv_quotation ).
    me->products = iv_products.

  ENDMETHOD.

ENDCLASS.
