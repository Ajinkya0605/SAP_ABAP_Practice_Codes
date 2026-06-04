CLASS zcl_fibonacci_number_in_itnt DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_fibonacci_number_in_itnt IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  CONSTANTS max_count TYPE i VALUE 20.

  DATA numbers TYPE STANDARD TABLE OF i WITH EMPTY KEY.
  DATA output  TYPE string_table.

  DO max_count TIMES.

    CASE sy-index.
      WHEN 1.
        APPEND 0 TO numbers.
      WHEN 2.
        APPEND 1 TO numbers.
      WHEN OTHERS.

        DATA(prev1) = numbers[ sy-index - 1 ].
        DATA(prev2) = numbers[ sy-index - 2 ].

        APPEND prev1 + prev2 TO numbers.
    ENDCASE.

  ENDDO.

  DATA(counter) = 0.

  LOOP AT numbers INTO DATA(number).

    counter += 1.

    APPEND |{ counter WIDTH = 4 ALIGN = LEFT }: { number WIDTH = 10 ALIGN = RIGHT }|
      TO output.

  ENDLOOP.

  out->write(
    data = output
    name = |The first { max_count } Fibonacci Numbers|
  ).

ENDMETHOD.
ENDCLASS.