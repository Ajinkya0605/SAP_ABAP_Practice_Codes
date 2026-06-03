CLASS zcl_calc_practice DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  INHERITING FROM cl_xco_cp_adt_simple_classrun.

  PROTECTED SECTION.
    METHODS main REDEFINITION.
ENDCLASS.


CLASS zcl_calc_practice IMPLEMENTATION.

  METHOD main.

*    DATA result TYPE p LENGTH 8 DECIMALS 2.

    DATA result TYPE p LENGTH 10 DECIMALS 0.

    result = 20 - 3.

    out->write( |Result = { result }| ).

  ENDMETHOD.

ENDCLASS.