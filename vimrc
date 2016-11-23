"
" IMPORTANT REMINDER
"
" All color-values can be found with python script at:
" https://github.com/eikenb/terminal-colors
"
" Comment as much as possible, because we tend to forget things!
" --------------------------------------------------------------
"

set nocompatible                                 " be iMproved, required


"  fish
"     from: https://github.com/dag/vim-fish
"        fish is not completely POSIX compatible, therefore let vim use
"        bash as its shell.
"
if &shell =~# 'fish$'
  set shell=/bin/bash
endif
"

"
" Vim-Plug ---------------------------------------------------------------------
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
" https://github.com/junegunn/vim-plug
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
"  Install new plugins with:
"     :PlugInstall
"
"  Remove old/unused plugins with:
"     :PlugClean
"
" intro End
" ---------

"
"  All plugins are on github unless noted otherwise
"

" enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'

" Fugitive is a highly-capable Git wrapper for Vim.
Plug 'tpope/vim-fugitive'

" Unimpaired.vim provides shortcuts for various paired activities
Plug 'tpope/vim-unimpaired'

" Nice comment plugin
Plug 'tomtom/tcomment_vim'

" A Vim plugin which shows a git diff in the gutter (sign column) and
" stages/reverts hunks. Use [c and ]c to navigate changes.
Plug 'airblade/vim-gitgutter'

" Providing support for editing fish scripts.
Plug 'onodera-punpun/vim-fish'

" Gundo.vim is Vim plugin to visualize your Vim undo tree.
"Plug 'sjl/gundo.vim'

" UndoTree
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" Surround.vim lets you add/change/remove surrounding chars and tags
Plug 'tpope/vim-surround'

" Syntax checker for many languages
Plug 'scrooloose/syntastic'

" CtrlP.vim is a fuzzy file, buffer, mru, tag, etc finder
Plug 'ctrlpvim/ctrlp.vim'

" A code-completion engine for Vim
Plug 'Shougo/neocomplete.vim'

" Speeds up folding
Plug 'Konfekt/FastFold'

" Ultisnips aims to provide support for textual snippets, similar to TextMate
" or other Vim plugins. Activate by typing some text and hitting <tab>.
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

" Better whitespace highlighting for Vim
"  to toggle whitespace highlighting, call:
"     :ToggleWhitespace
"  to clean extra whitespace, call:
"     :StripWhitespace
Plug 'ntpeters/vim-better-whitespace'

" Support for Apple's Swift language
Plug 'kballard/vim-swift'

" Fantastic selection for vim
" Plug 'gorkunov/smartpairs.vim'

" vim plugin to trace syntax highlight
" activate with <leader>hlt or :HLT
Plug 'gerw/vim-HiLinkTrace'

" Color schemes
"Plug 'romainl/Apprentice', { 'branch': 'fancylines-and-neovim' }

" status/tabline for vim that's light as air
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Vim script for text filtering and alignment
Plug 'godlygeek/tabular'

" Delete all vim buffers but the current one
Plug 'janson/bufonly.vim'

" vim plugin to quickly switch between buffers
Plug 'troydm/easybuffer.vim'

" plugin that displays tags in a window, ordered by scope
Plug 'majutsushi/tagbar'

" gitv is a repository viewer
"  Dependancy: A working fugitive installation
Plug 'gregsexton/gitv'

" Markdown for Vim
Plug 'gabrielelana/vim-markdown'

" open the current Markdown buffer in Marked.app
Plug 'itspriddle/vim-marked'

" Syntax highlighting for tmux
Plug 'keith/tmux.vim'

call plug#end()

"
" Vim-Plug End -----------------------------------------------------------------
"



"
" Reload changes to vimrc
"

if has("autocmd")
  autocmd bufwritepost vimrc source $MYVIMRC
endif


"
" Options
"

set timeoutlen=3000                              "tm:    time in ms waiting for a key mapping sequence to complete
set ttimeoutlen=100                              "ttm:   time out on key codes after a tenth of a second
set history=50                                   "hi:    keep 50 lines of command line history
set ruler                                        "ru:    show the cursor position all the time
set showcmd                                      "sc:    display incomplete commands
set hidden                                       "hid:   don't care about closing modified buffers
set winwidth=84                                  "       The window width with multiple windows
set mouse=a                                      "       Enable the use of a mouse
set nowrap                                       "       don't wrap lines (mapped leader-w to toggle)
set t_Co=256                                     "       set iTerm terminal to 256 colors
set listchars=tab:▸\ ,eol:¬,extends:◉,trail:※,nbsp:⎵
set backspace=indent,eol,start                   "       Behave like a normal text editor
set noshowmode                                   "nosmd: Status-line shows the mode we're in
set breakindent                                  "bri:   wrapped line will continue visually indented
set breakindentopt=shift:5                       "briopt: indent by 5 spaces
set nobackup                                     "       Don't write backup files
set nowritebackup
set noswapfile
set cmdwinheight=20                              "       Height of command window

"
" Folding
"

set foldmethod=syntax                            "fdm:   fold on the indentation by default
set foldnestmax=10                               "fdn:   deepest fold is 10 levels
set foldenable                                   "nofen: don't fold by default
set foldlevel=1
set foldlevelstart=10                            "       open most folds by default

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

filetype plugin indent on                        "       load filetype-specific indent files
syntax on                                        "syn:   syntax highlighting
set showmatch                                    "sm:    flashes matching brackets or parenthasis
set matchtime=3                                  "mat:   How long to flash brackets

