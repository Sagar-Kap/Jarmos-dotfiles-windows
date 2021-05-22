" Markdown settings. It might be better to use a ftplugin instead.
" Autocommand group for Markdown files to wrap long texts.
" More info available at:
" https://blog.lourenci.com/how-to-wrap-long-lines-when-writing-markdown-on-vim/
augroup Markdown
    autocmd!
    autocmd Filetype markdown set wrap
augroup END
