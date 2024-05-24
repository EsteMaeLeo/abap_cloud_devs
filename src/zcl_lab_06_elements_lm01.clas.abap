"Made by Leonel Morales https://github.com/EsteMaeLeo
CLASS zcl_lab_06_elements_lm01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_elem_objects,
             class     TYPE string,
             instance  TYPE string,
             reference TYPE string,
           END OF ty_elem_objects.

    CONSTANTS: c_constant1 TYPE string VALUE 'CONSTANT 1',
               c_constant2 TYPE string VALUE 'CONSTANT 2',
               c_constant3 TYPE string VALUE 'CONSTANT 3',
               c_constant4 TYPE string VALUE 'CONSTANT 4'.

    DATA ms_object TYPE ty_elem_objects.

    METHODS set_object IMPORTING ms_object TYPE ty_elem_objects.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_06_elements_lm01 IMPLEMENTATION.
  METHOD set_object.

    me->ms_object = ms_object.

  ENDMETHOD.

ENDCLASS.
