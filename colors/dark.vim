" Vim colorscheme
" A colorscheme that has a good color contrast which should be usable by
" people who have vision problems.
" Colors are tested with the Color Contrast Analyzer
"    (https://developer.paciellogroup.com/resources/contrastanalyser/).
" This is a tool that tests against WCAG 2.0 color contrast success criteria.
"
"   CONTRAST REQUIRES TWO COLORS:
"
"   Therefore there are some assumptions for this colorscheme:
"	* The background for the terminal is set at #383f4c, which is a dark grey.
"	* The terminal text colors should also be WCAG2.0 compliant.
"
"	I have them set up as follows:
"						ANSI Colors
"		color#	label	normal value	color#	bright value
"		0		Black	#1a1a1a			8		#bdc3c7
"		1		Red		#ff8787			9		#f1a9a0
"		2		Green	#9acd32			10		#abe338
"		3		Yellow	#f1f227			11		#f5d76e
"		4		Blue	#00bfff			12		#34b9db
"		5		Magenta	#dda0dd			13		#aea8d3
"		6		Cyan	#00e0e0			14		#81cfe0
"		7		White	#bfbfbf			15		#e5e5e5
"
"	There's also the Text (or Foreground) color #f2f1ef,
"	and the Bold color #a1a1a1.
"
" I didn't get all green checkmark results, because that limited the color range
" extensively.
" But values that got 3 out of 4 (both AA normal/large & AAA large text) were accepted.
"
" Maintained by Peter van Peursem
"	  Version 0.6 - 03-02-2019
"
" All color-values can be found with the python script from:
" https://github.com/eikenb/terminal-colors
"

" --------------------------------
" Support only 256 or full colors
" --------------------------------
if !has('gui_running') && &t_Co < 256
	finish
endif

set background=dark

" Reset existing highlighting & syntax
highlight clear
if exists("syntax_on")
  syntax reset
endif

" --------------------------------
"	Name of the colorscheme
" --------------------------------
let g:colors_name="dark"

" -------------------
" - Editor settings -
" -------------------
hi Normal					ctermfg=254		ctermbg=NONE		cterm=NONE		guifg=#e4e4e4	guibg=#383f4c	gui=NONE
hi Cursor					ctermfg=NONE	ctermbg=231			cterm=NONE		guifg=NONE		guibg=#ffffff	gui=NONE
hi CursorLine				ctermfg=NONE	ctermbg=236			cterm=NONE		guifg=NONE		guibg=#303030	gui=NONE
hi LineNr					ctermfg=8		ctermbg=NONE		cterm=NONE		guifg=#808080	guibg=NONE		gui=NONE
hi CursorLineNR				ctermfg=11		ctermbg=NONE		cterm=NONE		guifg=#fae3a0	guibg=NONE		gui=NONE

" -----------------
" - Number column -
" -----------------
hi CursorColumn				ctermfg=NONE	ctermbg=236			cterm=NONE		guifg=NONE		guibg=#303030	gui=NONE
hi FoldColumn				ctermfg=110		ctermbg=NONE		cterm=NONE		guifg=#87afd7	guibg=NONE		gui=NONE
hi SignColumn				ctermfg=245		ctermbg=NONE		cterm=NONE		guifg=#8a8a8a	guibg=NONE		gui=NONE
hi Folded					ctermfg=249		ctermbg=NONE		cterm=NONE		guifg=#b2b2b2	guibg=NONE		gui=NONE

" -------------------------
" - Window/Tab delimiters -
" -------------------------
hi VertSplit				ctermfg=254		ctermbg=NONE		cterm=NONE		guifg=#e4e4e4	guibg=#383f4c	gui=NONE
hi ColorColumn				ctermfg=NONE	ctermbg=8			cterm=NONE		guifg=NONE		guibg=#737373	gui=NONE
hi TabLine					ctermfg=254		ctermbg=235			cterm=italic	guifg=#e4e4e4	guibg=#262626	gui=italic
hi TabLineFill				ctermfg=254		ctermbg=235			cterm=NONE		guifg=#e4e4e4	guibg=#262626	gui=NONE
hi TabLineSel				ctermfg=235		ctermbg=249			cterm=bold		guifg=#262626	guibg=#b2b2b2	gui=bold

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory				ctermfg=12		ctermbg=NONE		cterm=NONE		guifg=#8ca1af	guibg=NONE		gui=NONE
hi Search					ctermfg=226		ctermbg=NONE		cterm=underline guifg=#ffff00	guibg=NONE		gui=underline
hi IncSearch				ctermfg=232		ctermbg=226			cterm=NONE		guifg=#000000	guibg=#ffff00	gui=NONE

