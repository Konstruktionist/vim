" Vim colorscheme

" --------------------------------
set background=dark
" - or ---------------------------
"set background=light
" --------------------------------

highlight clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name="Kafka"

" --------------------------------
" Editor settings
" --------------------------------
hi Normal          ctermfg=231	ctermbg=NONE      cterm=NONE        guifg=#ffffff     guibg=#2a303b     gui=NONE
hi Cursor          ctermfg=249   ctermbg=8         cterm=NONE        guifg=#909090     guibg=#606060     gui=NONE
hi CursorLine      ctermfg=NONE  ctermbg=7         cterm=NONE        guifg=#ffffff     guibg=#a1a1a1     gui=NONE
hi LineNr          ctermfg=244	ctermbg=NONE      cterm=NONE        guifg=#808080     guibg=NONE        gui=NONE
hi CursorLineNR    ctermfg=11		ctermbg=NONE      cterm=NONE        guifg=#fae3a0     guibg=NONE        gui=NONE

" -----------------
" - Number column -
" -----------------
hi CursorColumn   ctermfg=NONE      ctermbg=7         cterm=NONE        guifg=NONE        guibg=#909090     gui=NONE
hi FoldColumn     ctermfg=239       ctermbg=NONE      cterm=NONE        guifg=#4e4e4e     guibg=NONE        gui=NONE
hi SignColumn     ctermfg=69        ctermbg=7         cterm=NONE        guifg=#8a8a8a     guibg=#909090     gui=NONE
hi Folded         ctermfg=239       ctermbg=NONE      cterm=NONE        guifg=#4e4e4e     guibg=NONE        gui=NONE

" -------------------------
" - Window/Tab delimiters -
" -------------------------
hi VertSplit       ctermfg=244      ctermbg=7         cterm=NONE        guifg=#808080     guibg=#909090     gui=NONE
hi ColorColumn     ctermfg=NONE     ctermbg=7         cterm=NONE        guifg=NONE        guibg=#909090     gui=NONE
hi TabLine         ctermfg=245      ctermbg=NONE      cterm=NONE        guifg=#8a8a8a     guibg=NONE        gui=NONE
hi TabLineFill     ctermfg=239      ctermbg=NONE      cterm=NONE        guifg=#4e4e4e     guibg=NONE        gui=NONE
hi TabLineSel      ctermfg=112      ctermbg=NONE      cterm=NONE        guifg=#5f8700     guibg=NONE        gui=NONE

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory       ctermfg=69       ctermbg=NONE      cterm=NONE        guifg=#0f829d    guibg=NONE         gui=NONE
hi Search          ctermfg=236      ctermbg=11        cterm=NONE        guifg=#303030    guibg=#fae3a0      gui=NONE
hi IncSearch       ctermfg=235      ctermbg=208       cterm=NONE        guifg=#ff8700    guibg=#262626      gui=NONE

" -----------------
" - Prompt/Status -
" -----------------
hi StatusLine      ctermfg=7        ctermbg=8         cterm=NONE        guifg=#909090     guibg=#606060     gui=NONE
hi StatusLineNC    ctermfg=244      ctermbg=7         cterm=NONE        guifg=#808080     guibg=#909090     gui=NONE
hi WildMenu        ctermfg=111      ctermbg=NONE      cterm=NONE        guifg=#87afff     guibg=NONE        gui=NONE
hi Question        ctermfg=111      ctermbg=NONE      cterm=NONE        guifg=#87afff     guibg=NONE        gui=NONE
hi Title           ctermfg=166      ctermbg=NONE      cterm=NONE        guifg=#d75f00     guibg=NONE        gui=NONE
hi ModeMsg         ctermfg=106      ctermbg=NONE      cterm=NONE        guifg=#87af00     guibg=NONE        gui=NONE
hi MoreMsg         ctermfg=106      ctermbg=NONE      cterm=NONE        guifg=#87af00     guibg=NONE        gui=NONE

" --------------
" - Visual aid -
" --------------
hi MatchParen      ctermfg=NONE     ctermbg=202       cterm=NONE        guifg=#ffffff     guibg=#ff5f00     gui=NONE
hi Visual          ctermfg=NONE     ctermbg=25        cterm=NONE        guifg=NONE        guibg=#005faf     gui=NONE
hi VisualNOS       ctermfg=9        ctermbg=25        cterm=NONE        guifg=#d14548     guibg=#005faf     gui=NONE
hi NonText         ctermfg=244      ctermbg=NONE      cterm=NONE        guifg=#b2b2b2     guibg=NONE        gui=NONE

