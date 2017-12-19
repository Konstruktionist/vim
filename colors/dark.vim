" Vim colorscheme
" Started as an adaptation of the slate colorscheme included with vim
"   now we're way beyond that
" Maintained by Peter van Peursem
"     Version 0.1 - 19-12-2017
"
" All color-values can be found with python script at:
" https://github.com/eikenb/terminal-colors
"

" --------------------------------
set background=dark
" --------------------------------

highlight clear
if exists("syntax_on")
   syntax reset
endif
let g:colors_name="dark"

" --------------------------------
" Editor settings
" --------------------------------
hi Normal         ctermfg=254     ctermbg=NONE    cterm=NONE        guifg=#e4e4e4   guibg=#2a303b   gui=NONE
hi Cursor         ctermfg=NONE    ctermbg=231     cterm=NONE        guifg=NONE      guibg=#ffffff   gui=NONE
hi CursorLine     ctermfg=NONE    ctermbg=237     cterm=NONE        guifg=NONE      guibg=#38404d   gui=NONE
hi LineNr         ctermfg=8       ctermbg=NONE    cterm=NONE        guifg=#737373   guibg=NONE      gui=NONE
hi CursorLineNR   ctermfg=11      ctermbg=NONE    cterm=NONE        guifg=#fae3a0   guibg=NONE      gui=NONE

" -----------------
" - Number column -
" -----------------
hi CursorColumn   ctermfg=NONE   ctermbg=7      cterm=NONE        guifg=NONE     guibg=#909090  gui=NONE
hi FoldColumn     ctermfg=248    ctermbg=239    cterm=NONE        guifg=#a8a8a8  guibg=#4e4e4e  gui=NONE
hi SignColumn     ctermfg=245    ctermbg=NONE   cterm=NONE        guifg=#8a8a8a  guibg=NONE     gui=NONE
hi Folded         ctermfg=248    ctermbg=239    cterm=NONE        guifg=#a8a8a8  guibg=#4e4e4e  gui=NONE

" -------------------------
" - Window/Tab delimiters -
" -------------------------
hi VertSplit      ctermfg=244    ctermbg=244    cterm=NONE        guifg=#808080  guibg=#808080  gui=NONE
hi ColorColumn    ctermfg=NONE   ctermbg=8      cterm=NONE        guifg=NONE     guibg=#737373  gui=NONE
hi TabLine        ctermfg=245    ctermbg=NONE   cterm=NONE        guifg=#8a8a8a  guibg=NONE     gui=NONE
hi TabLineFill    ctermfg=239    ctermbg=NONE   cterm=NONE        guifg=#4e4e4e  guibg=NONE     gui=NONE
hi TabLineSel     ctermfg=112    ctermbg=NONE   cterm=NONE        guifg=#5f8700  guibg=NONE     gui=NONE

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory    ctermfg=12     ctermbg=NONE  cterm=NONE        guifg=#8ca1af  guibg=NONE     gui=NONE
hi Search       ctermfg=232    ctermbg=10    cterm=NONE        guifg=#080808  guibg=#6d7f3f  gui=NONE
hi IncSearch    ctermfg=231    ctermbg=2     cterm=NONE        guifg=#ffffff  guibg=#75a304  gui=NONE

" -----------------
" - Prompt/Status -
" -----------------
hi StatusLine     ctermfg=238    ctermbg=246    cterm=NONE        guifg=#444444  guibg=#949494  gui=NONE
hi StatusLineNC   ctermfg=246    ctermbg=238    cterm=italic      guifg=#949494  guibg=#444444  gui=italic
hi WildMenu       ctermfg=0      ctermbg=6      cterm=NONE        guifg=#202020  guibg=#73a5c8  gui=NONE
hi Question       ctermfg=10     ctermbg=NONE   cterm=NONE        guifg=#b6c2aa  guibg=NONE     gui=NONE
hi Title          ctermfg=3      ctermbg=NONE   cterm=bold        guifg=#fbc692  guibg=NONE     gui=NONE
hi ModeMsg        ctermfg=136    ctermbg=NONE   cterm=NONE        guifg=#af8700  guibg=NONE     gui=NONE
hi MoreMsg        ctermfg=2      ctermbg=NONE   cterm=NONE        guifg=#93a48e  guibg=NONE     gui=NONE

" --------------
" - Visual aid -
" --------------
hi MatchParen  ctermfg=NONE   ctermbg=202    cterm=NONE        guifg=#ffffff  guibg=#ff5f00  gui=NONE
hi Visual      ctermfg=NONE   ctermbg=25     cterm=NONE        guifg=NONE     guibg=#005faf  gui=NONE
hi VisualNOS   ctermfg=9      ctermbg=25     cterm=NONE        guifg=#d14548  guibg=#005faf  gui=NONE
hi NonText     ctermfg=244    ctermbg=NONE   cterm=NONE        guifg=#808080  guibg=NONE     gui=NONE

