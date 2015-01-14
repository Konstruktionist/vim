"
"
" IMPORTANT REMINDER
"
" All color-values can be found at:
" http://upload.wikimedia.org/wikipedia/en/1/15/Xterm_256color_chart.svg
"
" Comment as much as possible, because we tend to forget things!
" --------------------------------------------------------------
"

set nocompatible                                 " be iMproved, required

"
"	fish
"		from: https://github.com/dag/vim-fish
"

if &shell =~# 'fish$'
   set shell=/bin/bash
endif

"
" Vim-Plug ---------------------------------------------------------------
"
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !mkdir -p ~/.vim/autoload
  silent !curl -fLo ~/.vim/autoload/plug.vim
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')

" vim-plug short intro
" --------------------
"
"
" Make sure you use SINGLE quotes
" Plug 'junegunn/seoul256.vim'
" Plug 'junegunn/vim-easy-align'
" 
"  On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" 
"  Branch loading
" Plug 'scrooloose/nerdtree', { 'branch': 'WhatEverYouWant' }
"
"  Using git URL
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" 
"  Plugin options
" Plug 'nsf/gocode', { 'tag': 'go.weekly.2012-03-13', 'rtp': 'vim' }
" 
"  Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
" 
"  Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'
"
" intro End
" ---------

Plug 'tpope/vim-repeat'

" Fugitive is a highly-capable Git wrapper for Vim.
" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" Unimpaired.vim provides shortcuts for various paired activities:
"
" ex cmds: ]q is :cnext, [q is :cprevious. ]b is :bnext, [b is :bprev.
" See the documentation for the full set of 20 mappings and mnemonics.
" All of them take a count.
"
" lines: [<Space> and ]<Space> add newlines before and after the
" cursor line. [e and ]e exchange the current line with the one above
" or below it.
"
" toggling options: [os, ]os, and cos perform :set spell, :set
" nospell, and :set invspell, respectively. There's also l (list), n
" (number), w (wrap), x (cursorline cursorcolumn), and several others,
" plus mappings to help alleviate the set paste dance. Consult the
" documentation.
"
" misc: [f and ]f to go to the next/previous file in the directory,
" and [n and ]n to jump between SCM conflict markers.
"
" https://github.com/tpope/vim-unimpaired
Plug 'tpope/vim-unimpaired'

" A tree explorer plugin for vim
" https://github.com/scrooloose/nerdtree
Plug 'scrooloose/nerdtree'

" A Vim plugin which shows a git diff in the gutter (sign column) and
 " stages/reverts hunks. Use [c and ]c to navigate changes.
 " https://github.com/airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'

" This is an addon for Vim providing support for editing fish scripts.
" https://github.com/dag/vim-fish
Plug 'dag/vim-fish'

" Neatstatus.vim provides a lightweight statusline.
" The aim of Neat Status is to provide neat, and simple UI with just basic
" information and no bells and whistles for those users who consider things
" like Powerline to be overkill.
" https://github.com/maciakl/vim-neatstatus
Plug 'Konstruktionist/vim-neatstatus', { 'branch': 'Adaptations' }

" Gundo.vim is Vim plugin to visualize your Vim undo tree.
" https://github.com/sjl/gundo.vim/
Plug 'sjl/gundo.vim'

" A light and configurable statusline/tabline for vim
"Plug" 'itchyny/lightline.vim'

" Surround.vim lets you add/change/remove surrounding chars and tags
" https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

" Syntax checker for many languages
" https://github.com/scrooloose/syntastic
Plug 'scrooloose/syntastic'

" CtrlP.vim is a fuzzy file, buffer, mru, tag, etc finder.
" Open with CTRL-P, then:
"   Press <c-f> and <c-b> to cycle between modes.
"   Press <c-d> to switch to filename only search instead of full path.
"   Press <c-r> to switch to regexp mode.
" https://github.com/kien/ctrlp.vim
Plug 'kien/ctrlp.vim'

" SnipMate aims to provide support for textual snippets, similar to TextMate
" or other Vim plugins. Activate by typing some text and hitting <tab>.
" Snipmate depends on tlib and mw-utils.
" https://github.com/garbas/vim-snipmate
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" Support for Apple's Swift language
" Plug 'kballard/vim-swift'

" A front for ag, A.K.A. the_silver_searcher
Plug 'rking/ag.vim'

"Plug 'ap/vim-buftabline'

" Read Unix man pages in vim
Plug 'Z1MM32M4N/vim-superman'

" Fantastic selection for vim
" Plug 'gorkunov/smartpairs.vim'

" vim plugin to trace syntax highlight
" activate with <leader>hlt
Plug 'gerw/vim-HiLinkTrace'

" Color schemes
Plug 'chriskempson/base16-vim'
Plug 'altercation/vim-colors-solarized'


call plug#end()

"
" Vim-Plug End -----------------------------------------------------------
"



"
" Reload changes to .vimrc
"

if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif


"
" Options
"

set updatetime=2000                              "ut:    The length of time (in ms) Vim waits after you stop typing
set history=50                                   "hi:    keep 50 lines of command line history
set ruler                                        "ru:    show the cursor position all the time
set showcmd                                      "sc:    display incomplete commands
set hidden                                       "hid:   don't care about closing modified buffers
set winwidth=84                                  " The window width with multiple windows
set mouse=a                                      "       Enable the use of a mouse 
set nowrap                                       "       don't wrap lines (we map leader-W to toggle) 
set t_Co=256                                     " set iTerm terminal to 256 colors
set listchars=tab:▸\ ,eol:¬,trail:⚀              " Use the same symbols as TextMate for tabstops and EOLs
set backspace=indent,eol,start                   " Behave like a normal text editor
set noshowmode                                   "nosmd:  Status-line shows the mode we're in
:set showbreak=↪︎\ 

