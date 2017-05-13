set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'craigemery/vim-autotag'
Plugin 'tmhedberg/SimpylFold'
Plugin 'majutsushi/tagbar'
Plugin 'vim-latex/vim-latex'
Plugin 'Powerline/powerline',{'rtp': 'powerline/bindings/vim/'}

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
" Plugin 'Buffergator'
Plugin 'vimwiki'	
" Now we can turn our filetype functionality back on
call vundle#end()

filetype plugin indent on

syntax enable
set hlsearch
set incsearch

"" Sobre tabulaciones
" Dar a toda TAB el valor de x espacios
set tabstop=8
" ??????
set softtabstop=0
" Al indentar con >, usar x espacios
set shiftwidth=8
" Tabulaciones como 1 caracter  o espacios (noexpandtab = caracter)
set expandtab
set autoindent

"Tagbar. Enseña las funciones del archivo como un ide
nmap <F8> :TagbarToggle<CR>

" PYTHON
" au BufNewFile *.py
"         \ set tabstop=4
"         \ set softtabstop=4
"         \ set shiftwidth=4
"         \ set expandtab
"         \ set autoindent

" Para powerline:
let g:Powerline_symbols = 'fancy'
let mapleader =","
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set laststatus=2
set ruler
colorscheme solarized
set background=dark
" Si mapeo block mayus a control -> NORMAL
inoremap <C-l> <Esc>

if has("gui_running")
	let s:uname = system("uname")
	if s:uname == "Darwin\n"
		set guifont=Inconsolata\ for\ Powerline:h13
	endif
endif

" Para syntastic
" let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

"Folding
set foldmethod=indent
set foldlevel=99
noremap <space> za