hi Todo            ctermfg=3        ctermbg=14        cterm=NONE        guifg=#f9bb80     guibg=#0f829d     gui=NONE
hi Underlined      ctermfg=244      ctermbg=NONE      cterm=NONE        guifg=#808080     guibg=NONE        gui=NONE
hi Error           ctermfg=15       ctermbg=1         cterm=NONE        guifg=#fff0f0     guibg=#b91e2e     gui=NONE
hi ErrorMsg        ctermfg=1        ctermbg=NONE      cterm=NONE        guifg=#b91e2e     guibg=NONE        gui=NONE
hi WarningMsg      ctermfg=3        ctermbg=25        cterm=NONE        guifg=#f9bb80     guibg=#0f829d     gui=NONE
hi Ignore          ctermfg=244      ctermbg=7         cterm=NONE        guifg=#808080     guibg=#005faf     gui=NONE
hi SpecialKey      ctermfg=244      ctermbg=NONE      cterm=NONE        guifg=#b2b2b2     guibg=NONE        gui=NONE

" --------------------------------
" Variable types
" --------------------------------
hi Constant        ctermfg=6        ctermbg=NONE      cterm=NONE        guifg=#d14548     guibg=NONE        gui=NONE
hi String          ctermfg=2        ctermbg=NONE      cterm=NONE        guifg=#81957c     guibg=NONE        gui=NONE
hi StringDelimiter ctermfg=248      ctermbg=NONE      cterm=NONE        guifg=#fff0f0     guibg=NONE        gui=NONE
hi Character       ctermfg=172      ctermbg=NONE      cterm=NONE        guifg=#5f8700     guibg=NONE        gui=NONE
hi Number          ctermfg=172      ctermbg=NONE      cterm=NONE        guifg=#d78700     guibg=NONE        gui=NONE
hi Boolean         ctermfg=172      ctermbg=NONE      cterm=NONE        guifg=#d78700     guibg=NONE        gui=NONE
hi Float           ctermfg=172      ctermbg=NONE      cterm=NONE        guifg=#d78700     guibg=NONE        gui=NONE

hi Identifier      ctermfg=11       ctermbg=NONE      cterm=NONE        guifg=#fae3a0     guibg=NONE        gui=NONE
hi Function        ctermfg=69       ctermbg=NONE      cterm=NONE        guifg=#5f87ff     guibg=NONE        gui=NONE

" --------------------------------
" Language constructs
" --------------------------------
hi Statement       ctermfg=74       ctermbg=NONE      cterm=NONE        guifg=#5fafd7     guibg=NONE        gui=NONE
hi Conditional     ctermfg=74       ctermbg=NONE      cterm=NONE        guifg=#5fafd7     guibg=NONE        gui=NONE
hi Repeat          ctermfg=74       ctermbg=NONE      cterm=NONE        guifg=#5fafd7     guibg=NONE        gui=NONE
hi Label           ctermfg=106      ctermbg=NONE      cterm=NONE        guifg=#87af00     guibg=NONE        gui=NONE
hi Operator        ctermfg=74       ctermbg=NONE      cterm=NONE        guifg=#5fafd7     guibg=NONE        gui=NONE
hi Keyword         ctermfg=74       ctermbg=NONE      cterm=NONE        guifg=#5fafd7     guibg=NONE        gui=NONE
hi Exception       ctermfg=69       ctermbg=NONE      cterm=NONE        guifg=#5f87ff     guibg=NONE         gui=NONE
hi Comment         ctermfg=244      ctermbg=NONE      cterm=NONE        guifg=#b2b2b2     guibg=NONE        gui=NONE

hi Special         ctermfg=111      ctermbg=NONE      cterm=NONE        guifg=#87afff     guibg=NONE        gui=NONE
hi SpecialChar     ctermfg=74       ctermbg=NONE      cterm=NONE        guifg=#5fafd7     guibg=NONE        gui=NONE
hi Tag             ctermfg=74       ctermbg=NONE      cterm=NONE        guifg=#5fafd7     guibg=NONE        gui=NONE
hi Delimiter       ctermfg=241      ctermbg=NONE      cterm=NONE        guifg=#626262     guibg=NONE        gui=NONE
hi SpecialComment  ctermfg=244      ctermbg=NONE      cterm=NONE        guifg=#b2b2b2     guibg=NONE        gui=NONE
hi Debug           ctermfg=225      ctermbg=NONE      cterm=bold        guifg=#ffd7ff     guibg=NONE        gui=NONE

