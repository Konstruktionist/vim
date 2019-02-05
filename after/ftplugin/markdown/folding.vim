scriptencoding utf-8

" Fold settings for Markdown

function! MarkdownFolds()
  let thisline = getline(v:lnum)                 " evaluate content of every line
  
  " We will use the headings as the marker for folding
  if match(thisline, '^######') >= 0
    return ">6"                                  " we are at a level 6 fold
  elseif match(thisline, '^#####') >= 0
    return ">5"                                  " we are at a level 5 fold, etc.
  elseif match(thisline, '^####') >= 0
    return ">4"
  elseif match(thisline, '^###') >= 0
    return ">3"
  elseif match(thisline, '^##') >= 0
    return ">2"
  elseif match(thisline, '^#') >= 0
    return ">1"
  else
    return "="                                   " use foldlevel from previous line 
  endif
endfunction
setlocal foldenable
setlocal foldlevelstart=0                        "fdls:  Start with all folds closed
setlocal foldmethod=expr
setlocal foldexpr=MarkdownFolds()
setlocal complete-=t
