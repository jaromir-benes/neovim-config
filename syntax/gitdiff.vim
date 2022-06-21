" Vim syntax file
" Language: git diff output

if exists("b:current_syntax")
    finish
endif

syn case match
syn sync minlines=50

syn region gitdiffFile start="^diff --git" end="^\%(diff --git\)\@=" fold
syn region gitdiffFile start="^!git add" end="^\%(!git add\)\@=" fold
syn match gitdiffHighlight "^:: .*" contained containedin=gitdiffFile

syn match gitdiffHeader "^diff --git .*" contained containedin=gitdiffFile

syn match gitdiffMinus "^-.*" contained containedin=gitdiffFile
syn match gitdiffMinus "@ \zs-\d\+,\d\+" contained containedin=gitdiffFile

syn match gitdiffPlus "^+.*" contained containedin=gitdiffFile
syn match gitdiffPlus "+\d\+,\d\+\ze @" contained containedin=gitdiffFile
syn match gitdiffPlus "^\[-.*-\]" contained containedin=gitdiffFile

hi gitdiffHeader ctermfg=6 ctermbg=none cterm=bold
hi link gitdiffHighlight String
hi link gitdiffMinus DiffDelete
hi link gitdiffPlus DiffAdd

