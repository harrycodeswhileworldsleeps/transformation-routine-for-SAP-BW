DATA : WA_DATA TYPE /SS/ZZZZZZ,
       DATA_STRUCTURE TYPE STANDARD TABLE OF /SS/ZZZZZZ.
LOOP AT DATA_STRUCTURE INTO WA_DATA.
     call function 'ZHASHXX_R22'
      changing
        erro_data       = WA_DATA-/ss/z_fdchtx.             "making it specific for the field that is supposed to be erroneous.
    MODIFY DATA_PACKAGE FROM WA_DATA.
    "over-writes the value.

ENDLOOP.
