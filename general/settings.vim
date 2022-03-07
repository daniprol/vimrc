" set leader key
let g:mapleader = "\<Space>"

syntax enable                           " Enables syntax highlighing
" set guifont=JetBrains\ Mono\ Regular\ 11  " Set editor font
" set exrc                                " Allow for project specific .vimrc
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set relativenumber                      " Relative line number
set directory=$HOME/.nvim/swp//         " Use this directory to store all of your swap files
set undofile                             " Maintain undo history between sessions
set undodir=$HOME/.nvim/undodir//         " Use this directory to store all of the file undo history
"set title                               " Set the window's title (terminal tab) reflecting the current file being edited
set cursorline                          " Enable highlighting of the current line
" set wildmenu                            " Display command line's tab complete options as a menu
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
" set noswapfile                          " It shouldn't create swap files in all the project, this allows you to open the same buffer many times (dangerous!).
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " Disable automatic commenting on new line:
"set autochdir                           " Your working directory will always be the same as your working directory

" Netrw configuration
let g:netrw_liststyle=3 " Change the view type to file tree 
let g:netrw_browse_split=4 " Opens files in new buffer and maintains the file explorer in a split.
let g:netrw_winsize=80 " Width of the netrw split when opening a new file
  
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" This allows you to write any file without having to open it with sudo
cmap w!! w !sudo tee %
