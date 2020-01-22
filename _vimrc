" Plugin
execute pathogen#infect()

" Settings
syntax on
filetype plugin indent on

" NERDTree
let NERDTreeShowHidden=1
map <silent> <C-n> :NERDTreeToggle<CR>
" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1


" Latex & Vim
let g:tex_flavor='latex'
let g:vimtex_view_method='mupdf'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
" enter the current millenium
set nocompatible

" General set stuff
set relativenumber
set number
set smarttab
set splitbelow
set splitright
set clipboard=unnamed
set laststatus=2
set scrolloff=5
set nohidden

" Fuzzy file search w/o plugin:
"
" Search down into subfolders
" Provides tab-completion for file-related tasks
set path+=**
set wildmenu

" set textwidth=80
" set colorcolumn=+1
set noundofile        " as well as undo files
set noerrorbells visualbell t_vb=
let g:netrw_liststyle=3
" set colorcolumn=80
set guifont=Powerline\ Consolas:h10
set encoding=utf-8
let g:airline_powerline_fonts=1

" ConEmu conflict with Vim check out
" Github issue https://github.com/Maximus5/ConEmu/issues/641
inoremap <Char-0x07F> <BS>
nnoremap <Char-0x07F> <BS>

"nnoremap <S-:> <;>
" Specify .md files as markdown
au BufRead,BufNewFile *.md setlocal ft=markdown

" Configure tabstop softtabstop and expand or not by filetype
if has("autocmd")
  filetype on

  autocmd FileType vim setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType elm setlocal ts=4 sts=4 sw=4 expandtab

  " These highlight lines that extend past 80 chars
  " autocmd BufEnter * highlight OverLength ctermbg=red guibg=#592929
  " autocmd BufEnter * match OverLength /\%>80v.\+/

  " Turn off bells
  autocmd GUIEnter * set visualbell t_vb=

endif

let python_highlight_all=1
syntax on

" Leader customization
let mapleader=" "
" Read/write
map <Leader>s :w!<cr>
map <Leader>q :x!<cr>
" Easy access to vimrc
map <Leader>vimrc :e $VIM/_vimrc<cr>:on<cr>
" Switch between buffers
map <Leader><Leader> :w!<cr>:bn!<cr>

" Close all windows
map <Leader>o :on<cr>
"Switch between windows
:set showtabline=1
:set showtabline&

map <Leader>n <c-w>w

map <Leader>d yy<Esc>p0

" Line indentation, makes return work normally
nnoremap <return> O<Esc>

" Run program in python
map <C-b> :w!<cr>:!python %<cr>

" copy and paste to/from vIM and the clipboard
nnoremap <Leader>y +y
vnoremap <Leader>y +y
nnoremap <Leader>p +P
vnoremap <Leader>p +P
nnoremap ; : 

" Normal backspace functionality
set backspace=indent,eol,start


" Move lines with Alt-j
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"Dot visual mode
vnoremap . :norm.<CR>
inoremap jk <ESC>

" access system clipboard
set clipboard=unnamed

" line numbers
set number

" show the status line all the time
set laststatus=2

" toggle invisible characters
set invlist
set list
set listchars=tab:¦\ ,eol:¬,trail:¿,extends:¿,precedes:¿


" AESTHETICS: 
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 14
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h16
  elseif has("gui_win32")
    set guifont=Consolas:h13:cANSI
  endif
endif

syntax enable
"set background=dark
"colorscheme solarized
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard' 
