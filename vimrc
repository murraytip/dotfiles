"MJT's vimrc, last updated on 
"Sun 22 Nov 2015 19:57:49 EST

if has ('gui_running')	"sets colorscheme to default in macvim, but desert in vim
	colorscheme default
else
	colorscheme desert
endif

set noswapfile	"this turns off the annoying swap files
set hlsearch	"this turns on highlight in search
filetype plugin indent on "this turns on smart coloring depending on language
syntax on	"this turns on filetype recognition
set number	"this turns on line numbers
set wrap	"this turns on soft word wrap
set linebreak	"this limits the characters that can be wrapped to ' ^I!@*-+;:,./? '
set textwidth=0	"this command, and the command below, ensures soft word wrap
set wrapmargin=0
set ignorecase	"this sets case-insensitive search
set smartcase	"if there is at least one capital letter, the search becomes case-sensitive again
set ruler	"show the line and column number in the bottom right of the screen
autocmd BufNewFile,BufFilePre,BufRead README.md,*.text,*.markdown set filetype=markdown "this sets proper Markdown highlighting for files with these extensions