hi Todo        ctermfg=14  ctermbg=NONE   cterm=underline   guifg=#0f829d  guibg=NONE     gui=underline
hi Underlined  ctermfg=244 ctermbg=NONE   cterm=underline   guifg=#808080  guibg=NONE     gui=underline
hi Error       ctermfg=15  ctermbg=1      cterm=NONE        guifg=#fff0f0  guibg=#b91e2e  gui=NONE
hi ErrorMsg    ctermfg=1   ctermbg=NONE   cterm=NONE        guifg=#b91e2e  guibg=NONE     gui=NONE
hi WarningMsg  ctermfg=1   ctermbg=NONE   cterm=NONE        guifg=#b91e2e  guibg=NONE     gui=NONE
hi Ignore      ctermfg=7   ctermbg=NONE   cterm=bold        guifg=#808080  guibg=#005faf  gui=NONE
hi SpecialKey  ctermfg=9   ctermbg=NONE   cterm=NONE        guifg=#cd645f  guibg=NONE     gui=NONE

" --------------------------------
" Variable types
" --------------------------------
hi Constant        ctermfg=136      ctermbg=NONE      cterm=NONE        guifg=#cebd00     guibg=NONE        gui=NONE
hi String          ctermfg=112      ctermbg=NONE      cterm=NONE        guifg=#87d700     guibg=NONE        gui=NONE
hi StringDelimiter ctermfg=248      ctermbg=NONE      cterm=NONE        guifg=#fff0f0     guibg=NONE        gui=NONE
hi Character       ctermfg=148      ctermbg=NONE      cterm=NONE        guifg=#afd700     guibg=NONE        gui=NONE
hi Number          ctermfg=148      ctermbg=NONE      cterm=NONE        guifg=#afd700     guibg=NONE        gui=NONE
hi Boolean         ctermfg=148      ctermbg=NONE      cterm=NONE        guifg=#afd700     guibg=NONE        gui=NONE
hi Float           ctermfg=148      ctermbg=NONE      cterm=NONE        guifg=#afd700     guibg=NONE        gui=NONE

hi Identifier      ctermfg=210        ctermbg=NONE      cterm=NONE        guifg=#ff8787     guibg=NONE        gui=NONE
hi Function        ctermfg=136      ctermbg=NONE      cterm=NONE        guifg=#d7d787     guibg=NONE        gui=NONE

" --------------------------------
" Language constructs
" --------------------------------
hi Statement       ctermfg=81      ctermbg=NONE      cterm=NONE        guifg=#5fd7ff     guibg=NONE        gui=NONE
hi Label           ctermfg=139      ctermbg=NONE      cterm=NONE        guifg=#af87af     guibg=NONE        gui=NONE
hi Operator        ctermfg=142        ctermbg=NONE      cterm=NONE        guifg=#afaf00     guibg=NONE        gui=NONE
hi Keyword         ctermfg=139      ctermbg=NONE      cterm=NONE        guifg=#af87af     guibg=NONE        gui=NONE
hi Conditional     ctermfg=139      ctermbg=NONE      cterm=NONE        guifg=#af87af     guibg=NONE        gui=NONE
hi Repeat          ctermfg=139      ctermbg=NONE      cterm=NONE        guifg=#af87af     guibg=NONE        gui=NONE
hi Exception       ctermfg=75       ctermbg=NONE      cterm=NONE        guifg=#5fafff     guibg=NONE        gui=NONE
hi Comment         ctermfg=249      ctermbg=NONE      cterm=italic      guifg=#b2b2b2     guibg=NONE        gui=italic

hi Special         ctermfg=136      ctermbg=NONE      cterm=NONE        guifg=#af8700     guibg=NONE        gui=NONE
hi SpecialChar     ctermfg=74       ctermbg=NONE      cterm=NONE        guifg=#5fafd7     guibg=NONE        gui=NONE
hi Tag             ctermfg=74       ctermbg=NONE      cterm=NONE        guifg=#5fafd7     guibg=NONE        gui=NONE
hi Delimiter       ctermfg=229       ctermbg=NONE      cterm=NONE        guifg=#ffffaf     guibg=NONE        gui=NONE
hi SpecialComment  ctermfg=244      ctermbg=NONE      cterm=NONE        guifg=#9e9e9e     guibg=NONE        gui=NONE
hi Debug           ctermfg=226      ctermbg=NONE      cterm=NONE        guifg=#ffff00     guibg=NONE        gui=NONE

" ----------
" - C like -
" ----------
hi PreProc         ctermfg=216        ctermbg=NONE      cterm=NONE        guifg=#ffaf87     guibg=NONE        gui=NONE
hi Include         ctermfg=216        ctermbg=NONE      cterm=NONE        guifg=#ffaf87     guibg=NONE        gui=NONE
hi Define          ctermfg=3        ctermbg=NONE      cterm=NONE        guifg=#fbc692     guibg=NONE        gui=NONE
hi Macro           ctermfg=214      ctermbg=NONE      cterm=NONE        guifg=#ffaf00     guibg=NONE        gui=NONE
hi PreCondit       ctermfg=110      ctermbg=NONE      cterm=NONE        guifg=#8faed3     guibg=NONE        gui=NONE

