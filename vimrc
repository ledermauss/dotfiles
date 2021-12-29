set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
" set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'Powerline/powerline',{'rtp': 'powerline/bindings/vim/'}

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
" Plugin 'Buffergator'
Plugin 'vimwiki'	

call vundle#end()

" Now we can turn our filetype functionality back on
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
set noexpandtab

" let macvim_skip_colorscheme=1
" Para powerline:
set guifont=Inconsolata\ for\ Powerline:h13
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set laststatus=2
set ruler
colorscheme solarized
set background=dark
" estas dos son para el teclado externo. El segundo caso si tengo block mayus
" mapeado al mayúscula
inoremap jk <Esc>
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
