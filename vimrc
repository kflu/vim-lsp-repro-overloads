set nocp
set rtp+=/tmp/vim-lsp-repro/vim-lsp/
set rtp+=/tmp/vim-lsp-repro/vim-lsp-settings/
set rtp+=/tmp/vim-lsp-repro/asyncomplete.vim/
set rtp+=/tmp/vim-lsp-repro/asyncomplete-lsp.vim/

syntax on
filetype plugin indent on
silent! colo shine

function s:ConfigureVimLsp()
    augroup lsp_install
        au!
        autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
    augroup END

    function! s:on_lsp_buffer_enabled() abort
        " setlocal omnifunc=lsp#complete
        nmap <buffer> gd <plug>(lsp-definition)
        nmap <buffer> gs <plug>(lsp-document-symbol-search)
        nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
        nmap <buffer> gr <plug>(lsp-references)
        nmap <buffer> gi <plug>(lsp-implementation)
        nmap <buffer> gp <plug>(lsp-peek-definition)
        nmap <buffer> gt <plug>(lsp-type-definition)
        nmap <buffer> gh <plug>(lsp-hover)
    endfunction

endfunction
call s:ConfigureVimLsp()
