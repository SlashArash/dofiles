" Plugins will be downloaded under the specified directory.
call plug#begin()

" Declare the list of plugins.
Plug 'dracula/vim',{'as': 'dracula'}
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'} 
"List ends here. Plugins become visible to Vim after this call.
call plug#end()

" To change lint icons for errors and warnings
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

" Fix files automatically on save
let g:ale_fix_on_save = 1

" add a shortcut for fix errors of ALE or linter 
nmap <F6> <Plug>(ale_fix)

" Add shortcut for fuzzy file finder
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>t :BTags<CR>
nnoremap <Leader>T :Tags<CR>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

