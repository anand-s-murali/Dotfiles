"------ Vundle stuff; don't touch unless you know what you're doing! ------"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" -- Color schemes -- "
"Plugin 'altercation/vim-colors-solarized'
Plugin 'arcticicestudio/nord-vim'

" -- End color schemes -- "
" Vim-Go "
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"------ Bindings, Color schemes, and other settings for editing ------"

"---- Solarized ----"
"set background=light
"colorscheme solarized
"-- Uncomment the above if using nord ----"

"---- Nord ----"
colorscheme nord
"---- Uncomment above if using solarized ----"

syntax enable
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

set smarttab
set number
set encoding=utf-8
set backspace=indent,eol,start " Needed to allow backspaces ¯\_(ツ)_/¯ "
set spell spelllang=en_us "used for spell check. Find a mispelled word by typing ]s and then z= for correction :)"
" if at any point you want to turn off spell check, just type :set nospell"`

"---- Go support ----"
filetype plugin indent off
set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

" For some reason this prevents vim from reusing comments on the next line
"set paste

" Vertical bar so source doesn't exceed 80 chars per line
set colorcolumn=80
