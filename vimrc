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
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

"- Plugins to load

" Register vim-plug as a plugin to access its help file
Plug 'junegunn/vim-plug'

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

" Unicode Plugin
Plug 'chrisbra/unicode.vim'

" Syntax checker for many languages
" Plug 'scrooloose/syntastic'

" Control-P
" Plug 'ctrlpvim/ctrlp.vim'

" command-t
" Plug 'wincent/command-t', {
"       \ 'do': 'cd ruby/command-t && make clean && ruby extconf.rb && make'
"       \ }

" terminus
" vim terminal integration, change cursor shape, bracketed paste mode, etc
Plug 'wincent/terminus'

" Loupe
" Enhanced in-file search
Plug 'wincent/loupe'

" ferret
" Enhanced multi-file search
Plug 'wincent/ferret'

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
Plug 'keith/tmux.vim', { 'for': 'tmux' }

" Colorschemes
Plug 'fxn/vim-monochrome'
Plug 'pbrisbin/vim-colors-off'

" matchit lets you jump between begin and end of function with %
packadd! matchit                                 " add built-in matchit plugin

call plug#end()


"- Options
set encoding=utf-8
scriptencoding=utf-8
set timeoutlen=3000                              "tm:    time in ms waiting for a key mapping sequence to complete
set ttimeoutlen=100                              "ttm:   time out on key codes after a tenth of a second
set updatetime=100                               "ut:    time in ms for updating swapfiles (I don't use those, but gitgutter uses it for updating signs)
set history=100                                  "hi:    keep 100 lines of command line history
set showcmd                                      "sc:    display incomplete commands
set hidden                                       "hid:   allow switch to another buffer with unsaved changes in current one
set winwidth=84                                  "       The window width with multiple windows
set mouse=a                                      "       Enable the use of a mouse
set nowrap                                       "       don't wrap lines (mapped leader-w to toggle)
set listchars=tab:▸\                             "       U+25B8, BLACK RIGHT-POINTING SMALL TRIANGLE & space
set listchars+=eol:¬                             "       U+00AC, NOT SIGN
set listchars+=extends:»                         "       U+00BB, RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
set listchars+=precedes:«                        "       U+00AB, LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
set listchars+=trail:●                           "       U+25CF, BLACK CIRCLE
set listchars+=nbsp:※                            "       U+203B, REFERENCE MARK
set fillchars=vert:┃                             "       U+2503, BOX DRAWINGS HEAVY VERTICAL
set fillchars+=fold:·                            "       U+00B7, MIDDLE DOT
set backspace=indent,eol,start                   "       Behave like a normal text editor
set noshowmode                                   "nosmd: Status-line shows the mode we're in
set breakindent                                  "bri:   wrapped line will continue visually indented
set breakindentopt=shift:5                       "briopt: indent by 5 spaces
set nobackup                                     "       Don't write backup files
set nowritebackup
set noswapfile
" set cmdwinheight=20                              "       Height of command window
set nrformats-=octal                             "nf:    Don't assume numbers starting with zero are octal
set scrolloff=2                                  "so:    Min. # of lines visible at top or bottom
set nojoinspaces                                 "nojs:  Don't autoinsert two spaces after '.', '?', '!' for join command
set clipboard=unnamed                            "       copy to the system clipboard
colorscheme dark

"- Folding
"   folding is mostly set up per filetype in ~/.vim/after/ftplugin, but
"   here are some settings for filestypes that have no defined folding method
"   foldtext is defined in ~/.vim/autoload/foldingtext.vim
set foldnestmax=10                               "fdn:   10 levels (for indent & syntax methods)
set foldmethod=indent                            "fm:    Not smart, but fast, AND no ugly markers
set foldtext=foldingtext#foldtext()              "       In autoload directory

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

