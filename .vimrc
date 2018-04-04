" 设置状态栏
set laststatus=2
set statusline=%F%m%r%h%w\ [%{&ff}\ %{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ [ASC=\%03.3b]\ [HEX=\%02.2B]\ [%04l,%04v][%p%%]\ [LEN=%L]

" 设置搜索高亮
set hlsearch

" 显示行号
set nu

" 空格显示为-
set list
set listchars=tab:>-,trail:-

" 可随时用倒退键删除
set backspace=2

" tab为4个空格
set expandtab
set tabstop=4
set autoindent
autocmd FileType php set shiftwidth=4 | set expandtab | set tabstop=4 | set softtabstop=4

" 语法高亮
syntax on

" 高亮当前行和列
set cursorline

"vundle配置
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree.git'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" tagbar配置
nmap <F8> :TagbarToggle<CR>
" 设置ctags路径
let g:tagbar_ctags_bin='/usr/bin/ctags'
" 设置tagbar的窗口宽:q度
let g:tagbar_width=60
" 打开文件自动 打开tagbar--
" autocmd BufReadPost *.php call tagbar#autoopen()

" nerdtree配置
map <F2> :NERDTreeToggle<CR>
let NERDTreeWinSize=60

