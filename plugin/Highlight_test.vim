" Show the current highlighting settings
" ======================================
function! HighlightTest()
  normal :source $VIMRUNTIME/syntax/hitest.vim

endfunction

command! HighlightTest call HighlightTest()