hi Type            ctermfg=117       ctermbg=NONE      cterm=NONE        guifg=#87d7ff     guibg=NONE        gui=NONE
hi StorageClass    ctermfg=11       ctermbg=NONE      cterm=NONE        guifg=#fae3a0     guibg=NONE        gui=NONE
hi Structure       ctermfg=10       ctermbg=NONE      cterm=NONE        guifg=#b6c2aa     guibg=NONE        gui=NONE
hi Typedef         ctermfg=111      ctermbg=NONE      cterm=NONE        guifg=#87afff     guibg=NONE        gui=NONE

" --------------------------------
" Diff
" --------------------------------
hi DiffAdd         ctermfg=34       ctermbg=NONE      cterm=NONE        guifg=#00af00     guibg=NONE        gui=NONE
hi DiffChange      ctermfg=5        ctermbg=NONE      cterm=NONE        guifg=#d743da     guibg=NONE        gui=NONE
hi DiffDelete      ctermfg=1        ctermbg=NONE      cterm=NONE        guifg=#b91e2e     guibg=NONE        gui=NONE
hi DiffText        ctermfg=229      ctermbg=NONE      cterm=NONE        guifg=#ffffaf     guibg=NONE        gui=NONE
hi DiffAdded       ctermfg=34       ctermbg=NONE      cterm=NONE        guifg=#00af00     guibg=NONE        gui=NONE
hi DiffFile        ctermfg=6        ctermbg=NONE      cterm=NONE        guifg=#6193bc     guibg=NONE        gui=NONE
hi DiffNewFile     ctermfg=34       ctermbg=NONE      cterm=NONE        guifg=#00af00     guibg=NONE        gui=NONE
hi DiffLine        ctermfg=229      ctermbg=NONE      cterm=NONE        guifg=#ffffaf     guibg=NONE        gui=NONE
hi DiffRemoved     ctermfg=1        ctermbg=NONE      cterm=NONE        guifg=#b91e2e     guibg=NONE        gui=NONE
" --------------------------------
" Completion menu
" --------------------------------
hi Pmenu           ctermfg=0        ctermbg=254       cterm=NONE        guifg=#202020     guibg=#e4e4e4     gui=NONE
hi PmenuSel        ctermfg=0        ctermbg=6         cterm=NONE        guifg=#202020     guibg=#73a5c8     gui=NONE
hi PmenuSbar       ctermfg=NONE     ctermbg=15        cterm=NONE        guifg=NONE        guibg=#fff0f0     gui=NONE
hi PmenuThumb      ctermfg=NONE     ctermbg=7         cterm=NONE        guifg=NONE        guibg=#909090     gui=NONE

" --------------------------------
" Spelling
" --------------------------------
hi SpellBad        ctermfg=160      ctermbg=NONE      cterm=underline        guifg=NONE     guibg=NONE     gui=undercurl
hi SpellCap        ctermfg=33       ctermbg=NONE      cterm=underline        guifg=NONE     guibg=NONE     gui=undercurl
hi SpellLocal      ctermfg=51       ctermbg=NONE      cterm=underline        guifg=NONE     guibg=NONE     gui=undercurl
hi SpellRare       ctermfg=81       ctermbg=NONE      cterm=underline        guifg=NONE     guibg=NONE     gui=undercurl


" --------------------------------------------------------------------
" Specific settings
" --------------------------------------------------------------------

" --------------------------------
" Vim highlighting
" --------------------------------
"hi vimIsCommand     ctermfg=187     ctermbg=NONE   cterm=NONE        guifg=#d7d7af     guibg=NONE      gui=NONE
"hi vimFunction      ctermfg=186     ctermbg=NONE   cterm=NONE        guifg=#d7d787     guibg=NONE      gui=NONE
"hi vimCommentTitle  ctermfg=15      ctermbg=13     cterm=NONE        guifg=#fffffe     guibg=#aa88aa   gui=NONE
"hi helpNote         ctermfg=15      ctermbg=12     cterm=NONE        guifg=#fffffe     guibg=#6194bc   gui=NONE
"hi helpWarning      ctermfg=15      ctermbg=9      cterm=NONE        guifg=#fffffe     guibg=#f2797b   gui=NONE
"
" --------------------------------
" Git highlighting
" --------------------------------
hi gitCommitOverflow ctermfg=1      ctermbg=NONE      cterm=NONE        guifg=#b91e2e     guibg=NONE        gui=NONE
hi gitCommitSummary  ctermfg=6      ctermbg=NONE      cterm=NONE        guifg=#73a5c8     guibg=NONE        gui=NONE

" --------------------------------
" git gutter
" --------------------------------
hi GitGutterAdd    ctermfg=28       ctermbg=NONE      cterm=bold        guifg=#008700     guibg=NONE        gui=bold
hi GitGutterChange ctermfg=177      ctermbg=NONE      cterm=bold        guifg=#d787ff     guibg=NONE        gui=bold
hi GitGutterDelete ctermfg=196      ctermbg=NONE      cterm=bold        guifg=#ff0000     guibg=NONE        gui=bold
hi GitGutterChangeDelete ctermfg=176 ctermbg=NONE      cterm=bold        guifg=#d787d7     guibg=NONE        gui=bold
