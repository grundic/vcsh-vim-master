" GUI Options
  set encoding=utf-8
  set nocompatible                " be iMproved
  set guifont=Inconsolata:h24
  set guioptions-=T               " Remove GUI toolbar
  set guioptions-=e               " Use text tab bar, not GUI
  set guioptions-=rL              " Remove scrollbars
  set notimeout                   " No command timeout
  set showcmd                     " Show typed command prefixes while waiting for operator

" General Options
  set backspace=indent,eol,start " Let backspace work over anything.
  set clipboard=                 " use system clipboard
  set ffs=unix,mac               " support these in this order
  filetype on                    " detect the type of file
  filetype plugin on             " load filetype plugins
  filetype plugin indent on      " turns on "detection", "plugin" and "indent" at once.
  set viminfo+=!                 " make sure it can save viminfo
  set wic                        " case-insensitive filename completion

  set list                       " Show whitespace
  set showbreak=↪\
  set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨

  let mapleader=","

" Visual Cues
  syntax on                                          " turn on syntax highligtning
  let g:gruvbox_guisp_fallback = "bg"                " https://github.com/morhetz/gruvbox/issues/175
  let g:gruvbox_contrast_dark = "soft"
  set t_Co=256
  set background=dark                                "
  silent! colorscheme gruvbox                        " colorscheme

  set showmatch                                      " show matching brackets
  set hlsearch                                       " highlight searched for phrases
  set incsearch                                      " highlight as you type you search phrase
  set history=1024                                   " History size
  set so=5                                           " Keep x lines (top/bottom) for scope
  set novisualbell                                   " don't blink
  set noerrorbells                                   " no noises

  set statusline=[%n\|%{winnr()}]                 " buffer number & window index
  set statusline+=\ %<%.99f                       " tail of the filename
  set statusline+=\ %m                            " modified flag
  set statusline+=[
  set statusline+=%{&ff},                         " file format
  set statusline+=%R                              " read only flag
  set statusline+=%Y                              " filetype
  set statusline+=]
  set statusline+=%=                              " left/right separator
  set statusline+=%-16(%{fugitive#statusline()}%) " git branch
  set statusline+=%l/%LL                          " cursor line/total lines
  set statusline+=\ %c%VC                         " cursor column
  set statusline+=\ %P                            " percent through file

  set laststatus=2                " always show the status line
  set hidden                      " Allow hidden, unsaved buffers
  set splitright                  " Add new windows towards the right
  set splitbelow                  " ... and bottom

" Text Formatting/Layout
  set fo=tcrqn      " See Help (complex)
  set ai            " autoindent
  set si            " smartindent
  set smarttab      " Use shiftwidth to tab at line beginning
  set cindent       " do c-style indenting
  set tabstop=2     " tab spacing (settings below are just to unify it)
  set softtabstop=2 " unify
  set shiftwidth=2  " unify
  set expandtab     " Give me spaces or give me death
  set nowrap        " do not wrap lines
  set nrformats=    " treat all numerals as decimal

" Folding
  set nofoldenable      " Turn off folding
  set foldmethod=indent " Make folding indent sensitive
  set foldlevel=1
  set foldopen-=search  " don't open folds when you search into them
  set foldopen-=undo    " don't open folds when you undo stuff

" Files/Backups
  set autowrite                     " Save the file when shell/cmd are run
  set autoread
  set wildmenu
  set wildmode=full                 " zsh style command mode completion
  set autoread                      " No prompt for file changes outside Vim
  set swapfile                      " Keep swapfiles
  set wildignore+=tags              " Ignore tags when globbing.
  set wildignore+=tmp/**            " ...Also tmp files.
  set wildignore+=public/uploads/** " ...Also uploads.
  set wildignore+=public/images/**  " ...Also images.
  set wildignore+=vendor/**         " ...Also vendor.
  set isk+=_,$,@,%,#,-              " none of these should be word dividers, so make them not be
  set wildignore+=.git,*.o,tmp/**,vendor/rails/**
  set directory=~/.vim-tmp,~/tmp,/var/tmp,/tmp
  set backupdir=~/.vim-tmp,~/tmp,/var/tmp,/tmp

" Vim UI
  set lsp=0                            " space it out a little more (easier to read)
  set ruler                            " Always show current positions along the bottom
  set cmdheight=2                      " the command bar is 2 high
  set number relativenumber        " turn on line hybrid numbers
  set numberwidth=3
  set cpoptions+=n                     " show wrapped lines in the line number gutter
                                       " Hitting ctrl-n ctrl-n whill toggle the display of numbers
  set lz                               " do not redraw while running macros (much faster) (LazyRedraw)
  set hid                              " you can change buffer without saving
  set whichwrap+=<,>,h,l               " backspace and cursor keys wrap to
  "set mouse=a                          " use mouse everywhere
  set mouse=nicr                       " set mouse scrolling only
  set shortmess=atI                    " shortens messages to avoid 'press a key' prompt
  set report=0                         " tell us when anything is changed via :...
                                       " make the splitters between windows be blank
  set fillchars=vert:\ ,stl:\ ,stlnc:\
  set scrolloff=3                      " Scroll when the cursor is 3 lines from edge
  set cursorline                       " Highlight current line
  set laststatus=2                     " Always show statusline

" Write all writeable buffers when changing buffers or losing focus.
  set autowriteall                " Save when doing various buffer-switching things.
  autocmd BufLeave,FocusLost * silent! wall  " Save anytime we leave a buffer or MacVim loses focus.

" Turn off ri tooltips that don't work with Ruby 1.9 yet
" http://code.google.com/p/macvim/issues/detail?id=342
  if has("gui_running")
    set noballooneval
  endif

" Case insensitive search by default
  set ignorecase
  set smartcase

" Use shell in vim (sources rvm)
  set shell=/bin/sh

  " make background transparent. This must be after syntax and filetype!
  "hi Normal guibg=NONE ctermbg=NONE

" Key mappings
  " Avoid the escape key
  :imap kj <Esc>

  " Remove search highlighting
  map <silent> <Leader>l :noh<CR>

  " Configure paste toggling
  nnoremap <F2> :set invpaste paste?<CR>
  set pastetoggle=<F2>
  set showmode

  " Window resizing using arrows
  nnoremap <left>   <c-w>>
  nnoremap <right>  <c-w><
  nnoremap <up>     <c-w>+
  nnoremap <down>   <c-w>-

  "Better window navigation
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-h> <C-w>h
  nnoremap <C-l> <C-w>l

  " Move tabs left/right
  noremap t> :tabmove+<cr>
  noremap t< :tabmove-<cr>

  " Turn of relative numbers for inactive window and insert mode
  :augroup numbertoggle
  :  autocmd!
  :  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  :  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
  :augroup END

  " Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

  " Highlight trailing spaces
  highlight ExtraWhitespace ctermbg=red guibg=red
  match ExtraWhitespace /\s\+$/
  autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
  autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
  autocmd InsertLeave * match ExtraWhitespace /\s\+$/
  autocmd BufWinLeave * call clearmatches()


au BufRead,BufNewFile *.g set filetype=antlr3
au BufRead,BufNewFile *.g4 set filetype=antlr4

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" Enable spelling by default
if has("spell")
  " turn spelling on by default
  set nospell

  " toggle spelling with F4 key
  map <F5> :set spell!<CR><Bar>:echo "Spell Check: " . strpart("OffOn", 3 * &spell, 3)<CR>

  " they were using white on white
  highlight PmenuSel ctermfg=black ctermbg=lightgray

  " limit it to just the top 10 items
  set sps=best,10
endif

function! FzfSpellSink(word)
  exe 'normal! "_ciw'.a:word
endfunction
function! FzfSpell()
  let suggestions = spellsuggest(expand("<cword>"))
  return fzf#run({'source': suggestions, 'sink': function("FzfSpellSink"), 'down': 10 })
endfunction
nnoremap z= :call FzfSpell()<CR>
