function! s:InsertGitLog(...)
    if a:0 >= 1
      let l:args = a:1
    else
      let l:args = ''
    end
    let l:stagingFiles = system('git diff --cached --name-only')
    let l:result = system('git log -1 --pretty="%s" '.l:args.' '.l:stagingFiles)
    normal O
    call append('.', split(l:result, '\n'))
    normal dd
endfunction

command! -nargs=? InsertGitLog :call s:InsertGitLog(<f-args>)
