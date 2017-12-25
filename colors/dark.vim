" Vim colorscheme
" A colorscheme that has a good color contrast which should be usable by
" people who have vision problems.
" Colors are tested with the Color Contrast Analyzer
"    (https://developer.paciellogroup.com/resources/contrastanalyser/).
" This is a tool that tests against WCAG 2.0 color contrast succes criteria.
"
"   CONTRAST REQUIRES TWO COLORS:
"
"   Therefore there are some assumptions for this colorscheme:
"	* The background for the terminal is set at #383f4c, which is a dark grey.
"	* The terminal text colors 0-16 should also be WCAG2.0 compliant.
" I didn't get all green results, because that limited the color range
" extensively. But values that got 3 out of 4 were accepted.
"
" Maintained by Peter van Peursem
"	  Version 0.1 - 19-12-2017
"
" All color-values can be found with python script at:
" https://github.com/eikenb/terminal-colors
"

" --------------------------------
" Support only 256 or full colors
" --------------------------------
if !has('gui_running') && &t_Co < 256
	finish
endif

set background=dark

" Reset existing highlightings & syntax
highlight clear
if exists("syntax_on")
  syntax reset
endif

" --------------------------------
"	Name of the colorscheme
" --------------------------------
let g:colors_name="dark"

"" --------------------------------
"" Editor settings
"" --------------------------------
hi Normal					ctermfg=254		ctermbg=NONE		cterm=NONE		guifg=#e4e4e4	guibg=#383f4c	gui=NONE
hi Cursor					ctermfg=NONE	ctermbg=231			cterm=NONE		guifg=NONE		guibg=#ffffff	gui=NONE
hi CursorLine				ctermfg=NONE	ctermbg=237			cterm=NONE		guifg=NONE		guibg=#38404d	gui=NONE
hi LineNr					ctermfg=8		ctermbg=NONE		cterm=NONE		guifg=#808080	guibg=NONE		gui=NONE
hi CursorLineNR				ctermfg=11		ctermbg=NONE		cterm=NONE		guifg=#fae3a0	guibg=NONE		gui=NONE

" -----------------
" - Number column -
" -----------------
hi CursorColumn				ctermfg=NONE	ctermbg=7			cterm=NONE		guifg=NONE		guibg=#909090	gui=NONE
hi FoldColumn				ctermfg=0		ctermbg=110			cterm=NONE		guifg=#000000	guibg=#87afd7	gui=NONE
hi SignColumn				ctermfg=245		ctermbg=NONE		cterm=NONE		guifg=#8a8a8a	guibg=NONE		gui=NONE
hi Folded					ctermfg=249		ctermbg=NONE		cterm=NONE		guifg=#b2b2b2	guibg=NONE		gui=NONE

" -------------------------
" - Window/Tab delimiters -
" -------------------------
hi VertSplit				ctermfg=244		ctermbg=244			cterm=NONE		guifg=#808080	guibg=#808080	gui=NONE
hi ColorColumn				ctermfg=NONE	ctermbg=8			cterm=NONE		guifg=NONE		guibg=#737373	gui=NONE
hi TabLine					ctermfg=245		ctermbg=NONE		cterm=NONE		guifg=#8a8a8a	guibg=NONE		gui=NONE
hi TabLineFill				ctermfg=239		ctermbg=NONE		cterm=NONE		guifg=#4e4e4e	guibg=NONE		gui=NONE
hi TabLineSel				ctermfg=112		ctermbg=NONE		cterm=NONE		guifg=#5f8700	guibg=NONE		gui=NONE

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory				ctermfg=12		ctermbg=NONE		cterm=NONE		guifg=#8ca1af	guibg=NONE		gui=NONE
hi Search					ctermfg=154		ctermbg=NONE		cterm=underline guifg=#aff000	guibg=NONE		gui=underline
hi IncSearch				ctermfg=232		ctermbg=154			cterm=NONE		guifg=#000000	guibg=#aff000	gui=NONE

