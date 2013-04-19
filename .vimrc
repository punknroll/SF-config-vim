" Modeline and Notes {
" vim: set foldmarker={,} foldlevel=0 foldmethod=marker spell:
"
"This is the personal .vimrc file of Steve Francia.
"While much of it is beneficial for general use, I would
"recommend picking out the parts you want and understand.
"
"You can find me at http://spf13.com
" }

" Environment {
" Basics {
set nocompatible " must be first line
set background=dark     " Assume a dark background
" }
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'cperl82/bufexplorer.git'
Bundle 'checksyntax-B'
Bundle 'eZVim'
Bundle 'hallettj/jslint.vim.git'
Bundle 'kate.vim'
Bundle 'https://github.com/drwX/php-manual.git'
"Bundle 'PIV'
"Bundle 'git://github.com/spf13/PIV.git'
Bundle 'https://github.com/rstacruz/sparkup.git'
Bundle 'taglist.vim'
Bundle 'tolerable.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
Bundle "vim-less"
Bundle "vim-twig"
Bundle "vim-xdebug"
" Bundle "https://github.com/Valloric/YouCompleteMe.git"
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" Bundle 'https://github.com/scrooloose/syntastic.git'
Bundle 'https://github.com/vim-scripts/PDV--phpDocumentor-for-Vim'
Bundle 'git://github.com/vim-scripts/LaTeX-Suite-aka-Vim-LaTeX.git'
Bundle "pangloss/vim-javascript"
" color themes
Bundle "https://github.com/tpope/vim-vividchalk.git" 
" ...

filetype plugin indent on     " required!

" Windows Compatible {
" On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
" across (heterogeneous) systems easier. 
if has('win32') || has('win64')
    set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif
" }
" 
" }

" }

" GUI Settings {
" GVIM- (here instead of .gvimrc)
if has('gui_running')
    set guioptions-=T          " remove the toolbar
    set lines=40               " 40 lines of text instead of 24,
else
    set term=builtin_ansi       " Make arrow and other keys work
endif
" }



" Use local vimrc if available {
if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
" }
