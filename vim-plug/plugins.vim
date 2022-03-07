" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
"    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " One-dark theme
    "Plug 'joshdick/onedark.vim'
    " gruvbox colorscheme. Seems to work the best for me.
    Plug 'morhetz/gruvbox'
    Plug 'tomasr/molokai'
    " Comment lines with gcc?
    Plug 'chrisbra/vim-commentary' " Vim commentary
    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " CoC
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Emmet
    Plug 'mattn/emmet-vim'
    " FZF , install latest binary
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " It sets your root folder as default when opening one file on the project
    Plug 'airblade/vim-rooter'
    Plug 'jmcantrell/vim-diffchanges'
    Plug 'jpalardy/vim-slime'
call plug#end()
