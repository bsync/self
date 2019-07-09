function! bible#CaptureBook() 
   "?^\(\w\+\.\d\+:\d\+\)\@!\S
   normal "0y$V
   /^\%(\w\+\.\d\+:\d\+\)\@!\S/-1
   normal ma"1y
   let filename = @0 . '.txt'
   execute 'sp ' . filename
   normal gg"1P
   :w
   wincmd j
   normal 'aj
endfunction

map <leader>go :call bible#CaptureBook()
