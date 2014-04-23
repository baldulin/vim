" Enable Pathogen
call pathogen#infect()
call pathogen#helptags()

" Filetype
filetype on
filetype plugin indent on

" Shift stuff
set tabstop=4
set shiftwidth=4
set expandtab

" Folding
set foldmethod=indent
set foldlevel=20
set foldlevelstart=20

" Task List
map <leader>td <Plug>TaskList

" Syntax, auto indent and numbering
syntax on
set autoindent
set number

" Add .zcml to .xml 
autocmd BufRead,BufNewFile *.zcml set ft=xml

" Tab completion 
set omnifunc=syntaxcomplete#Complete

" Python Tab Complete
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" Spell Checker
set spelllang=en,de
set spell

" Change Spell Checker color
hi clear SpellBad
hi SpellBad cterm=underline,bold ctermfg=DarkRed


" Latex Suite settings
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

" Clipboard of x is default
set clipboard=unnamedplus

" Rope configuration
map <leader>j :RopeGoToDefinition<CR>
map <leader>r :RopeRename<CR>
