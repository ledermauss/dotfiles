set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
" set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
call vundle#begin()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'craigemery/vim-autotag'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tmhedberg/SimpylFold'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
" Plugin 'Powerline/powerline',{'rtp': 'powerline/bindings/vim/'}

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
nmap <F9> :TagbarOpenAutoClose<CR>

" PYTHON
" au BufNewFile *.py
"         \ set tabstop=4
"         \ set softtabstop=4
"         \ set shiftwidth=4
"         \ set expandtab
"         \ set autoindent

" Para powerline:
" set guifont=Inconsolata\ for\ Powerline:h14
" let g:Powerline_symbols = 'fancy'
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

"Folding
set foldmethod=indent
set foldlevel=99
noremap <space> za