" ----------
" - C like -
" ----------
hi PreProc         ctermfg=69       ctermbg=NONE      cterm=NONE        guifg=#0f829d     guibg=NONE        gui=NONE
hi Include         ctermfg=238      ctermbg=NONE      cterm=NONE        guifg=#444444     guibg=NONE        gui=NONE
hi Define          ctermfg=111      ctermbg=NONE      cterm=NONE        guifg=#87afff     guibg=NONE        gui=NONE
hi Macro           ctermfg=208      ctermbg=NONE      cterm=NONE        guifg=#262626     guibg=NONE        gui=NONE
hi PreCondit       ctermfg=69       ctermbg=NONE      cterm=NONE        guifg=#0f829d     guibg=NONE        gui=NONE

hi Type            ctermfg=111      ctermbg=NONE      cterm=NONE        guifg=#87afff     guibg=NONE        gui=NONE
hi StorageClass    ctermfg=11       ctermbg=NONE      cterm=NONE        guifg=#fae3a0     guibg=NONE        gui=NONE
hi Structure       ctermfg=111      ctermbg=NONE      cterm=NONE        guifg=#87afff     guibg=NONE        gui=NONE
hi Typedef         ctermfg=111      ctermbg=NONE      cterm=NONE        guifg=#87afff     guibg=NONE        gui=NONE

" --------------------------------
" Diff
" --------------------------------
hi DiffAdd         ctermfg=2        ctermbg=NONE      cterm=NONE        guifg=#81957c     guibg=NONE        gui=NONE
hi DiffChange      ctermfg=6        ctermbg=NONE      cterm=NONE        guifg=#6193bc     guibg=NONE        gui=NONE
hi DiffDelete      ctermfg=1        ctermbg=NONE      cterm=NONE        guifg=#b91e2e     guibg=NONE        gui=NONE
hi DiffText        ctermfg=229      ctermbg=NONE      cterm=NONE        guifg=#ffffaf     guibg=NONE        gui=NONE
hi DiffAdded       ctermfg=2        ctermbg=NONE      cterm=NONE        guifg=#81957c     guibg=NONE        gui=NONE
hi DiffFile        ctermfg=6        ctermbg=NONE      cterm=NONE        guifg=#6193bc     guibg=NONE        gui=NONE
hi DiffNewFile     ctermfg=2        ctermbg=NONE      cterm=NONE        guifg=#81957c     guibg=NONE        gui=NONE
hi DiffLine        ctermfg=229      ctermbg=NONE      cterm=NONE        guifg=#ffffaf     guibg=NONE        gui=NONE
hi DiffRemoved     ctermfg=1        ctermbg=NONE      cterm=NONE        guifg=#b91e2e     guibg=NONE        gui=NONE
" --------------------------------
" Completion menu
" --------------------------------
hi Pmenu           ctermfg=111      ctermbg=NONE      cterm=NONE        guifg=#87afff     guibg=NONE        gui=NONE
hi PmenuSel        ctermfg=236      ctermbg=248       cterm=NONE        guifg=#303030     guibg=#a8a8a8     gui=NONE
hi PmenuSbar       ctermfg=NONE     ctermbg=7         cterm=NONE        guifg=NONE        guibg=#909090     gui=NONE
hi PmenuThumb      ctermfg=111      ctermbg=NONE      cterm=NONE        guifg=#87afff     guibg=NONE        gui=NONE

" --------------------------------
" Spelling
" --------------------------------
hi SpellBad        ctermfg=231      ctermbg=88        cterm=NONE        guifg=#ffffff     guibg=NONE        gui=NONE
hi SpellCap        ctermfg=231      ctermbg=25        cterm=NONE        guifg=#ffffff     guibg=NONE        gui=NONE
hi SpellLocal      ctermfg=231      ctermbg=92        cterm=NONE        guifg=#ffffff     guibg=NONE        gui=NONE
hi SpellRare       ctermfg=231      ctermbg=81        cterm=NONE        guifg=#ffffff     guibg=NONE        gui=NONE

"--------------------------------------------------------------------
" Specific settings                                                 |
"--------------------------------------------------------------------

" --------------------------------
" Git highlighting
" --------------------------------
hi gitCommitOverflow ctermfg=1      ctermbg=NONE      cterm=NONE        guifg=#b91e2e     guibg=NONE        gui=NONE
hi gitCommitSummary  ctermfg=2      ctermbg=NONE      cterm=NONE        guifg=#81957c     guibg=NONE        gui=NONE