"
" Folding
"

set foldmethod=syntax                            "fdm:   fold by the indentation by default
set foldnestmax=10                               "fdn:   deepest fold is 10 levels
set nofoldenable                                 "nofen: don't fold by default
set foldlevel=1

"
" Search
"

set incsearch                                    "is:    automatically begins searching as you type
set hlsearch                                     "hls:   highlights search results; ctrl-n or :noh to unhighlight
set ignorecase                                   "ic:    searches are case insensitive...
set smartcase                                    "scs:   ... unless they contain at least one capital letter 
set gdefault                                     "gd:    Substitute all matches in a line by default

"
" Programming
"

syntax on                                        "syn:   syntax highlighting
set cindent                                      "cin:   enables automatic indenting c-style
set cinoptions=l1,j1                             "cino:  affects the way cindent reindents lines
set showmatch                                    "sm:    flashes matching brackets or parenthasis
set matchtime=3                                  "mat:   How long to flash brackets

"
" Tabs
"

set tabstop=3                                    "ts:    number of spaces that a tab renders as
set shiftwidth=3                                 "sw:    number of spaces to use for autoindent
set softtabstop=3                                "sts:   number of spaces that tabs insert
set smarttab                                     "sta:   helps with backspacing because of expandtab
set expandtab                                    "et:    uses spaces instead of tab characters

"
" Hud and status info
"

set number                                       "nu:    numbers lines
set relativenumber                               "rnu    let vim calculate the vertical jumps
set numberwidth=6                                "nuw:   width of number column
set laststatus=2                                 "ls:    makes the status bar always visible
set ttyfast                                      "tf:    improves redrawing for newer computers
set lazyredraw                                   "lz:    will not redraw the screen while running macros (goes faster)
set linebreak                                    "lbr    break lines at word end

"
" Menu compilation
"

set wildmenu                                     "wmnu:  enhanced ed command completion
set wildmode=list,full                           "wim    list all matches and complete first match

" Ignore these file-types for wildcard matching
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX crappings
set wildignore+=*.luac                           " Lua byte code
set wildignore+=migrations                       " Django migrations
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.orig                           " Merge resolution files

"
" Colors
"

"let base16colorspace=256
colorscheme base16-ocean
set background=dark

" Adjustments to colorscheme
highlight clear CursorLine
highlight LineNr ctermbg=0 ctermfg=15
highlight CursorLineNr ctermbg=0 ctermfg=11 guifg=#dfdf87 guibg=#353d46
highlight StatusLine ctermbg=8 ctermfg=15
highlight Visual ctermbg=8 ctermfg=0 guifg=#000000 guibg=#808080

" gitgutter colors
highlight clear SignColumn
let g:gitgutter_sign_column_always = 1
highlight GitGutterAdd ctermfg=2 ctermbg=0 guifg=#009900 guibg=#343d46
highlight GitGutterChange ctermfg=3 ctermbg=0 guifg=#bbbb00 guibg=#343d46
highlight GitGutterDelete ctermfg=1 ctermbg=0 guifg=#ff2222 guibg=#343d46
highlight GitGutterChangeDelete ctermfg=5 ctermbg=8 guifg=#b48ead guibg=#808080
let g:gitgutter_sign_removed = '-'


" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
   if !exists("*synstack")
      return
   endif
   echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

"
" gvim
"

set guifont=Menlo:h12

"
" Make json files human readable
"

au BufRead,BufNewFile *.json set filetype=json
au FileType json setlocal equalprg=json_reformat


" 
"	NeatStatusLine
" 

let g:NeatStatusLine_separator = '⎜'
let g:NeatStatusLine_color_position = 'guifg=#ffffff guibg=#505B66 ctermfg=15 ctermbg=8'
let g:NeatStatusLine_color_line     = 'guifg=#ffff00 guibg=#505B66 gui=bold ctermfg=11 ctermbg=8 cterm=bold'
let g:NeatStatusLine_color_filetype = 'guifg=#ffffff guibg=#ff0000 gui=bold ctermfg=237 ctermbg=7 cterm=NONE'


"
"	silver searcher
"

let g:agprg="ag --column --smart-case"

"
" Commands
"

command! -nargs=* Wrap set wrap linebreak nolist

"
" Set tabstop, softtabstop and shiftwidth to the same value
"

command! -nargs=* Stab call Stab()
function! Stab()
   let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
   if l:tabstop > 0
      let &l:sts = l:tabstop
      let &l:ts = l:tabstop
      let &l:sw = l:tabstop
   endif
   call SummarizeTabs()
endfunction

function! SummarizeTabs()
   try
      echohl ModeMsg
      echon 'tabstop='.&l:ts
      echon ' shiftwidth='.&l:sw
      echon ' softtabstop='.&l:sts
      if &l:et
         echon ' expandtab'
      else
         echon ' noexpandtab'
      endif
   finally
      echohl None
   endtry
endfunction



"
" Key-mappings
"

let mapleader = ","

" Shortcut to rapidly toggle set list
nmap <leader>l :set list!<CR>

" open .vimrc in a new tab
nmap <leader>v :tabedit $MYVIMRC<CR>

" Toggle wrap
nmap <leader>W :set invwrap<CR>:set wrap?<CR>

