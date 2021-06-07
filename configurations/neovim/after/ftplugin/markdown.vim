setlocal wrap                                                       " Enable text wrapping for all Markdown files.

" Vim Markdown plugin options
let g:vim_markdown_fenced_languages = ['powershell=powershell']     " Enable syntax highlighting within code fences
let g:vim_markdown_follow_anchor = 1                                " Follows URL of the form 'URL#anchor' with the 'ge' command
let g:vim_markdown_frontmatter = 1                                  " Enables syntax highlighting for YAML frontmatter in Markdown content
let g:vim_markdown_strikethrough = 1                                " Enable strike through for Markdown files
let g:vim_markdown_autowrite = 1                                    " Automatically save any edits before moving to a linked file with the 'ge' command
let g:vim_markdown_edit_url_in = 'tab'                              " When navigating linked files with the 'ge' command, open the file in a separate Tab instead
