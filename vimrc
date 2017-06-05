"
" IMPORTANT REMINDER
"
" All color-values can be found with python script at:
" https://github.com/eikenb/terminal-colors
"
" Comment as much as possible, because humans tend to forget things!
" ------------------------------------------------------------------

"  fish
"     from: https://github.com/dag/vim-fish
"        fish is not completely POSIX compatible, therefore let vim use
"        bash as its shell.
"
if &shell =~# 'fish$'
  set shell=/bin/bash
endif
"

"- Vim-Plug installation

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !mkdir -p ~/.vim/autoload
  silent !curl -fLo ~/.vim/autoload/plug.vim
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')

"- Vim-Plug Manual
" This is here, because there's no help file
" ------------------------------------------
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
"
"   Plug options
"
"   Option                Description
"   ------                -----------
"   branch/tag/commit	    Branch/tag/commit of the repository to use
"   rtp	                  Subdirectory that contains Vim plugin
"   dir	                  Custom directory for the plugin
"   as	                  Use different name for the plugin
"   do	                  Post-update hook (string or funcref)
"   on	                  On-demand loading: Commands or <Plug>-mappings
"   for	                  On-demand loading: File types
"   frozen	              Do not update unless explicitly specified

"- Plugins to load
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

" UndoTree
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" Surround.vim lets you add/change/remove surrounding chars and tags
Plug 'tpope/vim-surround'

" Syntax checker for many languages
" Plug 'scrooloose/syntastic'

" command-t
Plug 'wincent/command-t', {
      \ 'do': 'cd ruby/command-t && make clean && ruby extconf.rb && make'
      \ }

" terminus
" vim terminal integration, change cursor shape, bracketed paste mode, etc
Plug 'wincent/terminus'

" Ultisnips aims to provide support for textual snippets, similar to TextMate
" or other Vim plugins. Activate by typing some text and hitting <tab>.
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

" vim plugin to trace syntax highlight
" activate with <leader>hlt or :HLT
Plug 'gerw/vim-HiLinkTrace'

" Vim script for text filtering and alignment
Plug 'godlygeek/tabular'

" plugin that displays tags in a window, ordered by scope
"Plug 'majutsushi/tagbar'

" gitv is a repository viewer
"  Dependancy: A working fugitive installation
Plug 'gregsexton/gitv', {'on': ['Gitv']}

" Providing support for editing fish scripts.
Plug 'Konstruktionist/vim-fish', { 'for': 'fish' }

" Support for Apple's Swift language
Plug 'keith/swift.vim', { 'for': 'swift' }

" Markdown for Vim
Plug 'gabrielelana/vim-markdown', { 'for': 'markdown' }
" Plug 'rhysd/vim-gfm-syntax' " github flavored markdown

" open the current Markdown buffer in Marked.app
Plug 'itspriddle/vim-marked', { 'for': 'markdown' }

" Syntax highlighting for tmux
Plug 'keith/tmux.vim'


" matchit lets you jump between begin and end of function with %
packadd! matchit                                 " add built-in matchit plugin

call plug#end()


"- Options
set timeoutlen=3000                              "tm:    time in ms waiting for a key mapping sequence to complete
set ttimeoutlen=100                              "ttm:   time out on key codes after a tenth of a second
set history=50                                   "hi:    keep 50 lines of command line history
set showcmd                                      "sc:    display incomplete commands
set hidden                                       "hid:   don't care about closing modified buffers
set winwidth=84                                  "       The window width with multiple windows
set mouse=a                                      "       Enable the use of a mouse
set nowrap                                       "       don't wrap lines (mapped leader-w to toggle)
set listchars=tab:▸\ ,eol:¬,extends:»,precedes:«,trail:※,nbsp:⎵
set backspace=indent,eol,start                   "       Behave like a normal text editor
set noshowmode                                   "nosmd: Status-line shows the mode we're in
set breakindent                                  "bri:   wrapped line will continue visually indented
set breakindentopt=shift:5                       "briopt: indent by 5 spaces
set nobackup                                     "       Don't write backup files
set nowritebackup
set noswapfile
set cmdwinheight=20                              "       Height of command window
set nrformats-=octal                             "nf:    Don't assume numbers starting with zero are octal
set scrolloff=2                                  "so:    Min. # of lines visible at top or bottom
set nojoinspaces                                 "nojs:  Don't autoinsert two spaces after '.', '?', '!' for join command
set clipboard=unnamed                            "       copy to the system clipboard

