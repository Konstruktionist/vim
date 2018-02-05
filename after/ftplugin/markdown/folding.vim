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

" Copied from http://dhruvasagar.com/2013/03/28/vim-better-foldtext
function! CustomFoldText()
  let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
  let lines_count = v:foldend - v:foldstart + 1
  let lines_count_text = '| ' . printf("%10s", lines_count . ' lines') . ' |'
  let foldchar = matchstr(&fillchars, 'fold:\zs.')
  let foldtextstart = strpart('»' . repeat(foldchar, v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
  let foldtextend = lines_count_text . repeat(foldchar, 8)
  let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
  return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
endfunction
setlocal foldtext=CustomFoldText()
