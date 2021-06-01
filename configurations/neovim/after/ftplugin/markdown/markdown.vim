" The Markdown plugin can be further configured. The plugin docs are available at: 
" https://github.com/plasticboy/vim-markdown#options

augroup Markdown
" Enables text wrapping for Markdown files
    autocmd!
    autocmd Filetype markdown set wrap
augroup END
