let s:dein_dir = expand('~/.vim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &compatible
  set nocompatible
endif

if !isdirectory(s:dein_repo_dir)
  execute '!git clone git@github.com:Shougo/dein.vim.git' s:dein_repo_dir
endif

execute 'set runtimepath^=' . s:dein_repo_dir

call dein#begin(s:dein_dir)

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/neocomplete.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('jistr/vim-nerdtree-tabs')
call dein#add('Xuyuanp/nerdtree-git-plugin')
call dein#add('airblade/vim-gitgutter')
call dein#add('vim-airline/vim-airline')
call dein#add('rhysd/accelerated-jk')
call dein#add('edkolev/tmuxline.vim')
call dein#add('Townk/vim-autoclose')

call dein#end()

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on

let NERDTreeShowHidden = 1

if argc() == 0
	  let g:nerdtree_tabs_open_on_console_startup = 1
end

" Powerline系フォントを利用する
let g:airline_powerline_fonts = 1

" j/kによる移動を速くする
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

" カラースキーマを生成する
":TmuxlineSnapshot! ~/.dotfiles/tmuxline.conf 

" 改行時に自動でインデントを行なう
set autoindent

" OSとクリップボードを共有する
set clipboard=autoselect

" 未保存ファイルの終了時に保存確認を行なう
set confirm

" カーソル行を強調表示する
set cursorline

" 文字コードを設定する
set encoding=utf8
set fileencodings=utf-8

" ステータスバーを常に表示する
set laststatus=2

" 不可視文字を表示する
" set list

" マウスを有効にする
set mouse=a

" ファイル上書き時にバックアップをとらない
set nobackup
set nowritebackup

" スワップファイルを作成しない
set noswapfile

" 行番号を表示する
set number

" ルーラーを表示する
set ruler

" 対応するカッコを強調表示する
set showmatch

" タブバーを常に表示する
set showtabline=2

" 改行入力行の末尾にあわせてインデントを増減する
set smartindent

" ビープを無効にする
set visualbell t_vb=

" コマンドラインモードでの補完を有効にする
set wildmenu

" 自動補完機能を有効にする
let g:neocomplete#enable_at_startup = 1

set number

syntax on
