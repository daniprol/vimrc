" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <C-up>    :resize -10<CR>
nnoremap <C-down>    :resize +10<CR>
nnoremap <C-left>    :vertical resize -10<CR>
nnoremap <C-right>    :vertical resize +10<CR>

" I hate escape more than anything else
inoremap jk <Esc>
" inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
"nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
"nnoremap <S-TAB> :bprevious<CR>

" Use leader+number to manage tabs
"nnoremap <leader>1 1gt
"nnoremap <leader>2 2gt
"nnoremap <leader>3 3gt
"nnoremap <leader>4 4gt
"nnoremap <leader>5 5gt
nnoremap H :bprevious<CR>
nnoremap L :bnext<CR>

" Move around tabs
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Move around windows???
nnoremap <C-h> gT
nnoremap <C-l> gt

" Create a vertical split
" nnoremap <Leader>v <C-w>v
" Resize the vertical splits
" nnoremap <Leader>+ :vertical resize +5<CR>
" nnoremap <Leader>- :vertical resize -5<CR>
" Toggle NerdTree
" nnoremap <leader>u :UndotreeShow<CR> " It's not installed right now!

" Coc-explorer
:nmap <leader>n :CocCommand explorer<CR>  " This was the default mapping found in the documentation
"map <leader>e :CocCommand explorer<CR>

" Shortcut for NERDTree
" map <leader>a :NERDTreeToggle<CR>

" Better window navigation
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

" Inserting new lines
 " Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>k
nnoremap <silent> zk O<Esc>j

" Use CTRL+s to save the file even in insert mode
"nnoremap <silent><c-s> :<c-u>update<cr>
"inoremap <silent><c-s> <c-o>:update<cr>

"This unsets the last search pattern register by hitting return
nnoremap <CR> :noh<CR><CR>

" Alternate way to save
" nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"


" Better tabbing
vnoremap < <gv
vnoremap > >gv


" Create comments like in VSCode:
nnoremap <C-Ç> :Commentary<CR>
vnoremap <C-Ç> :Commentary<CR> " Es importante tener la opción también en modo VISUAL


nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" The Primeagen Ideas
nnoremap º <C-^> " Swap between last 2 used buffers
nnoremap <C-w>0 <C-w>=  " Set evenly spread splits

vnoremap J :m '>+1<CR>gv=gv " Select multiple lines visually and shift them up and down. It also applies correct indenting
vnoremap K :m '<-2<CR>gv=gv " It doesn't work as well when going downwards!


nnoremap <leader>ghw :h <C-R>=expand("<cword>")<CR><CR> " Lookup help for selected word
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR> " Fuzzy find selected word

nnoremap <leader>wd :lcd %:p:h<CR>


" Open VIM configuration file
nnoremap <Leader>1 :e ~/.config/nvim/init.vim<CR>

" Replace all ocurrences for word under cursor:
nnoremap <Leader>r :%s/\<<C-r><C-w>\>//g<Left><Left>

" Keep the cursor in place when joining lines
nnoremap J mzJ`z

" Open ZSH in vertical split:
nnoremap <F2> :vs term://$SHELL<CR> i

" Open Python interpreter in vertical split
nnoremap <F3> :vs<CR> :term python3<CR> i

" Execute current Python file in interactive mode
nnoremap <F4> :vs<CR> :term python3 -i %:p<CR> i 

" Execute current Python file in iPython
" nnoremap <F4> :vs<CR> :term ipython -i %:p<CR> i

" Make sure that Esc works in terminal
" tnoremap <Esc> <C-\><C-n>
" This expression avoids problems when pressing <Esc> in FZF (buffers, rg,...)
tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"
" The next expression is another alternative
" if has("nvim")
" au TermOpen * tnoremap <buffer> <Esc> <c-\><c-n>
" au FileType fzf tunmap <buffer> <Esc>
" endif

" Close terminal the old way: (NOTE this only works if the terminal is in a vsplit)
tnoremap <C-d> <C-\><C-n>>:q!


