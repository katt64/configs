" Nroff-specific settings for vim.
let b:nroff_is_groff=1
let nroff_space_errors=1
let b:preprocs_as_sections = 1

hi def nroffDefinition term=italic cterm=italic gui=reverse
hi def nroffDefSpecial term=italic,bold cterm=italic,bold
		     \ gui=reverse,bold

set noet " Use actual tabs instead of spaces
set wrap

map <F3> <ESC>:w \| !(groff -me -e -t -Kutf8 % \| zathura -&)<CR><CR>
map <F4> <ESC>:w \| vsp \| enew \| set spell tw=67 cc=67 \| r !groff -me -e -t -Tutf8 -Kutf8 # \| col -b \| sed "s/[0-9]\+m//g"<CR>gg
map <F5> <ESC>:w \| !(groff -mom -e -t -Kutf8 % \| zathura -&)<CR><CR>
map <F6> <ESC>:w \| vsp \| enew \| set spell tw=67 cc=67 \| r !groff -mom -e -t -Tutf8 -Kutf8 # \| col -b \| sed "s/[0-9]\+m//g"<CR>gg
map <F7> <ESC>:w \| !(groff -man -e -t -Kutf8 % \| zathura -&)<CR><CR>
map <F8> <ESC>:w \| vsp \| enew \| set spell tw=67 cc=67 \| r !groff -man -e -t -Tutf8 -Kutf8 # \| col -b \| sed "s/[0-9]\+m//g"<CR>gg
map <F9> <ESC>:w \| !(groff -Kutf8 -e -t % \| zathura -&)<CR><CR>
map <F10> <ESC>:w \| vsp \| enew \| set spell tw=67 cc=67 \| r !groff -Tutf8 -Kutf8 -e -t # \| col -b \| sed "s/[0-9]\+m//g"<CR>gg
