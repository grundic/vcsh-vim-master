" .vimrc configuration

set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" Custom bundles
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'tomasr/molokai.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround.git'
Plugin 'klen/python-mode.git'


filetype plugin indent on

" source initialization files
runtime! init/**.vim