" -----------------
" - Prompt/Status -
" -----------------
hi StatusLine				ctermfg=235		ctermbg=249			cterm=NONE		guifg=#262626	guibg=#b2b2b2	gui=NONE
hi StatusLineNC				ctermfg=243		ctermbg=241			cterm=italic	guifg=#767676	guibg=#626262	gui=italic
hi WildMenu					ctermfg=0		ctermbg=6			cterm=NONE		guifg=#202020	guibg=#73a5c8	gui=NONE
hi Question					ctermfg=10		ctermbg=NONE		cterm=NONE		guifg=#b6c2aa	guibg=NONE		gui=NONE
hi Title					ctermfg=3		ctermbg=NONE		cterm=bold		guifg=#fbc692	guibg=NONE		gui=NONE
hi ModeMsg					ctermfg=136		ctermbg=NONE		cterm=NONE		guifg=#af8700	guibg=NONE		gui=NONE
hi MoreMsg					ctermfg=2		ctermbg=NONE		cterm=NONE		guifg=#93a48e	guibg=NONE		gui=NONE

" --------------
" - Visual aid -
" --------------
hi MatchParen				ctermfg=NONE	ctermbg=210			cterm=NONE		guifg=#ffffff	guibg=#ff8787	gui=NONE
hi Visual					ctermfg=NONE	ctermbg=25			cterm=NONE		guifg=NONE		guibg=#005faf	gui=NONE
hi VisualNOS				ctermfg=9		ctermbg=25			cterm=NONE		guifg=#d14548	guibg=#005faf	gui=NONE
hi NonText					ctermfg=244		ctermbg=NONE		cterm=NONE		guifg=#808080	guibg=NONE		gui=NONE

hi Todo						ctermfg=14		ctermbg=NONE		cterm=underline guifg=#00ffff	guibg=NONE		gui=underline
hi Underlined				ctermfg=249		ctermbg=NONE		cterm=underline guifg=#b2b2b2	guibg=NONE		gui=underline
hi Error					ctermfg=15		ctermbg=160			cterm=NONE		guifg=#ffffff	guibg=#d70000	gui=NONE
hi ErrorMsg					ctermfg=210		ctermbg=NONE		cterm=NONE		guifg=#ff8787	guibg=NONE		gui=NONE
hi WarningMsg				ctermfg=227		ctermbg=NONE		cterm=NONE		guifg=#ffff5f	guibg=NONE		gui=NONE
hi Ignore					ctermfg=7		ctermbg=NONE		cterm=bold		guifg=#808080	guibg=#005faf	gui=NONE
hi SpecialKey				ctermfg=9		ctermbg=NONE		cterm=NONE		guifg=#cd645f	guibg=NONE		gui=NONE
"
"" --------------------------------
"" Variable types
"" --------------------------------
hi Constant					ctermfg=113		ctermbg=NONE		cterm=NONE		guifg=#87af5f	guibg=NONE		gui=NONE
hi String					ctermfg=112		ctermbg=NONE		cterm=NONE		guifg=#87d700	guibg=NONE		gui=NONE
hi StringDelimiter			ctermfg=248		ctermbg=NONE		cterm=NONE		guifg=#fff0f0	guibg=NONE		gui=NONE
hi Character				ctermfg=148		ctermbg=NONE		cterm=NONE		guifg=#afd700	guibg=NONE		gui=NONE
hi link Number Character
hi link Boolean Character
hi link Float Character

hi Identifier				ctermfg=210		ctermbg=NONE		cterm=NONE		guifg=#ff8787	guibg=NONE		gui=NONE
hi Function					ctermfg=217		ctermbg=NONE		cterm=NONE		guifg=#ffaf87	guibg=NONE		gui=NONE

