scriptencoding utf-8

" Fold settings for vim
function! VimFolds()
  let thisline = getline(v:lnum)                 " evaluate content of every line
  
  " I don't think I will need more than 4 levels of folding.
  " Instead of the ugly markers I'm using double quote followed by dash as the marker for folding
  if match(thisline, '^"----') >= 0              " if it starts with a double quote & 4 dashes
    return ">4"                                  " we are at a level 4 fold
  elseif match(thisline, '^"---') >= 0
    return ">3"                                  " level 3 fold
  elseif match(thisline, '^"--') >= 0
    return ">2"                                  " level 2 fold
  elseif match(thisline, '^"-') >= 0
    return ">1"                                  " level 1 fold
  else
    return "="                                   " use foldlevel from previous line  
  endif
endfunction
setlocal foldenable
setlocal foldlevelstart=0                        "fdls:  Start with all folds closed
setlocal foldmethod=expr
setlocal foldexpr=VimFolds()
