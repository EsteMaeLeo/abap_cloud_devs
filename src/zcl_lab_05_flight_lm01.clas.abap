CLASS zcl_lab_05_flight_lm01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_flight_boolean IMPORTING iv_carrier  TYPE /dmo/flight-carrier_id
                                         iv_connid   TYPE /dmo/flight-connection_id
                               RETURNING VALUE(find) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_05_flight_lm01 IMPLEMENTATION.
  METHOD get_flight_boolean.

    DATA(lv_exist) = abap_false.

    SELECT SINGLE @abap_true
        FROM /dmo/flight
        WHERE carrier_id = @iv_carrier
          AND connection_id = @iv_connid
        INTO @lv_exist.

    find = lv_exist.

  ENDMETHOD.

ENDCLASS.
