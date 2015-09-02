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
hi Normal          ctermfg=231    ctermbg=NONE    cterm=NONE    guifg=#f1f1f1    guibg=#383f4b
hi Cursor          ctermfg=249    ctermbg=NONE    cterm=NONE    guifg=#b2b2b2    guibg=#b2b2b2
hi CursorLine      ctermfg=251    ctermbg=NONE    cterm=NONE    guifg=#c6c6c6    guibg=NONE
hi LineNr          ctermfg=244    ctermbg=NONE    cterm=NONE    guifg=#808080    guibg=NONE
hi CursorLineNR    ctermfg=11     ctermbg=NONE    cterm=NONE    guifg=#fbe8af    guibg=NONE

" -----------------
" - Number column -
" -----------------
hi CursorColumn    ctermfg=NONE    ctermbg=NONE    cterm=NONE  guifg=NONE  guibg=NONE
hi FoldColumn      ctermfg=45    ctermbg=NONE    cterm=NONE    guifg=#00d7ff    guibg=NONE
hi SignColumn      ctermfg=245    ctermbg=NONE    cterm=NONE    guifg=#8a8a8a    guibg=NONE
hi Folded          ctermfg=239    ctermbg=NONE    cterm=NONE    guifg=#4e4e4e    guibg=NONE

" -------------------------
" - Window/Tab delimiters -
" -------------------------
hi VertSplit       ctermfg=240    ctermbg=240    cterm=NONE    guifg=#585858    guibg=#585858
hi ColorColumn     ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE
hi TabLine         ctermfg=245    ctermbg=NONE    cterm=NONE    guifg=#8a8a8a    guibg=NONE
hi TabLineFill     ctermfg=239    ctermbg=NONE    cterm=NONE    guifg=#4e4e4e    guibg=NONE
hi TabLineSel      ctermfg=112    ctermbg=NONE    cterm=NONE    guifg=#87d700    guibg=NONE

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory       ctermfg=69    ctermbg=NONE    cterm=NONE    guifg=#5f87ff    guibg=NONE
hi Search          ctermfg=236    ctermbg=11    cterm=NONE    guifg=#303030    guibg=#ffffd7
hi IncSearch       ctermfg=235    ctermbg=208    cterm=NONE    guifg=#ff8700    guibg=#262626

" -----------------
" - Prompt/Status -
" -----------------
hi StatusLine      ctermfg=7    ctermbg=8    cterm=NONE    guifg=#a1a1a1    guibg=#737373
hi StatusLineNC    ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE
hi WildMenu        ctermfg=9    ctermbg=3    cterm=NONE    guifg=#dc5c5a    guibg=#fbe8af
hi Question        ctermfg=6    ctermbg=NONE    cterm=NONE    guifg=#87afff    guibg=NONE
hi Title           ctermfg=6    ctermbg=NONE    cterm=NONE    guifg=#87afff    guibg=NONE
hi ModeMsg         ctermfg=14    ctermbg=NONE    cterm=NONE    guifg=#00af00    guibg=NONE
hi MoreMsg         ctermfg=14    ctermbg=NONE    cterm=NONE    guifg=#00af00    guibg=NONE

" --------------
" - Visual aid -
" --------------
hi MatchParen      ctermfg=NONE    ctermbg=202    cterm=NONE    guifg=#ffffff    guibg=#ff5f00
hi Visual          ctermfg=NONE    ctermbg=25    cterm=NONE    guifg=NONE    guibg=#0a3352
hi VisualNOS       ctermfg=9    ctermbg=NONE    cterm=NONE    guifg=#dc5c5a    guibg=NONE
hi NonText         ctermfg=8    ctermbg=NONE    cterm=NONE    guifg=#737373    guibg=NONE

hi Todo            ctermfg=197    ctermbg=221    cterm=NONE    guifg=#ff005f    guibg=#ffd75f
hi Underlined      ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE
hi Error           ctermfg=15    ctermbg=1    cterm=NONE    guifg=#fff3f3    guibg=#c8323c
hi ErrorMsg        ctermfg=1    ctermbg=NONE    cterm=NONE    guifg=#af0000    guibg=NONE
hi WarningMsg      ctermfg=9    ctermbg=NONE    cterm=NONE    guifg=#dc5c5a    guibg=NONE
hi Ignore          ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE
hi SpecialKey      ctermfg=8    ctermbg=NONE    cterm=NONE    guifg=#737373    guibg=NONE

" --------------------------------
" Variable types
" --------------------------------
hi Constant        ctermfg=6    ctermbg=NONE    cterm=NONE    guifg=#0087ff    guibg=NONE
hi String          ctermfg=64    ctermbg=NONE    cterm=NONE    guifg=#87d700    guibg=NONE
hi StringDelimiter ctermfg=248    ctermbg=NONE    cterm=NONE    guifg=#a8a8a8    guibg=NONE
hi Character       ctermfg=10    ctermbg=NONE    cterm=NONE    guifg=#87d700    guibg=NONE
hi Number          ctermfg=214    ctermbg=NONE    cterm=NONE    guifg=#ff5f5f    guibg=NONE
hi Boolean         ctermfg=214    ctermbg=NONE    cterm=NONE    guifg=#ff5f00    guibg=NONE
hi Float           ctermfg=214    ctermbg=NONE    cterm=NONE    guifg=#ff5f5f    guibg=NONE

