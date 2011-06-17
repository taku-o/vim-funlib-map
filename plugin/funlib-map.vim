" funlib-map.vim:
" Load Once:
if &cp || exists("g:loaded_funlib_map")
    finish
endif
let g:loaded_funlib_map = 1
let s:keepcpo = &cpo
set cpo&vim
" ---------------------------------------------------------------------

function! Random(a, b)
    return random#randint(a:a, a:b)
endfunction

function! MD5(data)
    return hashlib#md5(a:data)
endfunction

function! Sha1(data)
    return hashlib#sha1(a:data)
endfunction

function! Sha256(data)
    return hashlib#sha256(a:data)
endfunction


" ---------------------------------------------------------------------
let &cpo= s:keepcpo
unlet s:keepcpo

