

function! s:SendToWindow(type, direction)

  let s:saved_register = @@
  let s:saved_registerK = @k
  let s:saved_pos = getpos(".")

  " Obtain wanted text
  if a:type == 'v' || a:type == 'V' || a:type == "\<C-V>"
    keepjumps normal! `<v`>y
    if a:type == 'V'
      let @@ = substitute(@@, '\n$', '', '')
    endif
    call setpos(".", getpos("'>"))
  elseif a:type ==# "char"
    keepjumps normal! `[v`]y
    call setpos(".", getpos("']"))
  elseif a:type ==# "line"
    keepjumps normal! `[V`]$y
    call setpos(".", getpos("']"))
  endif

  " Was the cursor at the end of line?
  let s:endofline = 0
  if col(".") >=# col("$")-1
    let s:endofline = 1
  endif

  " Go to the wanted split
  let s:winnr = winnr()
  execute "wincmd " . a:direction
  if winnr() == s:winnr
    echom "No window in selected direction!"
    call setpos(".", s:saved_pos)
    return
  endif

  " Insert text and ammend end of line charater based on buffer type
  if &buftype ==# "terminal"
    if has('nvim')
      normal! gp
      call chansend(b:terminal_job_id, "\r")
    else
      call term_sendkeys('', @0)
      call term_sendkeys('', "\r")
    endif
  elseif s:endofline
    normal! gp
    let @k = "\n"
    normal! "kp
  else
    normal! gp
  endif
  wincmd p

  " Position the cursor for the next action
  if s:endofline
    normal! j0
  elseif a:type ==# "char"
    normal! l
  endif

  " Restore register
  let @@ = s:saved_register
  let @k = s:saved_registerK

endfunction


function! s:SendRight(type)
  call s:SendToWindow(a:type, 'l')
endfunction


nnoremap <silent> <Plug>SendRight :<C-U> set operatorfunc=<SID>SendRight<CR>g@
vnoremap <silent> <Plug>SendRightV :<C-U> call <SID>SendRight(visualmode())<CR>

nmap <leader>sr <Plug>SendRight
xmap <leader>sr <Plug>SendRightV
