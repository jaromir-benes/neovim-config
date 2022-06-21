" Vim syntax file
" Language:	EViews Program
" Last Change:	January 6, 2019
" 
" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn case ignore

" Keywords
syn keyword fameKeyword			loop for end if else procedure scalar local date in

" Variables
syn match fameVariable			"$\w\+"

" Databank names
syn match fameDatabank			"'"

" Strings
syn region fameString   	        start=+"+ end=+"+	oneline skip=+""+
syn match fameUnfinishedString        	'"[^"]*$'

" Comments
syn match fameComment			"--.*$"	contains=fameTodo

" Define the default highlighting.
" Only when an item doesn't have highlighting yet

hi def link fameKeyword			Keyword
hi def link fameVariable		Statement
hi def link fameDatabank		Typedef
hi def link fameString                	String
hi def link fameUnfinishedString      	Debug
hi def link fameComment			Comment

let b:current_syntax = "fame"

"EOF	vim: ts=8 noet tw=100 sw=8 sts=0
