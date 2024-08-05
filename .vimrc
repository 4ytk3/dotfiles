" setting
set nocompatible              " Vi互換モードを無効にする
syntax on                     " シンタックスハイライトを有効にする
set encoding=utf-8            " 文字コードをutf-8に設定する
set number                    " 行番号を表示する
set tabstop=4                 " タブをスペース4つ分に設定
set shiftwidth=4              " 自動インデントで使用するスペースの数
set expandtab                 " タブの代わりにスペースを使用する
set autoindent                " 新しい行で現在の行のインデントをコピーする
set smartindent               " 新しい行でスマートインデントを有効にする
set hlsearch                  " 検索結果をハイライトする
set incsearch                 " インクリメンタル検索を有効にする
set ignorecase                " 検索時に大文字小文字を無視する
set smartcase                 " 検索パターンに大文字が含まれる場合はignorecaseを無視する
set clipboard=unnamedplus     " システムクリップボードを使用する
set hidden                    " バッファを放棄するときに隠れ状態にする
set cursorline                " 現在の行をハイライトする
set showmatch                 " 対応する括弧をハイライトする
set showcmd                   " コマンドを画面の最下行に表示する 
set wildmenu                  " コマンドライン補完を有効にする
set wildmode=list:longest     " コマンドライン補完モード

set background=dark           " 背景色を暗く設定する
set termguicolors             " 24ビットRGBカラーを有効にする
colorscheme desert            " カラースキームを設定する
set cmdheight=2               " コマンドラインの高さを2行にする
set laststatus=2              " 常にステータスラインを表示する
set ruler                     " カーソル位置の行と列番号を表示する

set mouse=a                   " マウスサポートを有効にする
set splitbelow                " 水平方向の分割を下に設定する
set splitright                " 垂直方向の分割を右に設定する
set wrap                      " 行の折り返しを有効にする
set linebreak                 " 単語の途中で折り返さないようにする
set showbreak=>>>             " 折り返し部分の表示を設定する
set foldmethod=syntax         " シンタックスに基づいて折り畳みを設定する
set foldlevelstart=99         " デフォルトでほとんどの折り畳みを開く

filetype plugin indent on

" plugins
packadd vim-jetpack
call jetpack#begin()
Jetpack 'tani/vim-jetpack', {'opt': 1} "bootstrap
Jetpack 'lambdalisue/fern.vim'
Jetpack 'https://github.com/dense-analysis/ale'
Jetpack 'junegunn/fzf.vim'
Jetpack 'junegunn/fzf', { 'do': {-> fzf#install()} }
Jetpack 'neoclide/coc.nvim', { 'branch': 'release' }
Jetpack 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
Jetpack 'vlime/vlime', { 'rtp': 'vim' }
Jetpack 'dracula/vim', { 'as': 'dracula' }
Jetpack 'github/copilot.vim'
call jetpack#end()