" -----------------
" - Prompt/Status -
" -----------------
hi StatusLine				ctermfg=254		ctermbg=235			cterm=NONE		guifg=#e4e4e4	guibg=#262626	gui=NONE
hi StatusLineNC				ctermfg=254		ctermbg=237			cterm=italic	guifg=#e4e4e4	guibg=#3a3a3a	gui=italic
hi WildMenu					ctermfg=235		ctermbg=249			cterm=bold		guifg=#262626	guibg=#b2b2b2	gui=bold
hi Question					ctermfg=10		ctermbg=NONE		cterm=NONE		guifg=#b6c2aa	guibg=NONE		gui=NONE
hi Title					ctermfg=3		ctermbg=NONE		cterm=bold		guifg=#fbc692	guibg=NONE		gui=NONE
hi ModeMsg					ctermfg=136		ctermbg=NONE		cterm=NONE		guifg=#af8700	guibg=NONE		gui=NONE
hi MoreMsg					ctermfg=2		ctermbg=NONE		cterm=NONE		guifg=#93a48e	guibg=NONE		gui=NONE
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC

" --------------
" - Visual aid -
" --------------
hi MatchParen				ctermfg=232		ctermbg=117			cterm=NONE		guifg=#080808	guibg=#87d7ff	gui=NONE
hi Visual					ctermfg=NONE	ctermbg=25			cterm=NONE		guifg=NONE		guibg=#005faf	gui=NONE
hi VisualNOS				ctermfg=9		ctermbg=25			cterm=NONE		guifg=#d14548	guibg=#005faf	gui=NONE
hi NonText					ctermfg=244		ctermbg=NONE		cterm=NONE		guifg=#808080	guibg=NONE		gui=NONE

hi Todo						ctermfg=14		ctermbg=NONE		cterm=underline guifg=#00ffff	guibg=NONE		gui=underline
hi Underlined				ctermfg=249		ctermbg=NONE		cterm=underline guifg=#b2b2b2	guibg=NONE		gui=underline
hi Error					ctermfg=232		ctermbg=1			cterm=NONE		guifg=#080808	guibg=#ff8787	gui=NONE
hi ErrorMsg					ctermfg=210		ctermbg=NONE		cterm=NONE		guifg=#ff8787	guibg=NONE		gui=NONE
hi WarningMsg				ctermfg=227		ctermbg=NONE		cterm=NONE		guifg=#ffff5f	guibg=NONE		gui=NONE
hi Ignore					ctermfg=7		ctermbg=NONE		cterm=bold		guifg=#808080	guibg=#005faf	gui=NONE
hi SpecialKey				ctermfg=9		ctermbg=NONE		cterm=NONE		guifg=#cd645f	guibg=NONE		gui=NONE
"
" ------------------
" - Variable types -
" ------------------
hi Constant					ctermfg=113		ctermbg=NONE		cterm=NONE		guifg=#87af5f	guibg=NONE		gui=NONE
hi String					ctermfg=148		ctermbg=NONE		cterm=NONE		guifg=#afd700	guibg=NONE		gui=NONE
hi StringDelimiter			ctermfg=248		ctermbg=NONE		cterm=NONE		guifg=#fff0f0	guibg=NONE		gui=NONE
hi Character				ctermfg=112		ctermbg=NONE		cterm=NONE		guifg=#87d700	guibg=NONE		gui=NONE
hi Number					ctermfg=183		ctermbg=NONE		cterm=NONE		guifg=#d7afff	guibg=NONE		gui=NONE
hi! link Boolean Number
hi! link Float Number

hi Identifier				ctermfg=210		ctermbg=NONE		cterm=NONE		guifg=#ff8787	guibg=NONE		gui=NONE
hi Function					ctermfg=217		ctermbg=NONE		cterm=NONE		guifg=#ffaf87	guibg=NONE		gui=NONE

" -----------------------
" - Language constructs -
" -----------------------
hi Statement				ctermfg=110		ctermbg=NONE		cterm=NONE		guifg=#87afd7	guibg=NONE		gui=NONE
hi Label					ctermfg=139		ctermbg=NONE		cterm=NONE		guifg=#af87af	guibg=NONE		gui=NONE
hi! link Operator Statement
hi! link Keyword Label
hi! link Conditional Label
hi! link Repeat Label
hi Exception				ctermfg=75		ctermbg=NONE		cterm=NONE		guifg=#5fafff	guibg=NONE		gui=NONE
hi Comment					ctermfg=249		ctermbg=NONE		cterm=italic	guifg=#b2b2b2	guibg=NONE		gui=italic

hi Special					ctermfg=223		ctermbg=NONE		cterm=NONE		guifg=#ffd7af	guibg=NONE		gui=NONE
hi SpecialChar				ctermfg=228		ctermbg=NONE		cterm=NONE		guifg=#ffff87	guibg=NONE		gui=NONE
hi Tag						ctermfg=221		ctermbg=NONE		cterm=NONE		guifg=#ffdf5f	guibg=NONE		gui=NONE
hi! link Delimiter Special
hi SpecialComment			ctermfg=249		ctermbg=NONE		cterm=NONE		guifg=#b2b2b2	guibg=NONE		gui=NONE
hi Debug					ctermfg=226		ctermbg=NONE		cterm=NONE		guifg=#ffff00	guibg=NONE		gui=NONE