"- Tabs & Spaces
set tabstop=2                                    "ts:    number of spaces that a tab renders as
set shiftwidth=2                                 "sw:    number of spaces to use for autoindent
set softtabstop=2                                "sts:   number of spaces that tabs insert
set smarttab                                     "sta:   helps with backspacing because of expandtab
set expandtab                                    "et:    use spaces instead of tab characters

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
  if &filetype == 'help'                         " Do not show in help files aka collapse
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
  if &filetype == 'help'                         " Do not show in help files aka collapse
    return ''
  elseif l:basename == '' || l:basename == '.'   " If empty or current working directory don't show path
    return ''
  else
    " Make sure we show $HOME as ~
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

"--- Count how many modified buffers we have

function! CountModifiedBuffer()
  return len(filter(getbufinfo(), 'v:val.changed == 1'))
endfunction

" + if only current modified, +3 if 3 modified including current buffer.
" 3 if 3 modified and current not, '' if none modified.
function! BuffersModified()
  let l:cnt = CountModifiedBuffer()
  " Buffers changed indicated by U+1D6C5 (MATHEMATICAL BOLD SMALL DELTA)
  return l:cnt == 0 ? '' : ( &modified ? ' 𝛅 +'. (l:cnt>1?l:cnt:'  ') .'' : ' 𝛅 '.l:cnt.'')
endfunction


"-- Building the statusline

set statusline=                                  " Empty statusline

" ------------------------------ Left-hand side ------------------------------

set statusline+=%1*                              " set bold (User1)

" space, Current mode, reset bold, space, U+2503 (BOX DRAWINGS HEAVY VERTICAL), space
set statusline+=%(\ %{(g:currentmode[mode()])}%*\ ┃\ %)
set statusline+=%<                               " Where to truncate line if too long
set statusline+=%(%{GitStats()}%)                " How many changes
set statusline+=%(%{GitInfo()}\ ┃\ %)            " git branch, U+2503 (BOX DRAWINGS HEAVY VERTICAL), space
set statusline+=%{Fileprefix()}                  " Path to the file in the buffer, as typed or relative to current directory
set statusline+=%1*                              " set bold (User1)
set statusline+=%t\                              " filename followed by space

" Number of modified buffers, hide it in the help files.
set statusline+=%{&filetype!='help'?BuffersModified():''}
set statusline+=\ %*                             " reset color to colorscheme StatusLine
set statusline+=%{&readonly?'\ ':''}            " space, U+E0A2 (POWERLINE LOCK-SYMBOL: in private use area)
set statusline+=%=                               " Separation point between left and right groups.

" ------------------------------ Right-hand side -----------------------------

