" Trim trailing whitespace
" ========================
function TrimWhitespace()
  " trailing whitespaces have meaning in markdown so don't try there
  if &filetype!='markdown'
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
  endif
endfunction

command! TrimWhitespace call TrimWhitespace()
