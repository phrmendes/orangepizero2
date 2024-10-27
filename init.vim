" Enable line numbers
set number

" Enable relative line numbers (easier navigation with line numbers)
set relativenumber

" Use spaces instead of tabs and set default indentation
set tabstop=4    " Number of spaces per tab
set shiftwidth=4 " Number of spaces for autoindent
set expandtab    " Use spaces instead of tabs
set smartindent  " Enable smart indentation

" Enable syntax highlighting
syntax on

" Set a decent color scheme for terminal use
set background=dark
colorscheme default

" Show matching parentheses
set showmatch
set matchtime=2 " Highlight matching bracket for 2 tenths of a second

" Better search settings
set ignorecase " Case insensitive search...
set smartcase  " ...unless you type a capital letter
set incsearch  " Incremental search
set hlsearch   " Highlight all search results

" Enable persistent undo so you can undo changes even after closing files
set undofile
set undodir=~/.vim/undodir
if !isdirectory($HOME . '/.vim/undodir')
    call mkdir($HOME . '/.vim/undodir', "p")
endif

" Enable mouse support in all modes (if the terminal supports it)
set mouse=a

" Minimal status line for simplicity
set laststatus=2
set ruler        " Show line and column number in the status line

" Show command feedback
set showcmd

" Disable error bells
set noerrorbells
set visualbell

" Use system clipboard (useful if SSH supports it)
if has('clipboard')
    set clipboard=unnamedplus
endif

" Enable basic filetype plugins and indentation rules
filetype plugin indent on

" Keymaps
nmap <space>w :w<CR>
nmap <space>q :q<CR>
nmap <space>e :Explore<CR>
