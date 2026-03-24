*&---------------------------------------------------------------------*
*& Report ZTESTE_HROMANINI_FF
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zteste_hromanini_ff.

DATA lv_number TYPE CHAR10.

CALL FUNCTION 'NUMBER_GET_NEXT'
  EXPORTING
    nr_range_nr             = '01'
    object                  = '/PORTTUS/S'
  IMPORTING
    number                  = lv_number
  EXCEPTIONS
    interval_not_found      = 1
    number_range_not_intern = 2
    object_not_found        = 3
    quantity_is_0           = 4
    quantity_is_not_1       = 5
    interval_overflow       = 6
    buffer_overflow         = 7
    OTHERS                  = 8.

WRITE: lv_number, sy-subrc.
