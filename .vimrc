set ambiwidth=double
set backspace=start,eol,indent
set hlsearch
set iminsert=0
set laststatus=2
set mouse=a
set nocompatible
set nowrap
set number
set ruler
set shiftwidth=4
set showcmd
set tabstop=4
set autoindent
set smartindent

"dein Scripts-----------------------------
if &compatible
	set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('~/.vim/dein'))

" Let dein manage dein
" Required:
call dein#add(expand('~/.vim/dein/repos/github.com/Shougo/dein.vim'))

" Add or remove your plugins here:
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/vimfiler.vim')
call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
call dein#add('Shougo/neomru.vim')
call dein#add('jlanzarotta/bufexplorer')
call dein#add('mattn/calendar-vim')
call dein#add('tpope/vim-fugitive')
call dein#add('rking/ag.vim')
call dein#add('ctrlpvim/ctrlp.vim')

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

syntax on

filetype plugin on

set undofile

" vimfilerをデフォルトに
let g:vimfiler_as_default_explorer = 1

" calendarの設定
" 週始まりを月曜日に
let g:calendar_monday = 1
" 週番号を表示
let g:calendar_weeknm = 1

let g:ctrlp_cmd = 'CtrlPMRUFile'
if executable('ag')
	let g:ctrlp_use_caching=0
	let g:ctrlp_user_command='ag %s -i --nocolor --nogroup -g ""'
endif

if executable('ag')
	let g:unite_source_grep_command = 'ag'
	let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
	let g:unite_source_grep_recursive_opt = ''
endif
