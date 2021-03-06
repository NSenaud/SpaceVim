""
" @section shell, layer-shell
" @parentsection layers
" SpaceVim use deol.nvim for shell support in neovim, and use vimshell for
" vim. for info, read |deol| and |vimshell|.

function! SpaceVim#layers#shell#plugins() abort
    let plugins = []
    if has('nvim')
        call add(plugins,['Shougo/deol.nvim'])
    else
        call add(plugins,['Shougo/vimshell.vim',                { 'on_cmd':['VimShell']}])
    endif
    return plugins
endfunction
