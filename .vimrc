set nocompatible                    " VI iMproved

colorscheme diablo3


	" UI settings
set number			                " enable line number
set showcmd	                		" show command line
set cursorline			            " highlight current line
set title		        	        " enable title
set titleold=Virregular		        " custom title
set ruler                           " show the location of cursor


	" indent settings
set autoindent			            " enable autoindent
set cindent		    	            " indent for c language
set smartindent			            " enable smartindent


	" tab settings
set tabstop=4
set softtabstop=4
set expandtab 
set shiftwidth=4
set smarttab


    " fold settings
set foldenable                      " enable folding
set foldlevelstart=10               " open most folds by default
set foldnestmax=10                  " 10 nested fold max
set foldmethod=marker               " fold is based on marker level

    " fold key mapping
map <F5> v]}zf<CR>                  " make fold
map <F6> zc<CR>                     " close fold
map <F7> zo<CR>                     " open fold
nnoremap <space> za                 " open all fold
                                    " space key to open/close fold

    " basic settings
set showmatch			            " highlight matching parenthesis
set mouse=a                         " enable mouse

set history=1000                    " remember history for 1000 

set wildmenu                        " visual autocomplete
set lazyredraw                      " redraw only when we need to
set laststatus=2


    " search settings
set incsearch                       " search as characters are entered
set hls                             " highlight searches
set scs                             " smart case search
set ignorecase                      " search both upper and lower


syntax on                           " syntax on
filetype indent on		            " load specific indent file

set nowrap
