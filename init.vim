set number      " enable line numbers
syntax on       " enable syntax highlighting
set autoindent  " enable autoindentation of code
set showcmd     " show last command in bottom bar
set showmatch   " highlight matching parentheses
set shiftwidth=4 " set shift width to 4 spaces
set tabstop=4   " set tab width to 4 spaces
set expandtab   " use space characters instead of tabs

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" search options
set hlsearch    " highlight matches
set incsearch   " incrementally highlight matching characters as you type while searching
set ignorecase  " ignore capital letters during search
set smartcase   " override ignorecase if searching specifically for capital letters
