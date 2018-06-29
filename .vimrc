" .vimrc configuration

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -sfLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
Plug 'altercation/vim-colors-solarized'
Plug 'easymotion/vim-easymotion'
Plug 'fatih/vim-go'
Plug 'henrik/vim-indexed-search'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-signify'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
"Plug 'python-mode/python-mode'
Plug 'rafi/awesome-vim-colorschemes'
"Plug 'scrooloose/nerdtree'
Plug 'szw/vim-maximizer'
Plug 'tomasr/molokai'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-scriptease'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
"Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'

call plug#end()

" source initialization files
runtime! init.d/**.vim
