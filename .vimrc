set ambiwidth=double
set backspace=start,eol,indent
set cursorline
set hlsearch
set laststatus=2
set mouse=a
set nocompatible
set nowrap
set number
set ruler
set shiftwidth=4
set showcmd
set tabstop=4

syntax on

filetype plugin on

set undofile

au! BufRead,BufNewFile *.R    setfiletype r

" vimfilerをデフォルトに
let g:vimfiler_as_default_explorer = 1

" calendarの設定
" 週始まりを月曜日に
let g:calendar_monday = 1
" 週番号を表示
let g:calendar_weeknm = 1