hi Identifier      ctermfg=12    ctermbg=NONE    cterm=NONE    guifg=#ffaf5f    guibg=NONE
hi Function        ctermfg=6    ctermbg=NONE    cterm=NONE    guifg=#5fafff    guibg=NONE

" --------------------------------
" Language constructs
" --------------------------------
hi Statement       ctermfg=9    ctermbg=NONE    cterm=NONE    guifg=#af0000    guibg=NONE
hi Conditional     ctermfg=14    ctermbg=NONE    cterm=NONE    guifg=#5f87ff    guibg=NONE
hi Repeat          ctermfg=14    ctermbg=NONE    cterm=NONE    guifg=#87af00    guibg=NONE
hi Label           ctermfg=106    ctermbg=NONE    cterm=NONE    guifg=#87af00    guibg=NONE
hi Operator        ctermfg=15    ctermbg=NONE    cterm=NONE    guifg=#a8a8a8    guibg=NONE
hi Keyword         ctermfg=12    ctermbg=NONE    cterm=NONE    guifg=#87afff    guibg=NONE
hi Exception       ctermfg=6    ctermbg=NONE    cterm=NONE    guifg=#5f87ff    guibg=NONE
hi Comment         ctermfg=244    ctermbg=NONE    cterm=NONE    guifg=#b2b2b2    guibg=NONE

hi Special         ctermfg=111    ctermbg=NONE    cterm=NONE    guifg=#87afff    guibg=NONE
hi SpecialChar     ctermfg=136    ctermbg=NONE    cterm=NONE    guifg=#af8700    guibg=NONE
hi Tag             ctermfg=106    ctermbg=NONE    cterm=NONE    guifg=#87af00    guibg=NONE
hi Delimiter       ctermfg=15    ctermbg=NONE    cterm=NONE    guifg=#af8700    guibg=NONE
hi SpecialComment  ctermfg=111    ctermbg=NONE    cterm=NONE    guifg=#87afff    guibg=NONE
hi Debug           ctermfg=6    ctermbg=NONE    cterm=NONE    guifg=#5f87ff    guibg=NONE

" ----------
" - C like -
" ----------
hi PreProc         ctermfg=3    ctermbg=NONE    cterm=NONE    guifg=#fbc692    guibg=NONE
hi Include         ctermfg=238    ctermbg=NONE    cterm=NONE    guifg=#444444    guibg=NONE
hi Define          ctermfg=111    ctermbg=NONE    cterm=NONE    guifg=#87afff    guibg=NONE
hi Macro           ctermfg=6    ctermbg=NONE    cterm=NONE    guifg=#5f87ff    guibg=NONE
hi PreCondit       ctermfg=NONE    ctermbg=NONE    cterm=NONE    guifg=NONE    guibg=NONE

hi Type            ctermfg=14    ctermbg=NONE    cterm=NONE    guifg=#fbc692    guibg=NONE
hi StorageClass    ctermfg=106    ctermbg=NONE    cterm=NONE    guifg=#87af00    guibg=NONE
hi Structure       ctermfg=6    ctermbg=NONE    cterm=NONE    guifg=#5f87ff    guibg=NONE
hi Typedef         ctermfg=106    ctermbg=NONE    cterm=NONE    guifg=#87af00    guibg=NONE

" --------------------------------
" Diff
" --------------------------------
hi DiffAdd         ctermfg=2    ctermbg=NONE    cterm=NONE    guifg=#81957c    guibg=NONE
hi DiffChange      ctermfg=6    ctermbg=NONE    cterm=NONE    guifg=#6193bc    guibg=NONE
hi DiffDelete      ctermfg=1    ctermbg=NONE    cterm=NONE    guifg=#b91e2e    guibg=NONE
hi DiffText        ctermfg=229    ctermbg=NONE    cterm=NONE    guifg=#ffffaf    guibg=NONE

" --------------------------------
" Completion menu
" --------------------------------
hi Pmenu           ctermfg=7    ctermbg=NONE    cterm=NONE    guifg=#a1a1a1    guibg=NONE
hi PmenuSel        ctermfg=236    ctermbg=248    cterm=NONE    guifg=#303030    guibg=#a8a8a8
hi PmenuSbar       ctermfg=NONE    ctermbg=7    cterm=NONE    guifg=NONE    guibg=#a1a1a1
hi PmenuThumb      ctermfg=NONE    ctermbg=15    cterm=NONE    guifg=NONE    guibg=#fff3f3

" --------------------------------
" Spelling
" --------------------------------
hi SpellBad        ctermfg=231    ctermbg=88    cterm=NONE    guifg=#ffffff    guibg=NONE
hi SpellCap        ctermfg=231    ctermbg=25   cterm=NONE    guifg=#ffffff    guibg=NONE
hi SpellLocal      ctermfg=231    ctermbg=92    cterm=NONE    guifg=#ffffff    guibg=NONE
hi SpellRare       ctermfg=231    ctermbg=81    cterm=NONE    guifg=#ffffff    guibg=NONE

"--------------------------------------------------------------------
" Specific settings                                                 |
"--------------------------------------------------------------------
