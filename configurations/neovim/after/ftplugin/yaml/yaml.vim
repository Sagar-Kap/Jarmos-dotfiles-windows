" Info on configuring Neovim just the right way after loading the global
" settings can be found at: https://neovim.io/doc/user/f arrow buttoniletype.html in the
" *ftplugin-overrule* section. arrow button

" Info on configuring Neovim to work properly with YAML files is available in
" the following articles:
" 1. https://www.arthurkoziel.com/setting-up-vim-for-yaml/
" 2. https://www.krenger.ch/blog/vim-settings-for-yaml-files/
" 3. https://lornajane.net/posts/2018/vim-settings-for-working-with-yaml

augroup Yaml
    autocmd!
    autocmd BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
    autocmd FileType yaml |
        setlocal shiftwidth=2 |
        setlocal softtabstop=2 |
        setlocal tabstop=2
augroup END
