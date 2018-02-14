scriptencoding utf-8

" Copied from http://dhruvasagar.com/2013/03/28/vim-better-foldtext
function! foldingtext#foldtext() abort
  let l:line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
  let l:lines_count = v:foldend - v:foldstart + 1
  let l:lines_count_text = '| ' . printf("%10s", l:lines_count . ' lines') . ' |'
  let l:foldchar = matchstr(&fillchars, 'fold:\zs.')
  let l:foldtextstart = strpart('»' . repeat(foldchar, v:foldlevel*2) . l:line, 0, (winwidth(0)*2)/3)
  let l:foldtextend = l:lines_count_text . repeat(foldchar, 8)
  let l:foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
  return l:foldtextstart . repeat(foldchar, winwidth(0)-l:foldtextlength) . l:foldtextend
endfunction
