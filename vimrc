runtime! debian.vim
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


set number
set ruler
set visualbell
set encoding=utf-8

set wrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

set scrolloff=3
set backspace=indent,eol,start

set hidden

set laststatus=2
set showmode
set showcmd

set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

let g:user_emmet_leader_key=',' 
nmap :nt :NERDTreeToggle<cr>

colorscheme onedark
set background=dark

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rust-lang/rust.vim'
Plug 'w0rp/ale'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

