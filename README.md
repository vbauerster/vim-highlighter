# highlighter.vim

Small vim plugin, which defines `:Highlight` Ex command

When invoking `:Highlight`, it prompts you to enter a color number from 1 to 6,
then highlights all matching words with that color

It is recommended you setup following mappings
```
" to highlight
nnoremap <leader>hi :Highlight<CR>
" to clear all highlights
nnoremap <silent> <leader><leader> :call clearmatches()<CR>:noh<CR>
```
