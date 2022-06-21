" Vim syntax file
" Language:	EViews Program
" Last Change:	January 6, 2019
" 
" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syntax case ignore

" Keywords
syn keyword eviewsKeyword		for next if else endif endfor subroutine endsub

" Variables
syn match eviewsVariable		"[%!]\w\+"

" Strings
syn region eviewsString   	        start=+"+ end=+"+	oneline skip=+""+
syn match eviewsUnfinishedString        '"[^"]*$'

" Comments
syn match eviewsComment			"'.*$"	contains=eviewsQuestion
syn match eviewsStatusline		"statusline .*$"
syn match eviewsQuestion		"Q:.*" containedin=eviewsComment

" Fold subroutines

hi def link eviewsKeyword		Keyword
hi def link eviewsVariable		Statement
hi def link eviewsString                String
hi def link eviewsUnfinishedString      Debug
hi def link eviewsComment		Comment
hi def link eviewsStatusline		Label
hi def link eviewsQuestion		Todo

setlocal foldmethod=manual

let b:current_syntax = "eviews"

"EOF	vim: ts=8 noet tw=100 sw=8 sts=0
