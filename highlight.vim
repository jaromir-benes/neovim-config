hi Whitespace ctermfg=1 ctermbg=none cterm=none
hi NonText ctermfg=1 ctermbg=none cterm=none
hi Directory ctermfg=14 ctermbg=none cterm=none
hi Question ctermfg=15 ctermbg=none cterm=none
hi MoreMsg ctermfg=15 ctermbg=none cterm=none

hi Cursor ctermbg=none ctermfg=none
hi TermCursor cterm=inverse ctermbg=none ctermfg=none
hi Search ctermbg=12 cterm=none ctermfg=0
hi IncSearch ctermbg=2 cterm=none ctermfg=0
hi Visual ctermbg=10 cterm=none ctermfg=6
hi Folded ctermbg=none cterm=none ctermfg=4
hi FoldColumn ctermbg=none ctermfg=4 cterm=none

hi EndOfBuffer ctermfg=0 ctermbg=none cterm=none
hi SpellBad ctermbg=none ctermfg=none cterm=inverse
hi SpellLocal ctermbg=15 ctermfg=none cterm=none
hi LineNr ctermfg=1 ctermbg=none cterm=none
hi CursorLineNR ctermbg=0 ctermfg=13 cterm=none
hi CursorLine ctermbg=0 ctermfg=none cterm=none
hi CursorColumn ctermbg=none ctermfg=none cterm=none

hi TabLine ctermfg=0 ctermbg=3 cterm=none
hi TabLineSel ctermfg=0 ctermbg=8 cterm=none
hi Title ctermfg=none ctermbg=none cterm=none
hi TabLineFill ctermfg=3
hi VertSplit ctermfg=10 ctermbg=none cterm=none
hi StatusLine ctermfg=0 ctermbg=8 cterm=none
hi StatusLineNC ctermfg=0 ctermbg=3 cterm=none

hi ColorColumn ctermbg=0 ctermfg=none
hi MatchParen cterm=underline,bold ctermfg=9 ctermbg=none 

hi DiffAdd ctermbg=0 ctermfg=15 cterm=inverse,bold
hi DiffDelete ctermbg=0 ctermfg=9 cterm=inverse,bold
hi DiffChange ctermbg=0 ctermfg=5 cterm=inverse,bold
hi DiffText ctermbg=0 ctermfg=8 cterm=inverse,bold

hi Pmenu ctermfg=1 ctermbg=7 
hi PmenuSel ctermfg=0 ctermbg=6 cterm=bold
hi PmenuSbar ctermbg=10 ctermfg=10
hi PmenuThumb ctermbg=8 ctermbg=8
hi PreProc ctermfg=14 cterm=none ctermbg=none
hi PreCond ctermfg=4 cterm=underline ctermbg=none
hi Type ctermfg=14 cterm=none ctermbg=none
hi Comment ctermfg=15 cterm=none ctermbg=none
hi Label cterm=bold ctermfg=15 ctermbg=none
hi Heading cterm=none ctermfg=14 ctermbg=none
hi StrongHeading cterm=bold ctermfg=14 ctermbg=none
hi Underlined cterm=underline ctermbg=none ctermfg=15
hi SpecialComment cterm=none ctermbg=none ctermfg=1
hi Identifier cterm=none ctermbg=none ctermfg=4
hi Function ctermfg=5 cterm=none ctermbg=none
hi Keyword ctermfg=9 cterm=none ctermbg=none
hi Statement ctermfg=9 cterm=none ctermbg=none
hi Exception ctermfg=9 cterm=none ctermbg=none
hi Operator ctermfg=4 ctermbg=none cterm=none
hi Number cterm=none ctermfg=none ctermbg=none
hi Special ctermfg=none cterm=bold ctermbg=none
hi Debug ctermfg=4 cterm=none ctermbg=none
hi BoldComment cterm=bold ctermfg=15 ctermbg=none
hi String ctermfg=8
hi Typedef ctermfg=9 cterm=none
hi SpecialChar ctermfg=9
hi Todo ctermfg=11 ctermbg=none cterm=underline " bold,underline
hi Highlight ctermbg=none cterm=none ctermfg=9
hi Error ctermfg=2 ctermbg=none cterm=none
hi CommandWindow ctermbg=none ctermfg=5 cterm=none
hi ErrorMsg ctermfg=2 ctermbg=none cterm=none
hi! CommandLine ctermfg=6 cterm=none ctermbg=none

""""""""""""""""""""""""""""""""""""""""""""""""""""
" git-gutter
""""""""""""""""""""""""""""""""""""""""""""""""""""

hi SignColumn ctermbg=0
hi GitGutterAdd ctermbg=0 ctermfg=15
hi GitGutterDelete ctermbg=0 ctermfg=2
hi GitGutterChange ctermbg=0 ctermfg=8
hi diffAdded ctermfg=15
hi diffRemoved ctermfg=2
hi diffChanged ctermfg=8

let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '••'
let g:gitgutter_sign_removed = '--'
let g:gitgutter_sign_modified_removed = '•_'
let g:gitgutter_sign_removed_first_line = '‾‾'

