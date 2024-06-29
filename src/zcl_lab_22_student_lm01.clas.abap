CLASS zcl_lab_22_student_lm01 DEFINITION INHERITING FROM zcl_lab_21_classroom_lm01
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS assign_student RETURNING VALUE(ro_classrom) TYPE REF TO zcl_lab_21_classroom_lm01.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_22_student_lm01 IMPLEMENTATION.

  METHOD assign_student.

    ro_classrom = NEW zcl_lab_21_classroom_lm01(  ).

  ENDMETHOD.

ENDCLASS.
