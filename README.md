# highlighter.vim

Small vim plugin, which maps following mapping:

```
<leade>hi
```
prompts you to enter color number from 1 to 6,
then highlights all matching words with that color

It is recommended you setup following mapping to clear matches
```
nnoremap <silent> <leader><leader> :call clearmatches()<CR>:noh<CR>
```
