"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Filename: .vimrc
" Updated on Fri Apr 10 16:10:40 CST 2020
" @author: Kefeng Zhu (zhukefeng@inspur.com, zkf1985@gmail.com, zkf85@163.com)
"
" Desciption:
"   This is a well customized VIM environment vimrc file, with settings and
"   plugins by Kefeng Zhu. 
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"
"===============================================================================
" I. Vundle - managing the plugins
" Quick Note:
"     :PluginInstall - after adding plugins, type this command to install
"     :PluginList - list all installed plugins
"     :PluginClean - remove all unused plugins and the corresponding folders
"===============================================================================
set nocompatible                    " be iMproved, required
filetype off                        " required
set rtp+=~/.vim/bundle/Vundle.vim   " set runtime path and initialize
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'       " let Vundle manage Vundle, required

" Add plugins below - keep plugin commands between vundle#begin/end
"-------------------------------------------------------------------------------
"Plugin 'petRUShka/vim-opencl.git'  " opencl highlight support plugin
"Plugin 'Lokaltog/vim-powerline'    " a classic status bar plugin
Plugin 'itchyny/lightline.vim'      " fancy status bar
"Plugin 'Valloric/YouCompleteMe'     " code completion tool
"Plugin 'kien/ctrlp.vim'             " search plugin
"Plugin 'tpope/vim-fugitive'         " easy git access
Plugin 'preservim/nerdtree'         " show directory tree stuff
"Plugin 'vim-syntastic/syntastic'    " check python syntax
"Plugin 'nvie/vim-flake8'            " check python code ith PEP8 
Plugin 'Yggdroot/indentLine'        " indent guides

"Color Schemes:
"Plugin 'jnurmine/Zenburn'           " a low contrast color scheme
"Plugin 'tomasr/molokai'             " a nice vigorous color scheme
Plugin 'morhetz/gruvbox'            " another eye-protecting color scheme
"-------------------------------------------------------------------------------
call vundle#end()            " required
filetype plugin indent on    " required


"===============================================================================
" II. Settings
"===============================================================================
"
"-------------------------------------------------------------------------------
" Basics
"-------------------------------------------------------------------------------
syntax on                   " enable syntax
set nu!                     " enable line number     
set hlsearch                " enable search highlight
set cursorline              " highlight current cursor line
set autoindent              " auto indent
set shiftwidth=4            " set shift width
set tabstop=4               " set tab stop
set expandtab               " expand tabs into whitespace
set encoding=utf-8          " set the encoding format
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

"-------------------------------------------------------------------------------
" Color and Schemes
"-------------------------------------------------------------------------------
set background=dark         " set background mode to light/dark       
"set wrap                   " wrap lines
"colorscheme default        " default is acutally good enough
"colorscheme zenburn        " a gray background eye-protecting colorscheme
"colorscheme molokai        " a vigorous colorscheme
colorscheme gruvbox         " now is my favorite

" Use the following line only when using 'default' to avoid a highlight glitch:
"hi Search cterm=NONE ctermfg=darkgrey ctermbg=yellow

"-------------------------------------------------------------------------------
" Ctags
"-------------------------------------------------------------------------------
" let vim to look for the ctags index file in the source directory.
set tags=tags

"-------------------------------------------------------------------------------
" Status Bar
"-------------------------------------------------------------------------------
" Using lightline plugin
set t_Co=256                " set the terminal color
set laststatus=2            " always show status bar

"-------------------------------------------------------------------------------
" Set Wild Menu
"-------------------------------------------------------------------------------
set wildmenu                " enable a full menu for file open/search
set wildmode=list:longest,full
