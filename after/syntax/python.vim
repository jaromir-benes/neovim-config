" quit when a syntax file was already loaded
"if exists("b:current_syntax")
"   finish
"endif

syn region pythonFoldBlock start=+#(+ end=+#)+ fold transparent keepend
syn region pythonFoldBlockCurly start=+#{+ end=+#}+ fold transparent keepend
setlocal foldmethod=syntax

" let b:current_syntax = "python"

"EOF vim: ts=8 noet tw=100 sw=8 sts=0