" If filetype is unknown or not set
set statusline+=\ %{''!=#&filetype?&filetype:'none'}

" If filetype encoding is utf-8 and file format is unix, don't show this as it
" is the normal state. Only show this info if it is something unusual.
" Attention: first pipe-like charachter (after `%(\ `)is NOT a pipe char but U+2503 (BOX DRAWINGS HEAVY VERTICAL)
set statusline+=%(\ ┃%{(&bomb\|\|'^$\|utf-8'!~#&fileencoding?'\ '
      \.&fileencoding.(&bomb?'-bom':''):'')
      \.('unix'!=#&fileformat?'\ '.&fileformat:'')}%)

set statusline+=\ %*                             " reset color to colorscheme StatusLine
" Separator is U+2503 (BOX DRAWINGS HEAVY VERTICAL) followed by
" Virtual column number, 𝗖 is U+1D5D6 (MATHEMATICAL SANS-SERIF BOLD CAPITAL C)
" separator between columns & percentage is U+25C6 (BLACK DIAMOND)
set statusline+=\ ┃\ 𝗖\ %3v\ ◆
set statusline+=\ %3p%%\                         " Percentage through file in lines as in |CTRL-G|

" - highlight User1 = bold text
highlight User1  ctermfg=235  ctermbg=249  cterm=bold    guifg=#262626     guibg=#b2b2b2   gui=bold

"- File formats autocommands
augroup FileFormats
  autocmd!

  " Git commit messages
  "   force the cursor onto a new line after 72 characters
  autocmd FileType gitcommit setlocal spell textwidth=72

  " Markdown
  "   map *.md files so that syntax is recognized as markdown
  autocmd Bufread,BufNewFile,BufReadPost *.md set filetype=markdown
  "   Word wrap without line breaks for markdown
  autocmd FileType markdown setlocal wrap linebreak list textwidth=0 wrapmargin=0

  " JSON
  "   Make json files human readable
  autocmd BufRead,BufNewFile *.json set filetype=json
  autocmd FileType json setlocal equalprg=json_reformat

  " Objective-C
  "   map *.h & *.m files so syntax is recognized as objc
  autocmd BufNewFile,BufRead *.m,*.h set filetype=objc

  " Update GitStats
  autocmd User GitGutter call GitStats()

  " Auto-load changes to vimrc
  autocmd BufWritePost $MYVIMRC nested source $MYVIMRC
augroup END

"- Plugin settings

"  gitgutter
if exists('&signcolumn')  " Vim > 7.4.2201
  set signcolumn=yes
endif
let g:gitgutter_override_sign_column_highlight=0
let g:gitgutter_sign_modified_removed='±'

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"

" Gitv
let g:Gitv_OpenHorizontal=1

"- Functions & commands

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
" ========================
function! TrimWhitespace()
  " trailing whitespaces have meaning in markdown so don't try there
  if &filetype!='markdown'
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
  endif
endfunction

command! TrimWhitespace call TrimWhitespace()

" Change colors to my preference
" ==============================
function! MyColours() abort
  " Iterm & Terminal.app can both display italics
  " (after patching terminfo database)
  " ensure comments are in italic, even if not set in colorscheme
  highlight Comment cterm=italic gui=italic
endfunction

augroup MyColors
  autocmd!
  autocmd Colorscheme * call MyColours()
augroup END

" Show the current highlighting settings
" ======================================
function! HighlightTest()
  normal :source $VIMRUNTIME/syntax/hitest.vim
endfunction

command! HighlightTest call HighlightTest()

" Reverse order of lines in file or visually selected range.
" ==========================================================
"  from: https://vi.stackexchange.com/a/2107/11066
command! -bar -range=% Reverse <line1>,<line2>global/^/m<line1>-1

"- Key-mappings

" Space is easier than backslash
let g:mapleader = "\<Space>"

" Escape is hard to reach
inoremap jj <esc>

" Toggle set list
nmap <leader>l :set list!<CR>

" Move between splits
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" make ga mapping use the UnicodeGA command
nmap ga <Plug>(UnicodeGA)

" Toggle folds
nnoremap <silent> <leader><Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <leader><Space> zf

" Fold all except current line and keep current cursor position
nnoremap <leader>zv :normal mazMzv`a<CR>

" open .vimrc in a new tab
nmap <leader>v :tabedit $MYVIMRC<CR>

" Toggle wrap
nmap <leader>w :set invwrap<CR>:set wrap?<CR>

" indent whole file and return to my current cursor location
nnoremap g= mmgg=G`m

" Always be 'very magic' (now handled by loupe plugin)
"nnoremap / /\v
"vnoremap / /\v

" Underline current line
nnoremap <leader>u YpVr

" Search for help with command-t plugin
" nmap <silent> <Leader>h <Plug>(CommandTHelp)

" Toggle Undotree
nnoremap <leader>ut :UndotreeToggle<CR>

" Open markdown files in Marked to preview
nnoremap <leader>mo :MarkedOpen<CR>

" Tip from https://jovicailic.org/2015/05/saving-read-only-files-in-vim-sudo-trick/ 
" save read-only files
cmap w!! w !sudo tee % >/dev/null

" move lines up or down while adjusting indentation
nnoremap <silent> ,<Up>   :<C-u>move-2<CR>==
nnoremap <silent> ,<Down> :<C-u>move+<CR>==
xnoremap <silent> ,<Up>   :move-2<CR>gv=gv
xnoremap <silent> ,<Down> :move'>+<CR>gv=gv

" Delete in normal mode switches off highlighting till next search
" Now handled by loupe plugin
" nmap <silent> <BS> :nohlsearch<CR>

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

"- Modeline settings
"  To keep vim from applying the indent foldmethod for this file we use a
"  modeline & we get the nicely formatted folds we set up in
"  ~/.vim/after/ftplugin/vim/folding
" vim: foldmethod=expr
