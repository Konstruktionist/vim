"%% SiSU Vim color file
" Orion Maintainer: Peter van Peursem
" Originally: Slate created by Ralph Amissah
:set background=dark
:highlight clear
if version > 580
 hi clear
 if exists("syntax_on")
 syntax reset
 endif
endif
let colors_name = "orion"
:hi Normal           ctermfg=231         ctermbg=NONE                            guifg=White         guibg=grey15
:hi Cursor                                                                       guifg=slategrey     guibg=khaki
:hi VertSplit                                                cterm=reverse       guifg=grey40        guibg=#c2bfa5       gui=none
:hi Folded           ctermfg=grey        ctermbg=darkgrey                        guifg=grey40        guibg=black
:hi FoldColumn       ctermfg=4           ctermbg=7                               guifg=grey20        guibg=black
:hi IncSearch        ctermfg=yellow      ctermbg=green       cterm=none          guifg=green         guibg=black
:hi ModeMsg          ctermfg=brown                           cterm=none          guifg=goldenrod
:hi MoreMsg          ctermfg=darkgreen                                           guifg=SeaGreen
:hi NonText          ctermfg=blue        cterm=bold                              guifg=RoyalBlue     guibg=grey15
:hi Question         ctermfg=green                                               guifg=springgreen
:hi Search           ctermfg=grey        ctermbg=blue        cterm=none          guifg=wheat         guibg=peru
:hi SpecialKey       ctermfg=darkgreen                                           guifg=yellowgreen
:hi StatusLine                                               cterm=bold,reverse  guifg=black         guibg=#c2bfa5       gui=none
:hi StatusLineNC                                             cterm=reverse       guifg=grey40        guibg=#c2bfa5       gui=none
:hi Title            ctermfg=yellow                          cterm=bold          guifg=gold                              gui=bold
:hi Statement        ctermfg=lightblue                                           guifg=CornflowerBlue
:hi Visual           ctermfg=NONE        ctermbg=25                              guifg=khaki         guibg=olivedrab     gui=none
:hi WarningMsg       ctermfg=1                                                   guifg=salmon
:hi String           ctermfg=darkcyan                                            guifg=SkyBlue
:hi Comment          ctermfg=7                                                   guifg=grey40
:hi Constant         ctermfg=brown                                               guifg=#ffa0a0
:hi Special          ctermfg=brown                                               guifg=darkkhaki
:hi Identifier       ctermfg=red                                                 guifg=salmon
:hi Include          ctermfg=red                                                 guifg=red
:hi PreProc          ctermfg=red                                                 guifg=red           guibg=white
:hi Operator         ctermfg=Red                                                 guifg=Red
:hi Define           ctermfg=yellow                                              guifg=gold          gui=bold
:hi Type             ctermfg=2                                                   guifg=CornflowerBlue
:hi Function         ctermfg=brown                                               guifg=navajowhite
:hi Structure        ctermfg=green                                               guifg=green
:hi LineNr           ctermfg=8                                                   guifg=grey50
:hi Ignore           ctermfg=7                               cterm=bold          guifg=grey40
:hi Todo                                                                         guifg=orangered     guibg=yellow2
:hi Directory        ctermfg=darkcyan
:hi ErrorMsg         ctermfg=7           ctermbg=1           cterm=bold          guifg=White         guibg=Red           cterm=bold
:hi WildMenu         ctermfg=0           ctermbg=3
:hi DiffAdd          ctermfg=4           ctermbg=NONE
:hi DiffChange       ctermfg=5           ctermbg=NONE
:hi DiffDelete       ctermfg=1           ctermbg=NONE        cterm=bold
:hi DiffText         ctermfg=15          ctermbg=NONE        cterm=bold
:hi Underlined       ctermfg=5                               cterm=underline
:hi Error            ctermfg=7           ctermbg=1           cterm=bold          guifg=White         guibg=Red
:hi SpellErrors      ctermfg=7           ctermbg=1           cterm=bold          guifg=White         guibg=Red
:hi SignColumn                                               ctermbg=NONE