"- Folding
set foldnestmax=10                               "fdn:   deepest fold is 10 levels

"- Search
set incsearch                                    "is:    automatically begins searching as you type
set hlsearch                                     "hls:   highlights search results; ctrl-n or :noh to unhighlight
set ignorecase                                   "ic:    searches are case insensitive...
set smartcase                                    "scs:   ... unless they contain at least one capital letter
set gdefault                                     "gd:    Substitute all matches in a line by default

"- Programming

filetype plugin indent on                        "       load filetype-specific indent files
syntax on                                        "syn:   syntax highlighting
set showmatch                                    "sm:    flashes matching brackets or parenthesis
set matchtime=3                                  "mat:   How long to flash brackets

"- Tabs
set tabstop=2                                    "ts:    number of spaces that a tab renders as
set shiftwidth=2                                 "sw:    number of spaces to use for autoindent
set softtabstop=2                                "sts:   number of spaces that tabs insert
set smarttab                                     "sta:   helps with backspacing because of expandtab
set expandtab                                    "et:    uses spaces instead of tab characters

"- Hud and status info
set number                                       "nu:    numbers lines
set relativenumber                               "rnu    let vim calculate the vertical jumps
set numberwidth=5                                "nuw:   width of number column
set laststatus=2                                 "ls:    makes the status bar always visible
set ttyfast                                      "tf:    improves redrawing for newer computers
set lazyredraw                                   "lz:    will not redraw the screen while running macros (goes faster)
set linebreak                                    "lbr    break lines at word end
set cursorline                                   "cul:   highlight the screenline of the cursor

"- Menu compilation
set wildmenu                                     "wmnu:  enhanced ed command completion
set wildmode=list:full                           "wim    list all matches and complete first match

