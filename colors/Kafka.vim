" Vim colorscheme
" An adaptation of the Slate theme included with vim
" Maintained by Peter van Peursem
"     Version 2.3 - 06-12-2016
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
let g:colors_name="Kafka"

" --------------------------------
" Editor settings
" --------------------------------
hi Normal         ctermfg=253    ctermbg=NONE   cterm=NONE        guifg=#dadada  guibg=#2a303b  gui=NONE
hi Cursor         ctermfg=0      ctermbg=15     cterm=NONE        guifg=#000000  guibg=#eeeeee  gui=NONE
hi CursorLine     ctermfg=NONE   ctermbg=237    cterm=NONE        guifg=NONE     guibg=#38404d  gui=NONE
hi LineNr         ctermfg=8      ctermbg=NONE   cterm=NONE        guifg=#737373  guibg=NONE     gui=NONE
hi CursorLineNR   ctermfg=11     ctermbg=NONE   cterm=NONE        guifg=#fae3a0  guibg=NONE     gui=NONE

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
hi VertSplit      ctermfg=244    ctermbg=7      cterm=NONE        guifg=#808080  guibg=#909090  gui=NONE
hi ColorColumn    ctermfg=NONE   ctermbg=7      cterm=NONE        guifg=NONE     guibg=#909090  gui=NONE
hi TabLine        ctermfg=245    ctermbg=NONE   cterm=NONE        guifg=#8a8a8a  guibg=NONE     gui=NONE
hi TabLineFill    ctermfg=239    ctermbg=NONE   cterm=NONE        guifg=#4e4e4e  guibg=NONE     gui=NONE
hi TabLineSel     ctermfg=112    ctermbg=NONE   cterm=NONE        guifg=#5f8700  guibg=NONE     gui=NONE

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory   ctermfg=6      ctermbg=NONE   cterm=NONE        guifg=#73a5c8  guibg=NONE     gui=NONE
hi Search      ctermfg=239    ctermbg=11     cterm=NONE        guifg=#303030  guibg=#fae3a0  gui=NONE
hi IncSearch   ctermfg=235    ctermbg=208    cterm=NONE        guifg=#262626  guibg=#ff8700  gui=NONE

" -----------------
" - Prompt/Status -
" -----------------
hi StatusLine     ctermfg=0      ctermbg=7      cterm=NONE        guifg=NONE     guibg=#909090  gui=NONE
hi StatusLineNC   ctermfg=NONE   ctermbg=238    cterm=NONE        guifg=NONE     guibg=#444444  gui=NONE
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
hi NonText     ctermfg=2      ctermbg=NONE   cterm=NONE        guifg=#43788c  guibg=NONE     gui=NONE

hi Todo        ctermfg=14  ctermbg=NONE   cterm=underline   guifg=#0f829d  guibg=NONE     gui=underline
hi Underlined  ctermfg=244 ctermbg=NONE   cterm=underline   guifg=#808080  guibg=NONE     gui=underline
hi Error       ctermfg=15  ctermbg=1      cterm=NONE        guifg=#fff0f0  guibg=#b91e2e  gui=NONE
hi ErrorMsg    ctermfg=1   ctermbg=NONE   cterm=NONE        guifg=#b91e2e  guibg=NONE     gui=NONE
hi WarningMsg  ctermfg=1   ctermbg=NONE   cterm=NONE        guifg=#b91e2e  guibg=NONE     gui=NONE
hi Ignore      ctermfg=7   ctermbg=NONE   cterm=bold        guifg=#808080  guibg=#005faf  gui=NONE
hi SpecialKey  ctermfg=2   ctermbg=NONE   cterm=NONE        guifg=#93a48e  guibg=NONE     gui=NONE

