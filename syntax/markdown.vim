" Vim syntax file
" Language:	Markdown
" 
" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn match mdHeading			"^#\+ .*"
syn region mdInlineMath start=+\$+ end=+\$+
syn region mdMath start=+\$\$+ end=+\$\$+
" syn match mdInlineMath "\(^\| \)\$[^\$]\+\$\($\| \)"
" syn region mdInlineMath start=+ $+ end=+$ +
syn region mdInlineCode			start=+`+ end=+`+
syn region mdCode			start=+```+ end=+```+
syn match mdCodeIndented "^    .*"
syn region mdHtml			start=+<+ end=+>+ oneline
syn match mdDivider			"---\+"
" syn match mdBullets			"^\s*\*"
" syn match mdGlobalCommands		"[a-zA-Z_\-]\+: .*"
syn region mdSlideCommands		start=+\[\.+ end=+\]+
syn match mdTexKeyword "\\[a-zA-Z]\+" containedin=mdMath
syn match mdLink "\[.\{-}\](.\{-})" 
syn match mdQuote "^> ..*" contains=mdInlineCode
syn region mdQuoteFold start='> ' end='> ' contains=mdQuote fold

hi def link mdHeading Highlight
hi def link mdMath Operator
hi def link mdInlineMath Operator
hi def link mdCode Type
hi def link mdCodeIndented Type
hi def link mdInlineCode Type
hi def link mdHtml Comment
hi mdDivider ctermfg=64
hi def link mdGlobalCommands Number
hi mdSlideCommands ctermfg=240 cterm=bold
hi def link mdTexKeyword Operator
hi def link mdLink Function
hi def link mdQuote String

let b:current_syntax = "markdown"

"EOF	vim: ts=8 noet tw=100 sw=8 sts=0
"
