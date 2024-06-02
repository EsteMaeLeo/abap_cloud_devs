CLASS zcl_lab_15_flight_price DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA mt_flight TYPE TABLE OF /dmo/flight.

    METHODS add_price IMPORTING iv_flight TYPE /dmo/flight.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_15_flight_price IMPLEMENTATION.
  METHOD add_price.
    APPEND iv_flight TO me->mt_flight.
  ENDMETHOD.

ENDCLASS.
