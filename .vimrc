let s:dein_dir = expand('~/.vim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &compatible
	set nocompatible
endif

execute 'set runtimepath^=' . s:dein_repo_dir

call dein#begin(s:dein_dir)

call dein#add('Shougo/dein.vim')

call dein#add('Shougo/neocomplete.vim', { 'on_i': 1 })

call dein#add('tomasr/molokai')

call dein#end()

if dein#check_install()
	call dein#install()
endif

syntax on
filetype on
filetype plugin on
filetype indent on

colorscheme molokai

set nobackup
set noswapfile

set clipboard=unnamed,autoselect

set t_Co=256
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,utf-8,ucs-2,cp932,sjis
set autoindent
set number
set incsearch
set wrapscan
set ignorecase
set showmatch
set showmode
set title
set ruler
set tabstop=4

set laststatus=2
set statusline=%F%m%r%h%w\%=[TYPE=%Y]\[FORMAT=%{&ff}]\[ENC=%{&fileencoding}]\[LOW=%l/%L]
"set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

"key
" スペースドットで.vimrcを開く
nnoremap <Space>. :<C-u>tabedit $MYVIMRC<CR>
