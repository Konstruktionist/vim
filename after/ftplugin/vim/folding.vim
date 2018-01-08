scriptencoding utf-8

" Fold settings for vim
function! VimFolds()
  let thisline = getline(v:lnum)                 " evaluate content of every line
  
  " I don't think I will need more than 3 levels of folding.
  " Instead of the ugly markers I'm using double quate followed by dash as the marker for folding
  if match(thisline, '^"---') >= 0               " if it starts with a double quote & 3 dashes
    return ">3"                                  " we are at a level 3 fold
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
