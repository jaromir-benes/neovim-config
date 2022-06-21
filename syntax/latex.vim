" Vim syntax file
" Language:	LaTeX
" Last Change:	October 16 2018
" 
" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn match latexComment			"%.*"	oneline
syn match latexKeyword			"\\[A-Za-z0-9@\*]\+"
syn match latexBegin			"\\begin{[A-Za-z0-9\*]\+}"
syn match latexEnd			"\\end{[A-Za-z0-9\*]\+}"
syn region latexInlineMath		start=+\$+ end=+\$+
syn match latexDisplayMathStart		"\\\["
syn match latexDisplayMathEnd		"\\\]"

hi def link latexComment		Comment
hi def link latexBegin			Statement
hi def link latexEnd			Statement
hi def link latexKeyword		Keyword
hi def link latexInlineMath		String
hi def link latexDisplayMathStart	Statement
hi def link latexDisplayMathEnd		Statement

"syn match matlabEndFunction		"end%"
"syn match matlabEnd			"\<end\>%\@!"
"syn keyword matlabKeyword               break case continue else elseif 
"syn keyword matlabKeyword               for if otherwise parfor spmd switch while
"syn keyword matlabOO                    classdef properties enumeration methods
"syn keyword matlabException             try catch
"syn keyword matlabScope			global persistent
"syn keyword matlabTodo			TODO FIXME
"syn match matlabSystemCommand           "!.*$"
"syn match matlabPreprocessorCommand	"#(\?[#A-Za-z0-9_)]\+"
"
"syn match matlabArithmeticOperator	"[-+]"
"syn match matlabArithmeticOperator	"\.\=[*/\\^]"
"syn match matlabRelationalOperator	"[=~]="
"syn match matlabRelationalOperator	"[<>]=\="
"syn match matlabLogicalOperator		"[&|~]"
"
"syn match matlabLineContinuation	"\.\{3}"
"
"" String
"" MT_ADDON - added 'skip' in order to deal with 'tic' escaping sequence 
"syn region matlabChar			start=+'+ end=+'+	oneline skip=+''+
"syn region matlabString			start=+"+ end=+"+	oneline skip=+""+
"syn match matlabUnfinishedChar        "'[^']*$"
"syn match matlabUnfinishedString      '"[^"]*$'
"
"" Standard numbers
"syn match matlabNumber		"\<\d\+[ij]\=\>"
"" floating point number, with dot, optional exponent
"syn match matlabFloat		"\<\d\+\(\.\d*\)\=\([edED][-+]\=\d\+\)\=[ij]\=\>"
"" floating point number, starting with a dot, optional exponent
"syn match matlabFloat		"\.\d\+\([edED][-+]\=\d\+\)\=[ij]\=\>"
"
"" Transpose character and delimiters: Either use just [...] or (...) aswell
"syn match matlabDelimiter		"[][]"
""syn match matlabDelimiter		"[][()]"
"syn match matlabTransposeOperator	"[])a-zA-Z0-9.]'"lc=1
"
"syn keyword matlabFunction		function return
"
"syn match matlabComment			"%.*$"	contains=matlabTodo
"" MT_ADDON - correctly highlights words after '...' as comments
"syn match matlabComment			"\.\.\..*$"	contains=matlabTodo
"syn region matlabMultilineComment	start=+%{+ end=+%}+ contains=matlabTodo
"syn match matlabSection             	"^%%[^%].*$"
"syn match matlabHelpTitle		"\(^%\)\@<= \w\+  " containedin=matlabComment
"syn match matlabHelpListOfFunctions     "\(^%\)\@<=   [^\n ]\+[ ]\+- " containedin=matlabComment
"
"syn match markdownHeader         	"__\w[^\n]*\w__" containedin=matlabComment
"syn region markdownInlineCode		start=+`+ end=+`+ containedin=matlabComment 
"syn match markdownInlineCodeAlt         "|[^ |][^|]*|" containedin=matlabComment 
"syn match markdownDisplayedCode         "\(^%\)\@<=     .*$" containedin=matlabComment
"syn match markdownLink			"\[.\{-}\](.\{-})" containedin=matlabComment
"
"syn match matlabError	"-\=\<\d\+\.\d\+\.[^*/\\^]"
"syn match matlabError	"-\=\<\d\+\.\d\+[eEdD][-+]\=\d\+\.\([^*/\\^]\)"
"
"
"" Define the default highlighting.
"" Only when an item doesn't have highlighting yet
"
"hi def link matlabKeyword               Keyword
"hi def link matlabEnd			Keyword
"hi def link matlabOO                    Keyword
"hi def link matlabException             Exception
"hi def link matlabLineContinuation	Statement
"hi def link matlabTodo			Todo
"hi def link matlabSystemCommand         Special
"hi def link matlabPreprocessorCommand	Special
"hi def link matlabChar			String
"hi def link matlabString		String
"hi def link matlabUnfinishedChar        Debug
"hi def link matlabUnfinishedString      Debug
"hi def link matlabDelimiter		Identifier
"hi def link matlabTransposeOther	Identifier
"hi def link matlabNumber		Number
"hi def link matlabFloat			Float
"hi def link matlabFunction		Function
"hi def link matlabEndFunction		Function
"hi def link matlabError			Error
"
"hi def link matlabMultilineComment	Comment
"hi def link markdownHeader       	BoldComment
""hi def link matlabHelpTitle		BoldComment
"hi def link matlabHelpListOfFunctions   ItalicComment
"hi def link matlabScope			Type
"
"hi def link matlabTransposeOperator	Operator
"hi def link matlabArithmeticOperator	Operator
"hi def link matlabRelationalOperator	Operator
"hi def link matlabLogicalOperator	Operator
"
"hi def link markdownInlineCode		CommentCode
"hi def link markdownInlineCodeAlt      	CommentCode
"hi def link markdownDisplayedCode	CommentCode
"hi def link markdownLink		CommentLink
"
""optional highlighting
"
"hi Keyword ctermfg=166
"hi Exception ctermfg=166
"hi Operator ctermfg=241
""hi Number ctermfg=136 cterm=bold "light solarized
"hi Number ctermfg=245 cterm=bold "dark solarized

"hi BoldComment ctermfg=64 cterm=bold
"hi matlabHelpTitle ctermfg=64 cterm=bold
"hi ItalicComment ctermfg=23
"hi CommentCode ctermfg=245
"hi CommentLink ctermfg=64 cterm=underline
"hi matlabSection ctermfg=64 cterm=bold,underline  ctermbg=none
"hi Special ctermfg=125
"hi Function ctermfg=33
"hi Type ctermfg=37
"hi String ctermfg=61
""hi Debug ctermfg=61 cterm=inverse
""hi LineNr ctermfg=245 "light solarized
"hi Todo ctermfg=125 ctermbg=none cterm=bold,underline
"
let b:current_syntax = "latex"
"
""EOF	vim: ts=8 noet tw=100 sw=8 sts=0
