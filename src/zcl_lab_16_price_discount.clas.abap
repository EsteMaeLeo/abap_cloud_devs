CLASS zcl_lab_16_price_discount DEFINITION INHERITING FROM zcl_lab_15_flight_price
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS add_price REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CONSTANTS c_ten type /dmo/flight_price value '0,1'.
ENDCLASS.



CLASS zcl_lab_16_price_discount IMPLEMENTATION.
  METHOD add_price.
    data(lv_discount) = iv_flight-price * c_ten.
     lv_discount  =  iv_flight-price - lv_discount.

  ENDMETHOD.

ENDCLASS.
