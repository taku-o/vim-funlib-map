" funlib-map.vim:
" Load Once:
if &cp || exists("g:loaded_funlib_map")
    finish
endif
let g:loaded_funlib_map = 1
let s:keepcpo = &cpo
set cpo&vim
" ---------------------------------------------------------------------

function s:Base64Encode()
    let l:line = getline('.')
    let l:encoded = base64#b64encode(l:line)
    call setline('.', l:encoded)
endfunction

function s:Base64Decode()
    let l:line = getline('.')
    let l:encoded = base64#b64decode(l:line)
    call setline('.', l:encoded)
endfunction

function s:URLEncode()
    let l:line = getline('.')
    let l:encoded = urllib#urlencode(l:line)
    call setline('.', l:encoded)
endfunction
command! -nargs=0 -range Base64Encode :<line1>,<line2>call <SID>Base64Encode()
command! -nargs=0 -range Base64Decode :<line1>,<line2>call <SID>Base64Decode()
command! -nargs=0 -range URLEncode :<line1>,<line2>call <SID>URLEncode()

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

