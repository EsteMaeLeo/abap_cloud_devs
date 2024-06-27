CLASS zcl_lab_15_flight_price_lm01 DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA mt_flight TYPE TABLE OF /dmo/flight.

    METHODS add_price IMPORTING iv_flight TYPE /dmo/flight.
    METHODS get_price IMPORTING iv_carrier  TYPE /dmo/flight-carrier_id
                                iv_connid   TYPE /dmo/flight-connection_id
                      RETURNING VALUE(rv_price) TYPE /dmo/flight-price.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_15_flight_price_lm01 IMPLEMENTATION.
  METHOD add_price.
    APPEND iv_flight TO me->mt_flight.
  ENDMETHOD.

  METHOD get_price.
    rv_price = me->mt_flight[ carrier_id = iv_carrier connection_id = iv_connid ]-price.

  ENDMETHOD.

ENDCLASS.
