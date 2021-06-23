# Composing setup

## Composing messages with vim 

### neomutt configuration

```
set edit_headers = yes
set editor="vim -c 'startinsert' '+/^$'"
```

The first line will allow you to edit the headers in during composing
of messages in vim.
The second line will call vim in insert mode and skip the header to
start just after the header part.

### vim configuration (.vimrc)

```
syntax on
set complete+=kspell
autocmd FileType mail set colorcolumn=76
autocmd FileType mail set tw=75
autocmd FileType mail set spell spelllang=de,en
```

The `kspell` value will support completion for spelling check. The
`tw` and `colorcolumn` will set the text width to 75 and highlight the
end of the text area. 

