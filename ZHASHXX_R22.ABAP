function zhashfm_rem1.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  CHANGING
*"     REFERENCE(ERRO_DATA) TYPE /SS/ZZZXXXXXX.
*"----------------------------------------------------------------------
  data: length type i.
  length =  strlen( erro_data ).
  search erro_data for '#'.
  if sy-subrc = 0.
    while length <= 25.
      search erro_data for '#'.
      if sy-subrc = 0.
        replace '#' in erro_data with ' '.
        condense erro_data.
      else.
        exit.
      endif.
    endwhile.
  endif.
endfunction.
