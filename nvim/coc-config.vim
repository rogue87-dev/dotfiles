" coc-config.vim
let g:coc_global_extensions = [
      \ 'coc-snippets',
      \ 'coc-pyright',
      \ 'coc-tsserver',
      \ 'coc-eslint',
      \ 'coc-json',
      \ 'coc-html',
      \ 'coc-css',
      \ 'coc-yaml',
      \ 'coc-vimlsp'
      \]

" Recommended settings
augroup mygroup
  autocmd!
  autocmd FileType javascript,json setl formatexpr=CocAction('formatSelected')
  autocmd FileType javascript,json setl formatprg=prettier
  autocmd FileType typescript setl formatexpr=CocAction('formatSelected')
  autocmd FileType typescript setl formatprg=prettier
  autocmd FileType scss setl formatexpr=CocAction('formatSelected')
  autocmd FileType scss setl formatprg=prettier
  autocmd FileType html setl formatexpr=CocAction('formatSelected')
  autocmd FileType html setl formatprg=prettier
  autocmd FileType xml setl formatexpr=CocAction('formatSelected')
  autocmd FileType xml setl formatprg=prettier
  autocmd FileType markdown setl formatexpr=CocAction('formatSelected')
  autocmd FileType markdown setl formatprg=prettier
augroup end

" Use <Tab> for trigger completion and navigate completion menu
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use <CR> to confirm completion, as otherwise it inserts a newline
inoremap <silent><expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" Remap for scroll float windows
inoremap <silent><expr> <C-f> pumvisible() ? "\<C-f>" : "\<Right>"
inoremap <silent><expr> <C-b> pumvisible() ? "\<C-b>" : "\<Left>"
inoremap <silent><expr> <C-u> "\<C-u>\<C-r>=coc#float#scroll(1)\<CR>"
inoremap <silent><expr> <C-d> "\<C-d>\<C-r>=coc#float#scroll(1)\<CR>"

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)
" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
