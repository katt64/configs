" Some autocommands
au bufreadpre,bufnewfile *.bnf set ft=bnf

"" Not language-specific stuff
filetype plugin indent on
syntax on

"" Pathogen
execute pathogen#infect()

"" Lightline
set laststatus=2
set noshowmode

"" Other stuff
set swapfile
set title
set number
set pt=<F2>
set ml
set wrap tw=80 cc=80
set autoindent ts=8 sw=4 sts=0 sta et
hi ColorColumn ctermbg=88

set noundofile
set nobackup
set nohlsearch

set encoding=utf-8

"" Tabbing in Vim
map gn :tabnew<CR>
map gt :tabnext<CR>
map gT :tabprevious<CR>
map g$ :tablast<CR>
map g0 :tabfirst<CR>
map gc :tabclose<CR>

"" Redefine INSERT mode's <C-w> that doesn't really make sense.
inoremap <C-w> <Esc><C-w>

"" Make Lightline smaller on smaller viewports
let g:lightline = {
      \ 'component_function': {
      \   'fileformat': 'LightlineFileformat',
      \   'filetype': 'LightlineFiletype',
      \ },
      \ }

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction
