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


    " fold settings
set foldenable                      " enable folding
set foldlevelstart=10               " open most folds by default
set foldnestmax=10                  " 10 nested fold max
" space to open/close folds
nnoremap <space> za
set foldmethod=indent               " fold is based on indent level


set showmatch			            " highlight matching parenthesis
set mouse=a                         " enable mouse
set ignorecase                      " search both upper and lower

set history=1000                    " remember history for 1000 

set wildmenu                        " visual autocomplete
set lazyredraw                      " redraw only when we need to


    " search settings
set incsearch                       " search as characters are entered
set hlsearch                        " highlight searches



syntax on
filetype indent on		            " load specific indent file