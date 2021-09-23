
if exists("g:loaded_tabcommand")
  finish
endif
let g:loaded_tabcommand = 1

let s:save_cpo = &cpo
set cpo&vim

""" tabline setting
set showtabline=2

nnoremap [Tab] <Nop>

""" action
nnoremap <silent> [Tab]c :<C-u>tabnew<CR>
nnoremap <silent> [Tab]p :<C-u>tabprevious<CR>
nnoremap <silent> [Tab]n :<C-u>tabnext<CR>

" Tab jump
for s:n in range(1, 9)
  execute 'nnoremap <silent> [Tab]'.s:n ':<C-u>tabnext'.s:n.'<CR>'
endfor

nnoremap <silent> [Tab], :<C-u>tabprevious<CR>
nnoremap <silent> [Tab]. :<C-u>tabnext<CR>

let &cpo = s:save_cpo
unlet s:save_cpo