" ----------
" - C like -
" ----------
hi PreProc					ctermfg=216		ctermbg=NONE		cterm=NONE		guifg=#ffaf87	guibg=NONE		gui=NONE
hi! link Include PreProc
hi Define					ctermfg=3		ctermbg=NONE		cterm=NONE		guifg=#fbc692	guibg=NONE		gui=NONE
hi Macro					ctermfg=214		ctermbg=NONE		cterm=NONE		guifg=#ffaf00	guibg=NONE		gui=NONE
hi PreCondit				ctermfg=215		ctermbg=NONE		cterm=NONE		guifg=#ffaf5f	guibg=NONE		gui=NONE

hi Type						ctermfg=117		ctermbg=NONE		cterm=NONE		guifg=#87d7ff	guibg=NONE		gui=NONE
hi StorageClass				ctermfg=11		ctermbg=NONE		cterm=NONE		guifg=#fae3a0	guibg=NONE		gui=NONE
hi Structure				ctermfg=10		ctermbg=NONE		cterm=NONE		guifg=#b6c2aa	guibg=NONE		gui=NONE
hi Typedef					ctermfg=81		ctermbg=NONE		cterm=NONE		guifg=#5fd7ff	guibg=NONE		gui=NONE

" --------
" - Diff -
" --------
hi DiffAdd				ctermfg=0		ctermbg=82			cterm=NONE		guifg=#000000		guibg=#5fff00	gui=NONE
hi DiffChange			ctermfg=0		ctermbg=5			cterm=NONE		guifg=#000000		guibg=#dda0dd	gui=NONE
hi DiffDelete			ctermfg=0		ctermbg=1			cterm=NONE		guifg=#000000		guibg=#ff8787	gui=NONE
hi DiffText				ctermfg=0		ctermbg=229			cterm=NONE		guifg=#000000		guibg=#ffffaf	gui=NONE
hi DiffAdded			ctermfg=0		ctermbg=40			cterm=NONE		guifg=#000000		guibg=#00d700	gui=NONE
hi DiffFile				ctermfg=75		ctermbg=NONE		cterm=NONE		guifg=#5fafff		guibg=NONE		gui=NONE
hi DiffNewFile			ctermfg=120		ctermbg=NONE		cterm=NONE		guifg=#87ff87		guibg=NONE		gui=NONE
hi DiffLine				ctermfg=229		ctermbg=NONE		cterm=NONE		guifg=#ffffaf		guibg=NONE		gui=NONE
hi DiffRemoved			ctermfg=210		ctermbg=NONE		cterm=NONE		guifg=#ff8787		guibg=NONE		gui=NONE

" -------------------
" - Completion menu -
" -------------------
hi Pmenu				ctermfg=235		ctermbg=249			cterm=NONE		guifg=#262626		guibg=#b2b2b2	gui=NONE
hi PmenuSel				ctermfg=249		ctermbg=235			cterm=NONE		guifg=#b2b2b2		guibg=#262626	gui=NONE
hi PmenuSbar			ctermfg=NONE	ctermbg=249			cterm=NONE		guifg=NONE			guibg=#b2b2b2	gui=NONE
hi PmenuThumb			ctermfg=NONE	ctermbg=15			cterm=NONE		guifg=NONE			guibg=#e5e5e5	gui=NONE

" ------------
" - Spelling -
" ------------
hi SpellBad					ctermfg=210		ctermbg=NONE		cterm=underline		guisp=#ff8787	gui=undercurl
hi SpellCap					ctermfg=75		ctermbg=NONE		cterm=underline		guisp=#5fafff	gui=undercurl
hi SpellLocal				ctermfg=178		ctermbg=NONE		cterm=underline		guisp=#dfaf00	gui=undercurl
hi SpellRare				ctermfg=149		ctermbg=NONE		cterm=underline		guisp=#afd75f	gui=undercurl


" --------------------------------------------------------------------
" Specific settings
" --------------------------------------------------------------------

" --------------------
" - Git highlighting -
" --------------------
hi gitCommitOverflow		ctermfg=1		ctermbg=NONE		cterm=NONE		guifg=#ff8787	guibg=NONE		gui=NONE
hi gitCommitSummary			ctermfg=6		ctermbg=NONE		cterm=NONE		guifg=#00e0e0	guibg=NONE		gui=NONE

" --------------
" - git gutter -
" --------------
hi GitGutterAdd				ctermfg=40		ctermbg=NONE		cterm=bold		guifg=#00d700	guibg=NONE		gui=bold
hi GitGutterChange			ctermfg=183		ctermbg=NONE		cterm=bold		guifg=#d7afff	guibg=NONE		gui=bold
hi GitGutterDelete			ctermfg=210		ctermbg=NONE		cterm=bold		guifg=#ff8787	guibg=NONE		gui=bold
hi GitGutterChangeDelete	ctermfg=229		ctermbg=NONE		cterm=bold		guifg=#ffffaf	guibg=NONE		gui=bold

"   vim:tw=140 ts=4 sts=4 sw=4 noet
