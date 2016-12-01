
if exists("g:loaded_tabcommand")
  finish
endif
let g:loaded_tabcommand = 1

let s:save_cpo = &cpo
set cpo&vim

nnoremap [Tab] <Nop>

" default map
nmap [Prefix]t [Tab]

""" action
nnoremap <silent> [Tab]c :<C-u>tabnew<CR>
nnoremap <silent> [Tab]p :<C-u>tabprevious<CR>
nnoremap <silent> [Tab]n :<C-u>tabnext<CR>

nnoremap <silent> [Tab]u :<C-u>Unit tab<CR>

" Tab jump
for n in range(1, 9)
  execute 'nnoremap <silent> [Tab]'.n ':<C-u>tabnext'.n.'<CR>'
endfor

nnoremap <silent> [Tab], :<C-u>tabprevious<CR>
nnoremap <silent> [Tab]. :<C-u>tabnext<CR>

let &cpo = s:save_cpo
unlet s:save_cpo
