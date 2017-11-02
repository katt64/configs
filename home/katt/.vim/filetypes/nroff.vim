" Nroff-specific settings for vim.
let b:nroff_is_groff=1
let nroff_space_errors=1

set noet " Use actual tabs instead of spaces
set tw=0
set cc=0
set wrap

map <F5> <ESC>:w \| !(groff -Kutf8 % \| zathura -&)<CR><CR>
map <F6> <ESC>:w \| vsp \| enew \| set spell tw=67 cc=67 \| r !groff -Tutf8 -Kutf8 # \| col -b \| sed -s "s/[0-9]\+m//g"<CR>gg