" --------------------------------
" Variable types
" --------------------------------
hi Constant        ctermfg=136      ctermbg=NONE      cterm=NONE        guifg=#af8700     guibg=NONE        gui=NONE
hi String          ctermfg=106      ctermbg=NONE      cterm=NONE        guifg=#87af00     guibg=NONE        gui=NONE
hi StringDelimiter ctermfg=248      ctermbg=NONE      cterm=NONE        guifg=#fff0f0     guibg=NONE        gui=NONE
hi Character       ctermfg=172      ctermbg=NONE      cterm=NONE        guifg=#5f8700     guibg=NONE        gui=NONE
hi Number          ctermfg=172      ctermbg=NONE      cterm=NONE        guifg=#d78700     guibg=NONE        gui=NONE
hi Boolean         ctermfg=172      ctermbg=NONE      cterm=NONE        guifg=#d78700     guibg=NONE        gui=NONE
hi Float           ctermfg=172      ctermbg=NONE      cterm=NONE        guifg=#d78700     guibg=NONE        gui=NONE

hi Identifier      ctermfg=9        ctermbg=NONE      cterm=NONE        guifg=#dc5c5a     guibg=NONE        gui=NONE
hi Function        ctermfg=136      ctermbg=NONE      cterm=NONE        guifg=#af8700     guibg=NONE        gui=NONE

" --------------------------------
" Language constructs
" --------------------------------
hi Statement       ctermfg=111      ctermbg=NONE      cterm=NONE        guifg=#87afff     guibg=NONE        gui=NONE
hi Label           ctermfg=139      ctermbg=NONE      cterm=NONE        guifg=#af87af     guibg=NONE        gui=NONE
hi Operator        ctermfg=9        ctermbg=NONE      cterm=NONE        guifg=#d14548     guibg=NONE        gui=NONE
hi Keyword         ctermfg=183      ctermbg=NONE      cterm=NONE        guifg=#d7afff     guibg=NONE        gui=NONE
hi Conditional     ctermfg=139      ctermbg=NONE      cterm=NONE        guifg=#af87af     guibg=NONE        gui=NONE
hi Repeat          ctermfg=139      ctermbg=NONE      cterm=NONE        guifg=#af87af     guibg=NONE        gui=NONE
hi Exception       ctermfg=69       ctermbg=NONE      cterm=NONE        guifg=#5f87ff     guibg=NONE        gui=NONE
hi Comment         ctermfg=244      ctermbg=NONE      cterm=NONE        guifg=#808080     guibg=NONE        gui=italic

hi Special         ctermfg=136      ctermbg=NONE      cterm=NONE        guifg=#af8700     guibg=NONE        gui=NONE
hi SpecialChar     ctermfg=74       ctermbg=NONE      cterm=NONE        guifg=#5fafd7     guibg=NONE        gui=NONE
hi Tag             ctermfg=74       ctermbg=NONE      cterm=NONE        guifg=#5fafd7     guibg=NONE        gui=NONE
hi Delimiter       ctermfg=14       ctermbg=NONE      cterm=NONE        guifg=#0f829d     guibg=NONE        gui=NONE
hi SpecialComment  ctermfg=244      ctermbg=NONE      cterm=NONE        guifg=#9e9e9e     guibg=NONE        gui=NONE
hi Debug           ctermfg=226      ctermbg=NONE      cterm=NONE        guifg=#ffff00     guibg=NONE        gui=NONE

" ----------
" - C like -
" ----------
hi PreProc         ctermfg=9        ctermbg=NONE      cterm=NONE        guifg=#cc645e     guibg=NONE        gui=NONE
hi Include         ctermfg=9        ctermbg=NONE      cterm=NONE        guifg=#d14548     guibg=NONE        gui=NONE
hi Define          ctermfg=3        ctermbg=NONE      cterm=NONE        guifg=#fbc692     guibg=NONE        gui=NONE
hi Macro           ctermfg=208      ctermbg=NONE      cterm=NONE        guifg=#ff8700     guibg=NONE        gui=NONE
hi PreCondit       ctermfg=69       ctermbg=NONE      cterm=NONE        guifg=#0f829d     guibg=NONE        gui=NONE

hi Type            ctermfg=73       ctermbg=NONE      cterm=NONE        guifg=#5fafaf     guibg=NONE        gui=NONE
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
hi SpellBad        ctermfg=231      ctermbg=88        cterm=NONE        guifg=NONE     guibg=NONE     gui=undercurl
hi SpellCap        ctermfg=231      ctermbg=25        cterm=NONE        guifg=NONE     guibg=NONE     gui=undercurl
hi SpellLocal      ctermfg=231      ctermbg=92        cterm=NONE        guifg=NONE     guibg=NONE     gui=undercurl
hi SpellRare       ctermfg=231      ctermbg=81        cterm=NONE        guifg=NONE     guibg=NONE     gui=undercurl

"--------------------------------------------------------------------
" Specific settings
"--------------------------------------------------------------------

" --------------------------------
" Git highlighting
" --------------------------------
hi gitCommitOverflow ctermfg=1      ctermbg=NONE      cterm=NONE        guifg=#b91e2e     guibg=NONE        gui=NONE
hi gitCommitSummary  ctermfg=6      ctermbg=NONE      cterm=NONE        guifg=#73a5c8     guibg=NONE        gui=NONE

" --------------------------------
" git gutter
" --------------------------------
hi GitGutterAdd    ctermfg=34       ctermbg=NONE      cterm=NONE        guifg=#00af00     guibg=NONE        gui=NONE
hi GitGutterChange ctermfg=5        ctermbg=NONE      cterm=NONE        guifg=#d743da     guibg=NONE        gui=NONE
hi GitGutterDelete ctermfg=1        ctermbg=NONE      cterm=NONE        guifg=#b91e2e     guibg=NONE        gui=NONE
hi GitGutterChangeDelete ctermfg=13 ctermbg=NONE      cterm=NONE        guifg=#87314e     guibg=NONE        gui=NONE

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
hi markdownBold             ctermfg=178 ctermbg=NONE   cterm=bold        guifg=#d7af00     guibg=NONE        gui=bold
hi markdownItalic           ctermfg=183 ctermbg=NONE   cterm=NONE        guifg=#d7afff     guibg=NONE        gui=italic
hi markdownBoldItalic       ctermfg=183 ctermbg=NONE   cterm=bold        guifg=#d7afff     guibg=NONE        gui=bolditalic

"hi markdownPullRequestLinkInText
"hi markdownUserLinkInText
"hi markdownUrlLinkInText
"hi markdownEmailLinkInText

hi markdownLinkTextDelimiter      ctermfg=9     ctermbg=NONE   cterm=NONE     guifg=#dc5c5a   guibg=NONE gui=NONE
hi markdownLinkText               ctermfg=9     ctermbg=NONE   cterm=NONE     guifg=#dc5c5a   guibg=NONE gui=NONE
hi markdownLinkUrl                ctermfg=172   ctermbg=NONE   cterm=NONE     guifg=#d78700   guibg=NONE gui=NONE
hi markdownLinkTitleSingleQuoted  ctermfg=249   ctermbg=NONE   cterm=NONE     guifg=#b2b2b2   guibg=NONE gui=NONE
hi markdownLinkTitleDoubleQuoted  ctermfg=249   ctermbg=NONE   cterm=NONE     guifg=#b2b2b2   guibg=NONE gui=NONE
hi markdownLinkUrlContainer       ctermfg=172   ctermbg=NONE   cterm=NONE     guifg=#d78700   guibg=NONE gui=NONE
hi markdownLinkTextContainer      ctermfg=9     ctermbg=NONE   cterm=NONE     guifg=#dc5c5a   guibg=NONE gui=NONE
hi markdownLinkReference          ctermfg=172   ctermbg=NONE   cterm=NONE     guifg=#d78700   guibg=NONE gui=NONE
hi markdownLinkDelimiter          ctermfg=172   ctermbg=NONE   cterm=NONE     guifg=#d78700   guibg=NONE gui=NONE

hi markdownCodeDelimiter          ctermfg=165   ctermbg=NONE   cterm=NONE     guifg=#d700ff   guibg=NONE  gui=NONE
hi markdownInlineCode             ctermfg=6     ctermbg=NONE   cterm=NONE     guifg=#73a5c8   guibg=NONE  gui=NONE
hi markdownFencedCodeBlock        ctermfg=6     ctermbg=NONE   cterm=NONE     guifg=#73a5c8   guibg=NONE  gui=NONE
hi markdownCodeBlock              ctermfg=6     ctermbg=NONE   cterm=NONE     guifg=#73a5c8   guibg=NONE  gui=NONE

hi markdownFootnote               ctermfg=111   ctermbg=NONE   cterm=NONE     guifg=#87afff   guibg=NONE  gui=NONE
hi markdownFootnoteDefinition     ctermfg=111   ctermbg=NONE   cterm=NONE     guifg=#87afff   guibg=NONE  gui=NONE

