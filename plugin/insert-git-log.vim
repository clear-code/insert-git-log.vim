function! s:InsertGitLog(...)
    let l:stagingFiles = system('git diff --cached --name-only')
    let l:result = system('git log -1 --oneline ' . l:stagingFiles)
    call setline('.', substitute(l:result, '\n\+$', '', ''))
endfunction

command! -nargs=* InsertGitLog :call s:InsertGitLog(0, <f-args>)
