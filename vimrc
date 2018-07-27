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
Plugin 'ctrlpvim/ctrlp.vim'
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
" Plugin 'vimwiki'	
" Now we can turn our filetype functionality back on
call vundle#end()

filetype plugin indent on

syntax enable
set hlsearch
set incsearch

"" Sobre tabulacione
" Dar a toda TAB el valor de x espacios
set tabstop=4
" ??????
set softtabstop=0
" Al indentar con >, usar x espacios
set shiftwidth=4
" Tabulaciones como 1 caracter  o espacios (noexpandtab = caracter)
set expandtab
set autoindent


"Tagbar. Enseña las funciones del archivo como un ide
nmap <F8> :TagbarToggle<CR>
nmap <F9> :TagbarOpenAutoClose<CR>

" PYTHON
" au Filetype .py
"         nnoremap <buffer> <F10> :exec '!python' shellescape(@%, 1)<cr>
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
set textwidth=100 " breaks lines > 100 char
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
" mostrar siempre la barra de powerline
set laststatus=2
set ruler
colorscheme solarized
set background=dark
" Si mapeo block mayus a control -> NORMAL
inoremap <C-l> <Esc>

if has("gui_running")
	let s:uname = system("uname")
	if s:uname == "Darwin\n"
		set guifont=Inconsolata\ for\ Powerline:h14
	endif
endif

" Para syntastic
" let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

"Folding
set foldmethod=indent
set foldlevel=99
noremap <space> za

"80 characters red colouring
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Spelling error correction. TODO: do only for latex
" search with ]s, correct with z=
" set spell - activates
set spell spelllang=en_gb

" Vim latex
au BufEnter *.tex set autowrite
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_CompileRule_pdf = 'mkdir -p build && cp *.bib build && cd build && bibtex %:r && cd .. && pdflatex -output-directory=build -interaction=nonstopmode -file-line-error-style $* && mv build/$*.pdf .'
" let g:Tex_GotoError = 0
let g:vimtex_view_method = 'skim'
if has('gui_running')
  set grepprg=grep\ -nH\ $*
  filetype indent on
  let g:tex_flavor='latex'
endif
