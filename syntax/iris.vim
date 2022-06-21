" Vim syntax file
" Language: IRIS Model File
" Last Change: July 8, 2021
" 
" quit when a syntax file was already loaded
if exists("b:current_syntax")
 finish
endif

" MT_ADDON - added exception-specific keywords

syn iskeyword @,_,!,#
syn match modelKeyword "[#!][a-z_-]\+" 
syn keyword modelTodo TODO FIXME
syn match modelMeasure "@"
syn match modelHashEqual "=#\|==="
syn match modelForControl "?"
syn match modelShift "{[0-9+-]\+}"
syn match modelSteady "!!"
syn match modelType "`[a-zA-Z]\+"
syn match modelInterp "[«»]" 

" syn match modelArithmeticOperator "[-+]"
" syn match modelArithmeticOperator "\.\=[*/\\^]"

syn match modelLineContinuation "\.\{3}"

" String
" MT_ADDON - added 'skip' in order to deal with 'tic' escaping sequence 
syn match modelAttribute "\w\@<!:\w\+"
syn region modelStringSingle start=+'+ end=+'+ oneline skip=+''+
syn region modelStringDouble start=+"+ end=+"+ oneline skip=+""+
syn match modelSubstitution "\$[^\$]\+\$"
syn match modelUnfinishedString "'[^']*$"
syn match modelMatlabExpress "<[^>]*>"
syn match modelEndEquation "; *$"


" Standard numbers
" syn match modelNumber "\<\d\+[ij]\=\>"
" floating point number, with dot, optional exponent
" syn match modelFloat "\<\d\+\(\.\d*\)\=\([edED][-+]\=\d\+\)\=[ij]\=\>"
" floating point number, starting with a dot, optional exponent
" syn match modelFloat "\.\d\+\([edED][-+]\=\d\+\)\=[ij]\=\>"


syn match modelComment "%.*$" contains=modelTodo
syn match modelEllipsis "\.\.\..*$" contains=modelTodo
syn region modelMultilineComment start=+%{+ end=+%}+ contains=modelTodo
syn match modelFileTitle "\(^\)\@<=\(%%\|##\).*\n[ ]*"
syn match modelSection "\(\n\)\@<=\(%%\|##\).*\n[ ]*"
syn match modelSectionDivider "^ \{75}$"

" Define the default highlighting.
" Only when an item doesn't have highlighting yet

hi def link modelKeyword Keyword
hi def link modelHashEqual SpecialChar 
hi def link modelForControl SpecialChar
hi def link modelType Type
hi def link modelMeasure Type
hi def link modelSteady Typedef
hi def link modelException Exception
hi def link modelLineContinuation Comment
hi def link modelAttribute Type 
hi def link modelStringSingle String
hi def link modelStringDouble String
hi def link modelUnfinishedString Debug
hi def link modelComment Comment
hi def link modelEllipsis Underlined
hi def link modelSection Heading
hi def link modelFileTitle StrongHeading
hi def link modelMultilineComment SpecialComment
hi def link modelSectionDivider Underlined 
hi def link modelMultilineComment SpecialComment
hi def link modelInterp Type
hi def link modelShift Special
hi def link modelSubstitution PreCond
hi def link modelMatlabExpress PreCond
hi def link modelEndEquation Special
hi def link modelTodo Todo


let b:current_syntax = "iris"

"EOF vim: ts=8 noet tw=100 sw=8 sts=0
