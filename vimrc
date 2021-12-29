set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
" set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sheerun/vim-polyglot'
Plugin 'joshdick/onedark.vim'
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

syntax on
set hlsearch
set incsearch
"ignore case, unless there are varying cases inside the search pattern
set ignorecase
set smartcase

"both relative number and current line
set number relativenumber

"" Sobre tabulaciones
" Dar a toda TAB el valor de x espacios
set tabstop=4
" Al indentar con >, usar x espacios
set shiftwidth=4
" Tabulaciones como 1 caracter  o espacios (noexpandtab = caracter)
set noexpandtab

" Display status bar (powerline)
set laststatus=2
let g:Powerline_symbols = 'fancy'


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

"terminal colors
colorscheme onedark
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
