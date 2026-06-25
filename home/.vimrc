" Enable syntax highlighting
syntax on
" Detect file types and apply correct indentation
filetype plugin indent on

" --- Quality of Life ---
set number                  " Show line numbers
set relativenumber          " Use relative line numbers
set scrolloff=8             " Keep context lines visible
set mouse=a                 " Enable mouse support
" --- Searching ---
set hlsearch                " Highlight search matches
set incsearch               " Highlight matches as you type
set ignorecase              " Case-insensitive search...
set smartcase               " ...unless a capital letter is typed

" --- Indentation ---
set tabstop=4               " Width of a tab character
set shiftwidth=4            " Width of auto-indentation
set expandtab               " Turn tabs into spaces
set autoindent              " Copy indent from current line when starting a new one

" --- System ---
set noswapfile              " Don't create swap files
set undofile                " Save undo history across sessions