" Ignore these file-types for wildcard matching
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*        " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX crappings
set wildignore+=*.luac                           " Lua byte code
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.orig                           " Merge resolution files
set wildignore+=*/tmp/*                          " Temporary directories content

"- Colors
colorscheme Kafka
" Iterm & Terminal.app can both display italics
" (after patching terminfo database)
" ensure comments are in italic, even if not set in colorscheme
highlight Comment cterm=italic gui=italic

"- Gvim/MacVim
if has ('gui_running')
  set lines=80 columns=130                       " Default window size
  set guifont=Iosevka-Light:h11
  set guioptions-=T                              " No toolbar
  set guioptions-=r                              " No scrollbar right
  set guioptions-=l                              " No scrollbar left
  set guioptions-=b                              " No scrollbar bottom
  set guioptions+=h                              " Limit horizontal scrolling
endif

"- Statusline (requires Powerline enabled font for branch & lock)
"           Some helper functions used in statusline
"--- Get diff statistics of file in buffer
function! GitStats() abort
  " These are variables only for the current buffer
  let b:hunk_symbols = ['+', '~', '-']
  let b:string = ''
  let b:git = fugitive#head()
  let b:gits = GitGutterGetHunkSummary()         " Changes to current file

  " Are we in a repo?
  if b:git == ''                                 " Not a repo,therefore show empty string aka collapse
    return b:string
  elseif b:git != '' && b:gits == [0, 0, 0]      " A repo with no changes, show empty string aka collapse
    return b:string
  else                                           " In a repo with changes from HEAD
    for i in [0, 1, 2]
      let b:string .= printf('%s%s ', b:hunk_symbols[i], b:gits[i])   " Fill string with changes
    endfor
    return b:string
  endif
endfunction

"--- Get name of branch
function! GitInfo() abort                        " Assumption: we are in a repo
  if &ft == 'help'                               " Don't show in help files aka collapse
    return ''
  elseif b:git != '' && b:string == ''           " Yes, we're in a repo & file has no changes
    return ' '.fugitive#head()                  " branch-symbol is U+E0A0 (in private use area)
  elseif b:git != '' && b:string != ''           " Yes, in a repo, but file has changes, add space before branch symbol
    return '  '.fugitive#head()
  elseif b:git == ''                             " No repo, so don't show aka collapse
    return ''
  endif
endfunction

"--- Get the pathname to the file
function! Fileprefix() abort
  let l:basename=expand('%:h')
  if &ft == 'help'                               " Don't show in help files aka collapse
    return ''
  elseif l:basename == '' || l:basename == '.'   " If empty or current working directory don't show path
    return ''
  else
    " Make sure we show $HOME as ~.
    return substitute(l:basename . '/', '\C^' . $HOME, '~', '')
  endif
endfunction

"--- What modes are there
let g:currentmode={
      \ 'n'  : 'N',
      \ 'no' : 'N·OPERATOR PENDING',
      \ 'v'  : 'VISUAL',
      \ 'V'  : 'V·LINE',
      \ '' : 'V·BLOCK',
      \ 's'  : 'SELECT',
      \ 'S'  : 'S·LINE',
      \ '' : 'S·BLOCK',
      \ 'i'  : 'INSERT',
      \ 'R'  : 'REPLACE',
      \ 'Rv' : 'V·REPLACE',
      \ 'c'  : 'COMMAND',
      \ 'cv' : 'VIM EX',
      \ 'ce' : 'EX',
      \ 'r'  : 'PROMPT',
      \ 'rm' : 'MORE',
      \ 'r?' : 'CONFIRM',
      \ '!'  : 'SHELL',
      \ 't'  : 'TERMINAL'
      \}

"-- Building the statusline

set statusline=                                  " Empty statusline

" ------------------------------ Left-hand side ------------------------------

set statusline+=%2*                              " set bold (User2)

" Current mode, followed by U+2502 (BOX DRAWINGS LIGHT VERTICAL)
set statusline+=%(\ %{(g:currentmode[mode()])}%*\ │\ %)

" Buffer number, don't show it for help files, followed by U+2502 (BOX DRAWINGS LIGHT VERTICAL)
set statusline+=%(%{'help'!=&filetype?bufnr('%'):''}\ │\ %)
set statusline+=%<                               " Where to truncate line
set statusline+=%(%{GitStats()}%)                " How many changes
set statusline+=%(%{GitInfo()}\ │\ %)            " git branch, followed by U+2502 (BOX DRAWINGS LIGHT VERTICAL)
set statusline+=%{Fileprefix()}                  " Path to the file in the buffer, as typed or relative to current directory
set statusline+=%2*                              " set bold (User2)
set statusline+=%t                               " filename
set statusline+=%{&modified?'\ +':''}
set statusline+=%{&readonly?'\ ':''}            " lock-symbol is U+E0A2 (in private use area)
set statusline+=%=                               " Separation point between left and right groups.

" ------------------------------ Right-hand side -----------------------------

set statusline+=\ %1*                            " Switch to color User1
set statusline+=\ %{''!=#&filetype?&filetype:'none'}

" If filetype encoding is utf-8 and file format is unix, don't show this as it
" is the normal state. Only show this info if it is something unusual.
" Attention: first pipe-like charachter is NOT a pipe char but U+2502 (BOX DRAWINGS LIGHT VERTICAL)
set statusline+=%(\ │%{(&bomb\|\|'^$\|utf-8'!~#&fileencoding?'\ '.&fileencoding.(&bomb?'-bom':''):'')
      \.('unix'!=#&fileformat?'\ '.&fileformat:'')}%)

set statusline+=\ %*                             " reset color to colorscheme StatusLine
set statusline+=\ ｃ%2v\ ∙                       " Virtual column number, c is U+FF43 (FULLWIDTH LATIN SMALL LETTER C)
set statusline+=\ %3p%%\                         " Percentage through file in lines as in |CTRL-G|

" Logic for customizing the User1 highlight group is the following
" - fg = StatusLine fg (if StatusLine colors are reverse)
" - bg = StatusLineNC bg (if StatusLineNC colors are reverse)
hi User1  ctermfg=8     ctermbg=7                 guifg=#909090  guibg=#444444
hi User2  ctermfg=NONE  ctermbg=7   cterm=bold    guifg=NONE     guibg=#909090   gui=bold
" Todo: Set background color to red for the + sign?
hi User3  ctermfg=NONE  ctermbg=1   cterm=bold    guifg=NONE     guibg=#d14548   gui=bold

"- File formats autocommands
augroup FileFormats
  autocmd!

  " Git commit messages
  "   force the cursor onto a new line after 72 characters
  autocmd Filetype gitcommit setlocal spell textwidth=72
  "   colour the 73rd column
  autocmd FileType gitcommit set colorcolumn=+1
  "   also colour the 51st column (for titles)
  autocmd FileType gitcommit set colorcolumn+=51

  " Markdown
  "   map *.md files so that syntax is recognized as markdown
  autocmd Bufread,BufNewFile,BufReadPost *.md set filetype=markdown
  "   Word wrap without line breaks for markdown
  autocmd Filetype markdown setlocal wrap linebreak list textwidth=0 wrapmargin=0

  " JSON
  "   Make json files human readable
  autocmd BufRead,BufNewFile *.json set filetype=json
  autocmd FileType json setlocal equalprg=json_reformat

  " Objective-C
  "   map *.h & *.m files so syntax is recognized as objc
  autocmd BufNewFile,BufRead *.m,*.h set ft=objc

  " Update GitStats
  autocmd User GitGutter call GitStats()

  " Reload changes to vimrc
  " some test for folding
  autocmd bufwritepost vimrc source $MYVIMRC
augroup END



"- Plugin settings

"  gitgutter
let g:gitgutter_override_sign_column_highlight=0
let g:gitgutter_sign_column_always=1
let g:gitgutter_sign_modified_removed='±'

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"

" Gitv
let g:Gitv_OpenHorizontal=1

" command-t
if &term =~# 'screen' || &term =~# 'tmux' || &term =~# 'xterm'
  let g:CommandTCancelMap=['<ESC>', '<C-c>']
endif

let g:CommandTFileScanner = 'git'
"- Commands

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

" Trim trailing whitespace
function! TrimWhitespace()
  let l:save = winsaveview()
  %s/\s\+$//e
  call winrestview(l:save)
endfun

command! TrimWhitespace call TrimWhitespace()

"- Key-mappings

" Space is easier than backslash
let g:mapleader = "\<Space>"

" Escape is hard to reach
inoremap jj <esc>

" Toggle set list
nmap <leader>l :set list!<CR>

" Toggle folds
nnoremap <silent> <leader><Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <leader><Space> zf

" open .vimrc in a new tab
nmap <leader>v :tabedit $MYVIMRC<CR>

" Toggle wrap
nmap <leader>w :set invwrap<CR>:set wrap?<CR>

" Always be 'very magic'
nnoremap / /\v
vnoremap / /\v

" Search for help with command-t plugin
nmap <silent> <Leader>h <Plug>(CommandTHelp)

" Toggle Undotree
nnoremap <leader>ut :UndotreeToggle<CR>

" Toggle MarkedOpen
nnoremap <leader>mo :MarkedOpen<CR>

" Tip from http://www.catonmat.net/blog/sudo-vim/
" save read-only files
cnoremap sudow w !sudo tee % >/dev/null

" move lines up or down while adjusting indentation
nnoremap <silent> ,<Up>   :<C-u>move-2<CR>==
nnoremap <silent> ,<Down> :<C-u>move+<CR>==
xnoremap <silent> ,<Up>   :move-2<CR>gv=gv
xnoremap <silent> ,<Down> :move'>+<CR>gv=gv

" Testing colorscheme
nmap <leader>hil :so $VIMRUNTIME/syntax/hitest.vim<CR>

" Delete in normal mode switches off highlighting till next search
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

