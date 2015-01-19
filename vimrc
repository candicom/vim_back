
color desert 


" Indent settings
set autoindent
set cindent
set ts=4
set sw=4
set sts=4


syntax on
set bs=indent,eol,start
"set nu
set showmatch
set iminsert=0
set imsearch=0
set incsearch
set hls
set ruler
set sel=exclusive
set nobackup


"filetype plugin on



"==========================================================
"==== Abbreviations =======================================
"==========================================================
ab _in #include
ab _de #define
ab _ifd #ifdef <cr>#endif<up><right>
ab _ifn #ifndef <cr>#endif<up><right>
ab _ts typedef struct
ab _{ {<cr>}<up>
ab _pr printf(" ");<left><left><left><left>
ab _* /**<cr><home> *<cr><home> */<up><end>

ab _``` ```c<cr><cr>```<up>


"==========================================================
"==== Maps ================================================
"==========================================================
"
" F1	: File explorer
" F2	: save 
" F3	: exit 
" F4	: bash
" F5	: tag list open
" F6	: Trinity Toggle All
" F7	: Trinity Toggle Source Explore
" F8	: Trinity Toggle NERD-Tree
" F10	:
" F11	:
" F12	:
"
map <f1> :30vs./<cr>
imap <f1> <esc> :30vs./<cr>

map <f2> :w<cr>
imap <f2> <esc> :w<cr>

map <f3> :q<cr>
imap <f3> <esc> :q<cr>

map <f4> :!bash<cr>
imap <f4> <esc> :!bash<cr>

map <f5> :Tlist<cr>
imap <f5> <esc> :Tlist<cr>

" Tlist auto close
"let Tlist_Exit_OnlyWindow=1

map <f6> :TrinityToggleAll<cr>
imap <f6> <esc> :TrinityToggleAll<cr>

map <f7> :TrinityToggleSourceExplorer<cr>
imap <f7> <esc> :TrinityToggleSourceExplorer<cr>

map <f8> :TrinityToggleNERDTree<cr>
imap <f8> <esc> :TrinityToggleNERDTree<cr>

" :map  <f9>    :
" :map  <f10>   :
" :map  <f11>   :
" :map  <f12>   :



"==========================================================
"===== file buffer ========================================
"==========================================================
map ,1 :b!1<cr>
map ,,,1 :bd!1<cr>

map ,2 :b!2<cr>
map ,,,2 :bd!2<cr>

map ,3 :b!3<cr>
map ,,,3 :bd!3<cr>

map ,4 :b!4<cr>
map ,,,4 :bd!4<cr>

map ,5 :b!5<cr>
map ,,,5 :bd!5<cr>

map ,6 :b!6<cr>
map ,,,6 :bd!6<cr>

map ,7 :b!7<cr>
map ,,,7 :bd!7<cr>

map ,8 :b!8<cr>
map ,,,8 :bd!8<cr>

map ,9 :b!9<cr>
map ,,,9 :bd!9<cr>

map ,0 :b!10<cr>
map ,,,0 :bd!10<cr>

map ,w :bw<cr>



"==========================================================
"===== multiple window ====================================
"==========================================================
map vsv :vs<cr>
map vnv :new<cr>



"==========================================================
"===== set tags ===========================================
"==========================================================
set tags=tags
set tags+=../tags
set tags+=../../tags
set tags+=../../../tags
set tags+=../../../../tags
set tags+=../../../../../tags
set tags+=../../../../../../tags



"==========================================================
"===== set cscope  ========================================
"==========================================================
set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb

if filereadable("./cscope.out")
   cs add cscope.out
endif
set csverb

func! Css()
	let css = expand("<cword>")
	new
	exe "cs find s ".css
	if getline(1) == " "
		exe "q!"
	endif
endfunc
nmap ,css :call Css()<cr>

func! Csc()
	let csc = expand("<cword>")
	new
	exe "cs find s ".csc
	if getline(1) == " "
		exe "q!"
	endif
endfunc
nmap ,csc :call Csc()<cr>

func! Csd()
	let csd = expand("<cword>")
	new
	exe "cs find s ".csd
	if getline(1) == " "
		exe "q!"
	endif
endfunc
nmap ,csd :call Csd()<cr>

func! Csg()
	let csg = expand("<cword>")
	new
	exe "cs find s ".csg
	if getline(1) == " "
		exe "q!"
	endif
endfunc
nmap ,csg :call Csg()<cr>



"==========================================================
"===== man page setting ===================================
"==========================================================
func! Man()
    let sm = expand("<cword>")
    exe "!man -S 2:3:$:5:6:7:8:9:tcl:n:l:p:o ".sm
endfunc
nmap ,ma :call Man()<cr><cr>



"==========================================================
"===== syntax style =======================================
"==========================================================
"
"=== nesC file ===
"augroup filetypedetect
" au! BufRead,BufNewFile *nc setfiletype nc
"augroup END





