" Vim syntax file
" Language: Matlab
" Last Change: October 16 2018
" 
" quit when a syntax file was already loaded
if exists("b:current_syntax")
 finish
endif

syn match matlabEndFunction "end%"
syn match matlabEnd "\<end\>%\@!"
syn keyword matlabKeyword break case continue else elseif 
syn keyword matlabKeyword for if otherwise parfor spmd switch while
syn keyword matlabKeyword arguments
syn keyword matlabOO classdef properties enumeration methods
syn keyword matlabException try catch
syn keyword matlabScope global persistent
syn keyword matlabTodo TODO FIXME
syn keyword matlabKeyboard keyboard
syn match matlabSystemCommand "!.*$"
syn match matlabPreprocessorCommand "^#\+ .*"

syn match matlabArithmeticOperator "[-+]"
syn match matlabArithmeticOperator "\.\=[*/\\^]"
syn match matlabRelationalOperator "[=~]="
syn match matlabRelationalOperator "[<>]=\="
syn match matlabLogicalOperator "[&|~]"
syn match matlabConstant "\<[A-Z0-9_]\{3,}\>"
syn match matlabCommandLine "^>>.*"

syn match matlabLineContinuation "\.\{3}"

" String
" MT_ADDON - added 'skip' in order to deal with 'tic' escaping sequence 
syn region matlabChar start=+'+ end=+'+ oneline skip=+''+
syn region matlabString start=+"+ end=+"+ oneline skip=+""+
syn match matlabUnfinishedChar "'[^']*$"
syn match matlabUnfinishedString '"[^"]*$'
syn match matlabOption "\([, ]\s\+\)\@<=[a-zA-Z][a-zA-Z0-9_]*==\@!"

" Standard numbers
syn match matlabNumber "\<\d\+[ij]\=\>"
" floating point number, with dot, optional exponent
syn match matlabFloat "\<\d\+\(\.\d*\)\=\([edED][-+]\=\d\+\)\=[ij]\=\>"
" floating point number, starting with a dot, optional exponent
syn match matlabFloat "\.\d\+\([edED][-+]\=\d\+\)\=[ij]\=\>"

" Transpose character and delimiters: Either use just [...] or (...) aswell
"syn match matlabDelimiter "[\[\]()]"
"syn match matlabDelimiter "[][()]"
syn match matlabTransposeOperator "[])a-zA-Z0-9_.]'"lc=1

syn keyword matlabFunction function return

syn match matlabComment "%.*$" contains=matlabTodo
" MT_ADDON - correctly highlights words after '...' as comments
syn match matlabEllipsis "\.\.\..*" contains=matlabTodo
syn region matlabMultilineComment start=+%{+ end=+%}+ fold keepend
syn region matlabFoldBlock start=+%(+ end=+%)+ fold transparent keepend
syn region matlabHighlight start=+%<+ end=+%>+ 
syn match matlabFileTitle "\(^\)\@<=%% .*\n[ ]*"
syn match matlabSection "\(\n\)\@<=%% .*\n[ ]*"
syn match matlabHelpTitle "\(^ *%\)\@<= [a-zA-Z._]\+  " containedin=matlabComment
syn match matlabHelpListOfFunctions "\(^%\)\@<= [^\n ]\+[ ]\+[-\|] " containedin=matlabComment

syn match markdownHeader "__\w[^\n]*\w__" contained
syn region markdownInlineCode start=+`+ end=+`+ contained 
syn match markdownInlineCodeAlt "|[^ |][^|]*|" contained 
syn match markdownDisplayedCode "\(^%\)\@<= .*$" contained 
syn match markdownLink "\[.\{-}\](.\{-})" contained 

"syn match matlabError "-\=\<\d\+\.\d\+\.[^*/\\^]"
"syn match matlabError "-\=\<\d\+\.\d\+[eEdD][-+]\=\d\+\.\([^*/\\^]\)"
syn match matlabError "^[ ]*\(Error\|Incorrect\|Unrecognized\|Unknown\|Invalid\).*"


" Define the default highlighting.
" Only when an item doesn't have highlighting yet

hi def link matlabCommandLine CommandLine

hi def link matlabKeyword Keyword
hi def link matlabEnd Keyword
hi def link matlabOO Keyword
hi def link matlabException Exception
hi def link matlabLineContinuation Comment
hi def link matlabTodo Todo
hi def link matlabKeyboard Todo
hi def link matlabSystemCommand Error
hi def link matlabPreprocessorCommand Special
hi def link matlabChar String
hi def link matlabString String
hi def link matlabOption Special
hi def link matlabUnfinishedChar Debug
hi def link matlabUnfinishedString Debug
"hi def link matlabDelimiter Identifier

hi def link matlabFloat Float
hi def link matlabFunction Function
hi def link matlabEndFunction Function
hi def link matlabError Error

hi def link matlabComment Comment
hi def link matlabEllipsis Underlined
hi def link matlabSection Heading
hi def link matlabFileTitle StrongHeading
hi def link matlabMultilineComment SpecialComment

hi def link markdownHeader BoldComment
hi def link matlabHelpTitle BoldComment
hi def link matlabHelpListOfFunctions ItalicComment
hi def link matlabScope Type

hi def link matlabTransposeOperator Operator
hi def link matlabArithmeticOperator Operator
hi def link matlabRelationalOperator Operator
hi def link matlabLogicalOperator Operator

hi def link markdownInlineCode Type
hi def link markdownInlineCodeAlt Type
hi def link markdownDisplayedCode Type
hi def link markdownLink CommentLink

hi def link matlabHighlight Highlight

"optional highlighting

hi ItalicComment ctermfg=14
hi CommentLink ctermfg=14 cterm=underline
hi def link matlabConstant Special

let b:current_syntax = "matlab"

setlocal foldmethod=syntax

let @c="O\<Esc>cc\<Esc>75i \<Esc>0"

"EOF vim: ts=8 noet tw=100 sw=8 sts=0

