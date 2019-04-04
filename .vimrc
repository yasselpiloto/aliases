execute pathogen#infect()
syntax on
filetype plugin indent on
" autocmd vimenter * NERDTree

let mapleader = ","
nmap <leader>ne :NERDTree<cr>

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set number
set paste
set nofixendofline

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set clipboard=unnamed " copy to the system clipboard
set backspace=2

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

" use ag for grep
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

nnoremap \ :Ag<SPACE>

" spell check for md files
autocmd BufRead,BufNewFile *.md setlocal spell

" move around buffers
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr> 

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>
:nnoremap <C-W> :bdelete<CR>

" persistent undo
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature  
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
endif 

" autosave
let g:auto_save = 1  " enable AutoSave on Vim startup
