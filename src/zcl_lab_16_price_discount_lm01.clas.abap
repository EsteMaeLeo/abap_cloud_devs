CLASS zcl_lab_16_price_discount_lm01 DEFINITION INHERITING FROM zcl_lab_15_flight_price_lm01
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS add_price REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CONSTANTS c_discount TYPE /dmo/flight_price VALUE '0.1'.
ENDCLASS.



CLASS zcl_lab_16_price_discount_lm01 IMPLEMENTATION.
  METHOD add_price.

    DATA(lwa_flight)  =  iv_flight.
    lwa_flight-price = iv_flight-price - ( iv_flight-price * c_discount ).
    super->add_price( iv_flight =  lwa_flight ).

  ENDMETHOD.

ENDCLASS.
