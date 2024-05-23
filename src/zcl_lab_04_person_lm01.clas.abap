CLASS zcl_lab_04_person_lm01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    methods set_age IMPORTING iv_age type i.
    methods get_age EXPORTING ex_age type i.
  PROTECTED SECTION.
  PRIVATE SECTION.
    data age type i.
ENDCLASS.



CLASS zcl_lab_04_person_lm01 IMPLEMENTATION.

  METHOD set_age.

    age = iv_age.

  ENDMETHOD.

  METHOD get_age.

  ex_age = age.

  ENDMETHOD.

ENDCLASS.
