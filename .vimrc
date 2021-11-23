set nocompatible

filetype off

if filereadable(".vimrc.project")
	so .vimrc.project
else

	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'scrooloose/nerdtree'
  Plugin 'bling/vim-airline'
"Plugin 'Valloric/MatchTagAlways'
	call vundle#end()
	
	let NERDTreeShowHidden=1

endif

filetype plugin indent on
syntax on
runtime macros/matchit.vim

set shiftwidth=2
set tabstop=2
set expandtab

set ruler
set number

set secure

set mouse=a
set backspace=2

let g:netrw_browsex_viewer='iceweasel'

set spelllang=de

"""""""" COMMANDS + KEYS """"""""""

command! Config :e ~/.vimrc
command! ReloadConfig so ~/.vimrc

" sudo write
cmap w!! w !sudo tee % > /dev/null

" tag navigation
nmap <C-l> <C-]>
nmap <C-h> <C-t>
nmap <C-j> :tnext<CR>
nmap <C-j> :tprev<CR>


"""""""""" COLORS """""""""""""
"color desert
"hi MatchParen cterm=none ctermbg=blue ctermfg=white