" --------------------------------
" Language constructs
" --------------------------------
hi Statement				ctermfg=110		ctermbg=NONE		cterm=NONE		guifg=#87afd7	guibg=NONE		gui=NONE
hi Label					ctermfg=139		ctermbg=NONE		cterm=NONE		guifg=#af87af	guibg=NONE		gui=NONE
hi Operator					ctermfg=116		ctermbg=NONE		cterm=NONE		guifg=#87d7d7	guibg=NONE		gui=NONE
hi link Keyword Label
hi link Conditional Label
hi link Repeat Label
hi Exception				ctermfg=75		ctermbg=NONE		cterm=NONE		guifg=#5fafff	guibg=NONE		gui=NONE
hi Comment					ctermfg=249		ctermbg=NONE		cterm=italic	guifg=#b2b2b2	guibg=NONE		gui=italic

hi Special					ctermfg=221		ctermbg=NONE		cterm=NONE		guifg=#ffdf5f	guibg=NONE		gui=NONE
hi SpecialChar				ctermfg=228		ctermbg=NONE		cterm=NONE		guifg=#ffff87	guibg=NONE		gui=NONE
hi Tag						ctermfg=222		ctermbg=NONE		cterm=NONE		guifg=#ffdf87	guibg=NONE		gui=NONE
hi Delimiter				ctermfg=229		ctermbg=NONE		cterm=NONE		guifg=#ffffaf	guibg=NONE		gui=NONE
hi SpecialComment			ctermfg=249		ctermbg=NONE		cterm=NONE		guifg=#b2b2b2	guibg=NONE		gui=NONE
hi Debug					ctermfg=226		ctermbg=NONE		cterm=NONE		guifg=#ffff00	guibg=NONE		gui=NONE

" ----------
" - C like -
" ----------
hi PreProc					ctermfg=216		ctermbg=NONE		cterm=NONE		guifg=#ffaf87	guibg=NONE		gui=NONE
hi link Include PreProc
hi Define					ctermfg=3		ctermbg=NONE		cterm=NONE		guifg=#fbc692	guibg=NONE		gui=NONE
hi Macro					ctermfg=214		ctermbg=NONE		cterm=NONE		guifg=#ffaf00	guibg=NONE		gui=NONE
hi PreCondit				ctermfg=215		ctermbg=NONE		cterm=NONE		guifg=#ffaf5f	guibg=NONE		gui=NONE

hi Type						ctermfg=117		ctermbg=NONE		cterm=NONE		guifg=#87d7ff	guibg=NONE		gui=NONE
hi StorageClass				ctermfg=11		ctermbg=NONE		cterm=NONE		guifg=#fae3a0	guibg=NONE		gui=NONE
hi Structure				ctermfg=10		ctermbg=NONE		cterm=NONE		guifg=#b6c2aa	guibg=NONE		gui=NONE
hi Typedef					ctermfg=81		ctermbg=NONE		cterm=NONE		guifg=#5fd7ff	guibg=NONE		gui=NONE