"
" Tabs
"

set tabstop=2                                    "ts:    number of spaces that a tab renders as
set shiftwidth=2                                 "sw:    number of spaces to use for autoindent
set softtabstop=2                                "sts:   number of spaces that tabs insert
set smarttab                                     "sta:   helps with backspacing because of expandtab
set expandtab                                    "et:    uses spaces instead of tab characters

"
" Hud and status info
"

set number                                       "nu:    numbers lines
set relativenumber                               "rnu    let vim calculate the vertical jumps
set numberwidth=5                                "nuw:   width of number column
set laststatus=2                                 "ls:    makes the status bar always visible
set ttyfast                                      "tf:    improves redrawing for newer computers
set lazyredraw                                   "lz:    will not redraw the screen while running macros (goes faster)
set linebreak                                    "lbr    break lines at word end

"
" Menu compilation
"

set wildmenu                                     "wmnu:  enhanced ed command completion
set wildmode=list:full                           "wim    list all matches and complete first match

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
set wildignore+=*/tmp/*                          " Temporary directories content

"
" Colors
"

colorscheme Kafka
set background=dark
set cursorline

"
" Gvim/MacVim
"

if has ('gui_running')
  set lines=80 columns=130          " Default window size
  set guifont=Iosevka-Light:h11
  set guioptions-=T                 " No toolbar
  set guioptions-=r                 " No scrollbar right
  set guioptions-=l                 " No scrollbar left
  set guioptions-=b                 " No scrollbar bottom
endif

"
" File formats -----------------------------------------------------------------
"
autocmd Filetype gitcommit setlocal spell textwidth=72
"from http://vim.wikia.com/wiki/Word_wrap_without_line_breaks
autocmd Filetype markdown setlocal wrap linebreak nolist textwidth=0 wrapmargin=0

" Make json files human readable
autocmd BufRead,BufNewFile *.json set filetype=json
autocmd FileType json setlocal equalprg=json_reformat

" Objective-C: map *.h & *.m files so syntax is recognized as objc
autocmd BufNewFile,BufRead *.m,*.h set ft=objc

" markdown: map *.md files so that syntax is recognized as markdown
autocmd Bufread,BufNewFile,BufReadPost *.md set filetype=markdown


"
" Plugin settings --------------------------------------------------------------
"

"
"  gitgutter
"

let g:gitgutter_override_sign_column_highlight=0
let g:gitgutter_eager=0
highlight SignColumn ctermbg=NONE guibg=NONE
let g:gitgutter_sign_column_always=1
let g:gitgutter_sign_removed='-'

"
"  Airline status bar options
"

let g:airline_theme='distinguished'
let g:airline_powerline_fonts=1
let g:airline_inactive_collapse=1
let g:airline_detect_iminsert=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']
let g:airline#extensions#whitespace#enabled = 0

"
"  Syntastic
"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"
"  NeoComplete
"

let g:neocomplete#enable_at_startup = 1
" Use smartcase
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length
let g:neocomplete#sources#syntax#min_keyword_length = 3

"
" Ultisnips
"

let g:UltiSnipsExpandTrigger="<tab>"

"
" Gitv
"

let g:Gitv_OpenHorizontal=1

"
" CtrlP
"
let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:30,results:30'


"
" Commands ---------------------------------------------------------------------
"

" Set tabstop, softtabstop and shiftwidth to the same value
" =========================================================
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

" Make :help appear in a full-screen tab, instead of a window
" ===========================================================
"Only apply to .txt files...
augroup HelpInTabs
  autocmd!
  autocmd BufEnter  *.txt   call HelpInNewTab()
augroup END

"Only apply to help files...
function! HelpInNewTab ()
  if &buftype == 'help'
    "Convert the help window to a tab...
    execute "normal \<C-W>T"
  endif
endfunction

" yank to clipboard
" =================
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard
endif

"
" Key-mappings -----------------------------------------------------------------
"

" Space is easier than backslash
let g:mapleader = "\<Space>"

" Escape is hard to reach
inoremap jj <esc>

" Shortcut to rapidly toggle set list
nmap <leader>l :set list!<CR>

" open .vimrc in a new tab
nmap <leader>v :tabedit $MYVIMRC<CR>

" Toggle wrap
nmap <leader>w :set invwrap<CR>:set wrap?<CR>

" Toggle airline whitespace detection
nmap <leader>awt :AirlineToggleWhitespace<CR>

" Refreshes all highlight groups and redraws the statusline.
nmap <leader>ar :AirlineRefresh<CR>

"
" NeoComplete key-mappings
" ------------------------
"
inoremap <expr><C-l> neocomplete#complete_common_string()
" Recommended key-mappings.
" " <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
    "return pumvisible() ? "\<C-y>" : "\<CR>"
 endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"


" Toggle Undotree
nnoremap <leader>ut :UndotreeToggle<CR>

" Tip from http://www.catonmat.net/blog/sudo-vim/
" save read-only files
cnoremap sudow w !sudo tee % >/dev/null

" Testing colorscheme
nmap <leader>hil :so $VIMRUNTIME/syntax/hitest.vim<CR>

" Toggle Easybuffer
nmap <leader>b :EasyBufferToggle<CR>

" Delete in normal mode switches off highlighting till next search...
nmap <silent> <BS> :nohlsearch<CR>

" Call the :Tabularize command each time you insert a | character
"  Very usefull for Markdown tables
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

" Key-mappings End <---
