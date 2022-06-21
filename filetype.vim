augroup filetypedetect
    au BufNewFile,BufRead *.pl setf perl5
augroup END

augroup filetypedetect
    au BufNewFile,BufRead *.md setf markdown
augroup END

augroup filetypedetect
    au BufNewFile,BufRead *.md.html setf markdown
augroup END

augroup filetypedetect
    au BufNewFile,BufRead *.m setf matlab
augroup END

augroup filetypedetect
    au BufNewFile,BufRead *.model setf iris
augroup END

augroup filetypedetect
    au BufNewFile,BufRead *.submodel setf iris
augroup END

augroup filetypedetect
    au BufNewFile,BufRead *.eqtn setf iris
augroup END

augroup filetypedetect
    au BufNewFile,BufRead *.annual setf iris
augroup END

augroup filetypedetect
    au BufNewFile,BufRead *.yearly setf iris
augroup END

augroup filetypedetect
    au BufNewFile,BufRead *.quarterly setf iris
augroup END

augroup filetypedetect
    au BufNewFile,BufRead *.mod setf iris
augroup END

augroup filetypedetect
    au BufNewFile,BufRead *.mpre setf matlab
augroup END

augroup filetypedetect
    au BufNewFile,BufRead *.tex setf latex
augroup END

augroup filetypedetect
    au BufNewFile,BufRead *.sty setf latex
augroup END

augroup filetypedetect
    au BufNewFile,BufRead *.cls setf latex
augroup END

augroup filetypedetect
    au BufNewFile,BufRead *prg setf eviews
augroup END

augroup filetypedetect
    au BufNewFile,BufRead *pro setf fame
augroup END

if exists("did_load_csvfiletype")
  finish
endif
let did_load_csvfiletype=1

augroup filetypedetect
  au! BufRead,BufNewFile *.csv setfiletype csv
augroup END

augroup TerminalStuff
    autocmd TermOpen * setlocal nonumber norelativenumber
augroup END
