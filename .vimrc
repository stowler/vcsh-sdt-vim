set nocompatible
set ruler

set vb
set t_vb&

" good settings for indent-based folding:
set foldmethod=indent
set foldcolumn=2
set autoindent
set shiftwidth=3
set tabstop=3
set expandtab

"automatically save and restore window states
" requires ~/.vim/view/ dir, 
" may be replaced by session code instead
"au BufWinLeave ?* mkview
"au BufWinEnter ?* silent loadview 
" TESTING NEW LINE...and this is what I added to the existing line on the second host
" ...and here is a second line I added on the second host


" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif


" FONT OPTIONS
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if has('gui_running')
  set guifont=Menlo\ Regular:h16
endif

" COLOR OPTIONS
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   " don't forget also need options in .gvimrc for macvim color:
   "	set bg=dark
   "	colorscheme solarized

   set t_Co=256

   " Switch syntax highlighting on, when the terminal has colors
   " Also switch on highlighting the last used search pattern.
   "if &t_Co > 2 || has("gui_running")
   "  syntax on
   "  set hlsearch
   "endif


   "colorscheme zenburn
   ":colo zenburn | set bg=dark
   syntax enable
   set background=dark
   colorscheme solarized

   " md is markdown
   autocmd BufRead,BufNewFile *.md set filetype=markdown
   autocmd BufRead,BufNewFile *.md set spell


" NETRW OPTIONS
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   let g:netrw_liststyle = 2           " 0=thin 1=long 2=wide 3=tree 
   let g:netrw_sort_sequence='\_^_.*[\/]$,\_^[1-9A-Za-z].*[\/]$,\.app[\/]$,*,\<\..*[\/]$,\<\..*[a-zA-Z0-9]$,\.info$,\.sw.$,\.bak$,\~$,\.DS_Store'



" ABBREVS
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   iabbrev sdtdv1 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   iabbrev sdtdv2 =================================================================
   iabbrev sdtdv3 #################################################################

   iabbrev sdtdv1s ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   iabbrev sdtdv2s ===========================================
   iabbrev sdtdv3s ###########################################

   iabbrev sdtdv1ss ~~~~~~~~~~~~~~~~~~~~~~~~~~~
   iabbrev sdtdv2ss ===========================
   iabbrev sdtdv3ss ###########################



" KEY REMAPPINGS
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   " avoid Esc-key RSI:
   :imap jj <Esc>
   " set PageUp to CTRL-k and PageDown to CTRL-j
   noremap <C-k> <C-u>
   noremap <C-j> <C-d>



" PRINTING OPTIONS for :hardcopy
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   :set pfn=courier:h8
   :set popt=portrait:n,paper:letter,number:y,left:15mm,right:15mm

