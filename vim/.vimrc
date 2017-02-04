set nocompatible                    " VI iMproved
filetype off                        " for bundles

    " bundle settings
set rtp+=~/.vim/bundle/Vundle.vim   " set runtime path
call vundle#begin()                 " vundle begin

Plugin 'gmarik/Vundle.vim'          " Vundle
Plugin 'The-NERD-tree'              " Nerd tree

call vundle#end()                   " vundle end

syntax on
filetype plugin indent on		    " load specific indent file
                                    " enable plugin indent

colorscheme diablo3

	" UI settings
set number			                " enable line number
set showcmd	                		" show command line
set cursorline			            " highlight current line
set title		        	        " enable title
set titleold=Virregular		        " custom title
set ruler                           " show the location of cursor
set t_Co=256                        " 256 colors in vim

	" indent settings
set autoindent			            " enable autoindent
set cindent		    	            " indent for c language
set smartindent			            " enable smartindent


	" tab settings
set tabstop=4
set softtabstop=4
set expandtab                       " make tabs to be spaces
set shiftwidth=4


    " fold settings
set foldenable                      " enable folding
set foldlevelstart=10               " open most folds by default
set foldnestmax=10                  " 10 nested fold max
" space to open/close folds
nnoremap <space> za
set foldmethod=indent               " fold is based on indent level


set showmatch			    " highlight matching parenthesis
set mouse=a                         " enable mouse
set ignorecase                      " search both upper and lower

set history=1000                    " remember history for 1000 

set wildmenu                        " visual autocomplete
set lazyredraw                      " redraw only when we need to


    " search settings
set incsearch                       " search as characters are entered
set hlsearch                        " highlight searches