" --------------------------------
" git gutter
" --------------------------------
hi GitGutterAdd    ctermfg=2     ctermbg=NONE      cterm=NONE        guifg=#81957c        guibg=NONE        gui=NONE
hi GitGutterChange ctermfg=6     ctermbg=NONE      cterm=NONE        guifg=#6193bc        guibg=NONE        gui=NONE
hi GitGutterDelete ctermfg=1     ctermbg=NONE      cterm=NONE        guifg=#b91e2e        guibg=NONE        gui=NONE
hi GitGutterChangeDelete ctermfg=13 ctermbg=NONE   cterm=NONE        guifg=#87314e        guibg=NONE        gui=NONE

" --------------------------------
" C highlighting
" --------------------------------
hi cOperator       ctermfg=111      ctermbg=NONE      cterm=NONE        guifg=#87afff     guibg=NONE        gui=NONE
hi cPreCondit      ctermfg=74       ctermbg=NONE      cterm=NONE        guifg=#5fafd7     guibg=NONE        gui=NONE

" --------------------------------
" HTML highlighting
" --------------------------------
hi htmlBold        ctermfg=11       ctermbg=NONE      cterm=NONE        guifg=#fbe8af     guibg=NONE        gui=NONE
hi htmlItalic      ctermfg=74       ctermbg=NONE      cterm=NONE        guifg=#5fafd7     guibg=NONE        gui=NONE
hi htmlEndTag      ctermfg=15       ctermbg=NONE      cterm=NONE        guifg=#fff0f0     guibg=NONE        gui=NONE
hi htmlTag         ctermfg=15       ctermbg=NONE      cterm=NONE        guifg=#fff0f0     guibg=NONE        gui=NONE

" --------------------------------
" JavaScript highlighting
" --------------------------------

" --------------------------------
" CSS highlighting
" --------------------------------
hi cssBraces      ctermfg=15        ctermbg=NONE      cterm=NONE        guifg=#fff0f0     guibg=NONE        gui=NONE
hi cssClassName   ctermfg=74        ctermbg=NONE      cterm=NONE        guifg=#5fafd7     guibg=NONE        gui=NONE
hi cssColor       ctermfg=111       ctermbg=NONE      cterm=NONE        guifg=#87afff     guibg=NONE        gui=NONE

" --------------------------------
" Markdown highlighting
" --------------------------------
hi markdownCode    ctermfg=2        ctermbg=NONE      cterm=NONE        guifg=#81957c     guibg=NONE        gui=NONE
hi markdownError   ctermfg=9        ctermbg=NONE      cterm=NONE        guifg=#d14548     guibg=NONE        gui=NONE
hi markdownCodeBlock ctermfg=2      ctermbg=NONE      cterm=NONE        guifg=#81957c     guibg=NONE        gui=NONE
hi markdownHeadingDelimiter ctermfg=238   ctermbg=NONE   cterm=NONE     guifg=#444444     guibg=NONE        gui=NONE

" --------------------------------
" Ruby highlighting
" --------------------------------
hi rubyAttribute  ctermfg=229       ctermbg=NONE      cterm=NONE        guifg=#ffffaf     guibg=NONE        gui=NONE
hi rubyConstant   ctermfg=111       ctermbg=NONE      cterm=NONE        guifg=#87afff     guibg=NONE        gui=NONE
hi rubyRegexp     ctermfg=12        ctermbg=NONE      cterm=NONE        guifg=#87a2b1     guibg=NONE        gui=NONE
hi rubySymbol     ctermfg=11        ctermbg=NONE      cterm=NONE        guifg=#fbe8af     guibg=NONE        gui=NONE
hi rubyInterpolation ctermfg=2      ctermbg=NONE      cterm=NONE        guifg=#81957c     guibg=NONE        gui=NONE
hi rubyStringDelimiter  ctermfg=11  ctermbg=NONE      cterm=NONE        guifg=#fbe8af     guibg=NONE        gui=NONE
hi rubyInterpolationDelimiter ctermfg=74  ctermbg=NONE   cterm=NONE     guifg=#5fafd7     guibg=NONE        gui=NONE

" --------------------------------
" NERDTree highlighting
" --------------------------------
hi NERDTreeDirSlash ctermfg=166      ctermbg=NONE      cterm=NONE        guifg=#d75f00     guibg=NONE        gui=NONE
hi NERDTreeExecFile ctermfg=9        ctermbg=NONE      cterm=NONE        guifg=#d14548     guibg=NONE        gui=NONE