hi markdownListMarker             ctermfg=74    ctermbg=NONE  cterm=NONE    guifg=#5fafd7 guibg=NONE  gui=NONE
hi markdownOrderedListMarker      ctermfg=74    ctermbg=NONE  cterm=NONE    guifg=#5fafd7 guibg=NONE  gui=NONE
hi markdownItemDelimiter          ctermfg=74    ctermbg=NONE  cterm=NONE    guifg=#5fafd7 guibg=NONE  gui=NONE
"hi markdownTableDelimiter
"hi markdownTableHeader

"hi markdownStrike
hi markdownStrikeDelimiter     ctermfg=14  ctermbg=NONE   cterm=NONE       guifg=#0f829d  guibg=NONE  gui=NONE
hi markdownBlockquote          ctermfg=184 ctermbg=NONE   cterm=NONE       guifg=#d7d700  guibg=NONE  gui=NONE
hi markdownBlockquoteDelimiter ctermfg=14  ctermbg=NONE   cterm=NONE       guifg=#0f829d  guibg=NONE  gui=NONE
hi markdownInlineDelimiter     ctermfg=14  ctermbg=NONE   cterm=NONE       guifg=#0f829d  guibg=NONE  gui=NONE
hi markdownListDelimiter       ctermfg=14  ctermbg=NONE   cterm=NONE       guifg=#0f829d  guibg=NONE  gui=NONE

"hi markdownHeaderId
hi markdownHeadingDelimiter   ctermfg=94  ctermbg=238   cterm=NONE        guifg=#875f00   guibg=#444444  gui=NONE
hi markdownHeadingUnderline   ctermfg=94  ctermbg=238   cterm=NONE        guifg=#875f00   guibg=#444444  gui=NONE
hi markdownHeader             ctermfg=94  ctermbg=238   cterm=NONE        guifg=#875f00   guibg=#444444  gui=NONE
hi markdownH1                 ctermfg=3   ctermbg=238   cterm=NONE        guifg=#fbc692   guibg=#444444  gui=NONE
hi markdownH2                 ctermfg=3   ctermbg=238   cterm=NONE        guifg=#fbc692   guibg=#444444  gui=NONE
hi markdownH3                 ctermfg=3   ctermbg=238   cterm=NONE        guifg=#fbc692   guibg=#444444  gui=NONE
hi markdownH4                 ctermfg=3   ctermbg=238   cterm=NONE        guifg=#fbc692   guibg=#444444  gui=NONE
hi markdownH5                 ctermfg=3   ctermbg=238   cterm=NONE        guifg=#fbc692   guibg=#444444  gui=NONE
hi markdownH6                 ctermfg=3   ctermbg=238   cterm=NONE        guifg=#fbc692   guibg=#444444  gui=NONE

"hi markdownEmoticonKeyword
hi markdownRule   ctermfg=232  ctermbg=249   cterm=NONE        guifg=#080808     guibg=#b2b2b2        gui=NONE

"hi markdownXmlComment
"hi markdownXmlElement
"hi markdownXmlEmptyElement
"hi markdownXmlEntities

hi markdownCode   ctermfg=6     ctermbg=NONE  cterm=NONE        guifg=#73a5c8   guibg=NONE    gui=NONE
hi markdownError  ctermfg=1     ctermbg=NONE  cterm=NONE        guifg=#c8333c   guibg=NONE    gui=NONE
hi markdownEscape ctermfg=136   ctermbg=NONE  cterm=NONE        guifg=#af8700   guibg=NONE    gui=NONE

" --------------------------------
" Ruby highlighting
" --------------------------------
hi rubyRegexp           ctermfg=12  ctermbg=NONE  cterm=NONE        guifg=#87a2b1   guibg=NONE  gui=NONE
hi rubySymbol           ctermfg=11  ctermbg=NONE  cterm=NONE        guifg=#fbe8af   guibg=NONE  gui=NONE
hi rubyStringDelimiter  ctermfg=253 ctermbg=NONE  cterm=NONE        guifg=#dadada   guibg=NONE  gui=NONE