" --------------------------------
" Diff
" --------------------------------
hi DiffAdd				ctermfg=34		ctermbg=NONE		cterm=NONE		guifg=#00af00		guibg=NONE		gui=NONE
hi DiffChange			ctermfg=5		ctermbg=NONE		cterm=NONE		guifg=#d743da		guibg=NONE		gui=NONE
hi DiffDelete			ctermfg=210		ctermbg=NONE		cterm=NONE		guifg=#ff8787		guibg=NONE		gui=NONE
hi DiffText				ctermfg=229		ctermbg=NONE		cterm=NONE		guifg=#ffffaf		guibg=NONE		gui=NONE
hi DiffAdded			ctermfg=34		ctermbg=NONE		cterm=NONE		guifg=#00af00		guibg=NONE		gui=NONE
hi DiffFile				ctermfg=6		ctermbg=NONE		cterm=NONE		guifg=#6193bc		guibg=NONE		gui=NONE
hi DiffNewFile			ctermfg=34		ctermbg=NONE		cterm=NONE		guifg=#00af00		guibg=NONE		gui=NONE
hi DiffLine				ctermfg=229		ctermbg=NONE		cterm=NONE		guifg=#ffffaf		guibg=NONE		gui=NONE
hi DiffRemoved			ctermfg=1		ctermbg=NONE		cterm=NONE		guifg=#b91e2e		guibg=NONE		gui=NONE
" --------------------------------
" Completion menu
" --------------------------------
hi Pmenu				ctermfg=0		ctermbg=254			cterm=NONE		guifg=#202020		guibg=#e4e4e4	gui=NONE
hi PmenuSel				ctermfg=0		ctermbg=6			cterm=NONE		guifg=#202020		guibg=#73a5c8	gui=NONE
hi PmenuSbar			ctermfg=NONE	ctermbg=15			cterm=NONE		guifg=NONE			guibg=#fff0f0	gui=NONE
hi PmenuThumb			ctermfg=NONE	ctermbg=7			cterm=NONE		guifg=NONE			guibg=#909090	gui=NONE

" --------------------------------
" Spelling
" --------------------------------
hi SpellBad					ctermfg=210		ctermbg=NONE		cterm=underline		guifg=NONE	guibg=NONE		gui=undercurl	 guisp=#ff8787
hi SpellCap					ctermfg=75		ctermbg=NONE		cterm=underline		guifg=NONE	guibg=NONE		gui=undercurl	 guisp=#5fafff
hi SpellLocal				ctermfg=178		ctermbg=NONE		cterm=underline		guifg=NONE	guibg=NONE		gui=undercurl	 guisp=#dfaf00
hi SpellRare				ctermfg=149		ctermbg=NONE		cterm=underline		guifg=NONE	guibg=NONE		gui=undercurl	 guisp=#afd75f


" --------------------------------------------------------------------
" Specific settings
" --------------------------------------------------------------------

" --------------------------------
" Vim highlighting
" --------------------------------
"hi vimIsCommand			ctermfg=187		ctermbg=NONE		cterm=NONE		guifg=#d7d7af	guibg=NONE		gui=NONE
"hi vimFunction				ctermfg=186		ctermbg=NONE		cterm=NONE		guifg=#d7d787	guibg=NONE		gui=NONE
"hi vimCommentTitle			ctermfg=15		ctermbg=13			cterm=NONE		guifg=#fffffe	guibg=#aa88aa	gui=NONE
"hi helpNote				ctermfg=15		ctermbg=12			cterm=NONE		guifg=#fffffe	guibg=#6194bc	gui=NONE
"hi helpWarning				ctermfg=15		ctermbg=9			cterm=NONE		guifg=#fffffe	guibg=#f2797b	gui=NONE
"
" --------------------------------
" Git highlighting
" --------------------------------
hi gitCommitOverflow		ctermfg=1		ctermbg=NONE		cterm=NONE		guifg=#b91e2e	guibg=NONE		gui=NONE
hi gitCommitSummary			ctermfg=6		ctermbg=NONE		cterm=NONE		guifg=#73a5c8	guibg=NONE		gui=NONE

" --------------------------------
" git gutter
" --------------------------------
hi GitGutterAdd				ctermfg=40		ctermbg=NONE		cterm=bold		guifg=#00ff00	guibg=NONE		gui=bold
hi GitGutterChange			ctermfg=213		ctermbg=NONE		cterm=bold		guifg=#ff87ff	guibg=NONE		gui=bold
hi GitGutterDelete			ctermfg=196		ctermbg=NONE		cterm=bold		guifg=#ff0000	guibg=NONE		gui=bold
hi GitGutterChangeDelete	ctermfg=212		ctermbg=NONE		cterm=bold		guifg=#ff87df	guibg=NONE		gui=bold

"   vim:tw=120 ts=4 sts=4 sw=4 noet ft=vim
