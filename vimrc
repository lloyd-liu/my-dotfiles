set shell=/bin/bash

set ttyfast
set lazyredraw


let $PATH='/usr/local/bin:' . $PATH

:au FocusLost * :wa "Save on focus lost

" Sessions
let g:session_autoload = 'no'


imap aa <Esc>

" Leader Mappings
" map <Space> <leader>

" Leader
let mapleader = " "

" Reduce timeout after <ESC> is recvd. This is only a good idea on fast links.
set ttimeout
set ttimeoutlen=20
set notimeout


" highlight vertical column of cursor
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline
set cursorline

"key to insert mode with paste using F2 key
map <F2> :set paste<CR>i
" Leave paste mode on exit
au InsertLeave * set nopaste

" Command aliases
cabbrev tp tabprev
cabbrev tn tabnext
cabbrev tf tabfirst
cabbrev tl tablast

set backspace=indent,eol,start
"set backspace=2   " Backspace deletes like most programs in insert mode
set nocompatible  " Use Vim settings, rather then Vi settings
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=500
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set hlsearch      " highlight matches
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands

" Fuzzy finder: ignore stuff that can't be opened, and generated files
let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**"
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

filetype plugin indent on

augroup vimrcEx
  autocmd!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
  "auto reload vim after your cahange it
  au BufWritePost *.vim source $MYVIMRC | AirlineRefresh
  au BufWritePost .vimrc source $MYVIMRC | AirlineRefresh

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile Appraisals set filetype=ruby
  autocmd BufRead,BufNewFile *.md set filetype=markdown

  " Enable spellchecking for Markdown
  autocmd FileType markdown setlocal spell

  " Automatically wrap at 80 characters for Markdown
  autocmd BufRead,BufNewFile *.md setlocal textwidth=80
augroup END

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·


set t_Co=256

:set smartcase
:set ignorecase
:set noantialias

" Color scheme
colorscheme darkblue
" set guifont=Fira\ Code\ 14
set background=dark
set encoding=utf-8

syntax enable
syntax on
" Highlight line number of where cursor currently is
hi CursorLineNr guifg=#050505

" configure syntastic syntax checking to check on open as well as save
 let g:syntastic_check_on_open=1

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  "   " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  "
  "       " Use ag in CtrlP for listing files. Lightning fast and respects
  "       .gitignore
  let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif


" Numbers
set number
set numberwidth=5

" Snippets are activated by Shift+Tab
let g:snippetsEmu_key = "<S-Tab>"
" have jsx highlighting/indenting work in .js files as well
let g:jsx_ext_required = 0

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
set complete=.,w,t
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>


"set the CtrP options
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*
let g:ctrlp_custom_ignore = 'tmp$\|\.git$\|\.hg$\|\.svn$\|.rvm$|.bundle$\|vendor'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=25
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_open_multiple_files = 't'
"let g:ctrlp_follow_symlinks=1
let g:ctrlp_clear_cache_on_exit=0
" Exclude Javascript files in :Rtags via rails.vim due to warnings when parsing
"let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"

"============Key Mapping ============"
"
map <Leader>w :update<CR>
map <Leader>q :qall<CR>
map <Leader>gs :Gstatus<CR>
map <Leader>gc :Gcommit<CR>
map <Leader>gp :Gpush<CR>

" Toggle nerdtree with F10
map <Leader>1 :NERDTreeToggle<CR>
map <F10> :NERDTreeToggle<CR>
map <C-1> :NERDTreeToggle<CR>
" Current file in nerdtree
map <F9> :NERDTreeFind<CR>

"comment line
" nmap <M-><Bslash> <gcc>

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

"###Tab/Windows
"tab/windows
:map <c-v>c <Esc>:tabnew<CR>
:map <c-v>& <Esc>:tabclose<CR>
:map <c-v>[ <Esc>:tabnext<CR>
:map <c-v>] <Esc>:tabprevious<CR>

"###Tabs###
" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

:map <c-v>- <C-w>s
:map <c-v>/ <C-w>v
:map <c-v>x <C-w>c

" Quicker panes movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-v>j <C-w>j
nnoremap <C-v>k <C-w>k
nnoremap <C-v>h <C-w>h
nnoremap <C-v>l <C-w>l

" Easy navigation between splits. Instead of ctrl-w + j. Just ctrl-j
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

":mapclear
nmap <c-t> :CtrlPBufTag<cr>
nmap <c-s-e> :CtrlPMRUFiles<cr>
nmap <c-p> :CtrlP<cr>

"ctrl-a select all
map <C-a> <esc>ggVG<CR>
"
"
" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
