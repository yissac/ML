let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>IMAP_JumpBack =IMAP_Jumpfunc('b', 0)
inoremap <silent> <Plug>IMAP_JumpForward =IMAP_Jumpfunc('', 0)
inoremap <Right> <Nop>
inoremap <Left> <Nop>
inoremap <Down> <Nop>
inoremap <Up> <Nop>
vmap <NL> <Plug>IMAP_JumpForward
nmap <NL> <Plug>IMAP_JumpForward
nnoremap  :nohl                " Remove highlighting from last search
vnoremap < <gv " better indentation     " indent and keep highlighting
vnoremap > >gv " better indentation     " indent and keep highlighting
vnoremap \s :sort            " sort lines
nmap \l :set list!           " Shortcut to rapidly toggle 'set list'
nmap \v :tabedit $MYVIMRC    " open vimrc file for editing
nnoremap \nt :NERDTree
nnoremap \W :%s/\s\+$//:let @/=''
nnoremap \tl :TlistToggle
nmap \c : silent w\ll\lv
nnoremap <silent> \nu :call g:ToggleRelativeNumber()
nmap gx <Plug>NetrwBrowseX
nnoremap j gj
nnoremap k gk
nnoremap ~ b~A
vnoremap <silent> <F9> :call conque_term#send_selected(visualmode())
nnoremap <silent> <F10> :call conque_term#send_file()
nnoremap <F8> :call conque_term#set_mappings("toggle")
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
vnoremap <silent> <Plug>IMAP_JumpBack `<i=IMAP_Jumpfunc('b', 0)
vnoremap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
vnoremap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>i=IMAP_Jumpfunc('b', 0)
vnoremap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>i=IMAP_Jumpfunc('', 0)
nnoremap <silent> <Plug>IMAP_JumpBack i=IMAP_Jumpfunc('b', 0)
nnoremap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
nnoremap <silent> <F11> :call conque_term#exec_file()
nnoremap <F4> :call UpdateTags()
nnoremap <Right> <Nop>
nnoremap <Left> <Nop>
nnoremap <Down> <Nop>
nnoremap <Up> <Nop>
imap <NL> <Plug>IMAP_JumpForward
inoremap jk 
inoremap kj 
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=indent,eol,start
set backupdir=~/tmp/vimfiles/backup//
set cindent
set completeopt=menuone,menu,longest,preview
set dictionary=/usr/share/dict/words
set directory=~/tmp/vimfiles/swap//
set fileencodings=ucs-bom,utf-8,default,latin1
set grepprg=grep\ -nH\ $*
set helplang=en
set hidden
set history=700
set hlsearch
set incsearch
set laststatus=2
set listchars=tab:▸\ ,eol:¬
set omnifunc=syntaxcomplete#Complete
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,~/.vim/bundle/conque_2.2,~/.vim/bundle/nerdtree,~/.vim/bundle/vim-latex,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set showcmd
set showfulltag
set showmatch
set sidescroll=1
set smartindent
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set thesaurus=~/Documents/sys/thesaurus/mthesaur.txt
set undodir=~/tmp/vimfiles/undo//
set undofile
set updatetime=50
set wildmenu
set wildmode=list:longest
set winaltkeys=no
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/projects/ML
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +64 src/main.c
badd +1 src/list.c
badd +13 include/list.h
badd +0 bash\ -\ 1
badd +0 bash\ -\ 2
args src/main.c
edit src/main.c
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 88 + 88) / 177)
exe 'vert 2resize ' . ((&columns * 88 + 88) / 177)
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 64 - ((24 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
64
normal! 016|
wincmd w
argglobal
enew
file bash\ -\ 2
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <silent> <End> :py ConqueTerm_2.write(u("\x1bOF"))
inoremap <buffer> <silent> <Home> :py ConqueTerm_2.write(u("\x1bOH"))
inoremap <buffer> <silent> <Left> :py ConqueTerm_2.write(u("\x1b[D"))
inoremap <buffer> <silent> <Right> :py ConqueTerm_2.write(u("\x1b[C"))
inoremap <buffer> <silent> <Down> :py ConqueTerm_2.write(u("\x1b[B"))
inoremap <buffer> <silent> <Up> :py ConqueTerm_2.write(u("\x1b[A"))
inoremap <buffer> <silent> <S-Space> :py ConqueTerm_2.write(u(" "))
inoremap <buffer> <silent> <S-BS> :py ConqueTerm_2.write(u("\x08"))
inoremap <buffer> <silent> <BS> :py ConqueTerm_2.write(u("\x08"))
nnoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(3)
nnoremap <buffer> <silent> C :echo "Change mode disabled in shell."
nnoremap <buffer> <silent> P :py ConqueTerm_2.write_expr("@@")a
nnoremap <buffer> <silent> R :echo "Replace mode disabled in shell."
nnoremap <buffer> <silent> S :echo "Change mode disabled in shell."
nnoremap <buffer> <silent> [p :py ConqueTerm_2.write_expr("@@")a
nnoremap <buffer> <silent> ]p :py ConqueTerm_2.write_expr("@@")a
nnoremap <buffer> <silent> c :echo "Change mode disabled in shell."
nnoremap <buffer> <silent> p :py ConqueTerm_2.write_expr("@@")a
nnoremap <buffer> <silent> r :echo "Replace mode disabled in shell."
nnoremap <buffer> <silent> s :echo "Change mode disabled in shell."
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(1)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(2)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(3)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(4)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(5)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(6)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(7)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(8)
inoremap <buffer> <silent> 	 :py ConqueTerm_2.write_ord(9)
inoremap <buffer> <silent> <NL> :py ConqueTerm_2.write_ord(10)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(11)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(12)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(13)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(14)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(15)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(16)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(17)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(18)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(19)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(20)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(21)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(22)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(23)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(24)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(25)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(26)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(27)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(28)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(29)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(30)
inoremap <buffer> <silent>  :py ConqueTerm_2.write_ord(31)
inoremap <buffer> <silent>   :py ConqueTerm_2.write(u(" "))
inoremap <buffer> <silent> ! :py ConqueTerm_2.write_ord(33)
inoremap <buffer> <silent> " :py ConqueTerm_2.write_ord(34)
inoremap <buffer> <silent> # :py ConqueTerm_2.write_ord(35)
inoremap <buffer> <silent> $ :py ConqueTerm_2.write_ord(36)
inoremap <buffer> <silent> % :py ConqueTerm_2.write_ord(37)
inoremap <buffer> <silent> & :py ConqueTerm_2.write_ord(38)
inoremap <buffer> <silent> ' :py ConqueTerm_2.write_ord(39)
inoremap <buffer> <silent> ( :py ConqueTerm_2.write_ord(40)
inoremap <buffer> <silent> ) :py ConqueTerm_2.write_ord(41)
inoremap <buffer> <silent> * :py ConqueTerm_2.write_ord(42)
inoremap <buffer> <silent> + :py ConqueTerm_2.write_ord(43)
inoremap <buffer> <silent> , :py ConqueTerm_2.write_ord(44)
inoremap <buffer> <silent> - :py ConqueTerm_2.write_ord(45)
inoremap <buffer> <silent> . :py ConqueTerm_2.write_ord(46)
inoremap <buffer> <silent> / :py ConqueTerm_2.write_ord(47)
inoremap <buffer> <silent> 0 :py ConqueTerm_2.write_ord(48)
inoremap <buffer> <silent> 1 :py ConqueTerm_2.write_ord(49)
inoremap <buffer> <silent> 2 :py ConqueTerm_2.write_ord(50)
inoremap <buffer> <silent> 3 :py ConqueTerm_2.write_ord(51)
inoremap <buffer> <silent> 4 :py ConqueTerm_2.write_ord(52)
inoremap <buffer> <silent> 5 :py ConqueTerm_2.write_ord(53)
inoremap <buffer> <silent> 6 :py ConqueTerm_2.write_ord(54)
inoremap <buffer> <silent> 7 :py ConqueTerm_2.write_ord(55)
inoremap <buffer> <silent> 8 :py ConqueTerm_2.write_ord(56)
inoremap <buffer> <silent> 9 :py ConqueTerm_2.write_ord(57)
inoremap <buffer> <silent> : :py ConqueTerm_2.write_ord(58)
inoremap <buffer> <silent> ; :py ConqueTerm_2.write_ord(59)
inoremap <buffer> <silent> < :py ConqueTerm_2.write_ord(60)
inoremap <buffer> <silent> = :py ConqueTerm_2.write_ord(61)
inoremap <buffer> <silent> > :py ConqueTerm_2.write_ord(62)
inoremap <buffer> <silent> ? :py ConqueTerm_2.write_ord(63)
inoremap <buffer> <silent> @ :py ConqueTerm_2.write_ord(64)
inoremap <buffer> <silent> A :py ConqueTerm_2.write_ord(65)
inoremap <buffer> <silent> B :py ConqueTerm_2.write_ord(66)
inoremap <buffer> <silent> C :py ConqueTerm_2.write_ord(67)
inoremap <buffer> <silent> D :py ConqueTerm_2.write_ord(68)
inoremap <buffer> <silent> E :py ConqueTerm_2.write_ord(69)
inoremap <buffer> <silent> F :py ConqueTerm_2.write_ord(70)
inoremap <buffer> <silent> G :py ConqueTerm_2.write_ord(71)
inoremap <buffer> <silent> H :py ConqueTerm_2.write_ord(72)
inoremap <buffer> <silent> I :py ConqueTerm_2.write_ord(73)
inoremap <buffer> <silent> J :py ConqueTerm_2.write_ord(74)
inoremap <buffer> <silent> K :py ConqueTerm_2.write_ord(75)
inoremap <buffer> <silent> L :py ConqueTerm_2.write_ord(76)
inoremap <buffer> <silent> M :py ConqueTerm_2.write_ord(77)
inoremap <buffer> <silent> N :py ConqueTerm_2.write_ord(78)
inoremap <buffer> <silent> O :py ConqueTerm_2.write_ord(79)
inoremap <buffer> <silent> P :py ConqueTerm_2.write_ord(80)
inoremap <buffer> <silent> Q :py ConqueTerm_2.write_ord(81)
inoremap <buffer> <silent> R :py ConqueTerm_2.write_ord(82)
inoremap <buffer> <silent> S :py ConqueTerm_2.write_ord(83)
inoremap <buffer> <silent> T :py ConqueTerm_2.write_ord(84)
inoremap <buffer> <silent> U :py ConqueTerm_2.write_ord(85)
inoremap <buffer> <silent> V :py ConqueTerm_2.write_ord(86)
inoremap <buffer> <silent> W :py ConqueTerm_2.write_ord(87)
inoremap <buffer> <silent> X :py ConqueTerm_2.write_ord(88)
inoremap <buffer> <silent> Y :py ConqueTerm_2.write_ord(89)
inoremap <buffer> <silent> Z :py ConqueTerm_2.write_ord(90)
inoremap <buffer> <silent> [ :py ConqueTerm_2.write_ord(91)
inoremap <buffer> <silent> \ :py ConqueTerm_2.write_ord(92)
inoremap <buffer> <silent> ] :py ConqueTerm_2.write_ord(93)
inoremap <buffer> <silent> ^ :py ConqueTerm_2.write_ord(94)
inoremap <buffer> <silent> _ :py ConqueTerm_2.write_ord(95)
inoremap <buffer> <silent> ` :py ConqueTerm_2.write_ord(96)
inoremap <buffer> <silent> a :py ConqueTerm_2.write_ord(97)
inoremap <buffer> <silent> b :py ConqueTerm_2.write_ord(98)
inoremap <buffer> <silent> c :py ConqueTerm_2.write_ord(99)
inoremap <buffer> <silent> d :py ConqueTerm_2.write_ord(100)
inoremap <buffer> <silent> e :py ConqueTerm_2.write_ord(101)
inoremap <buffer> <silent> f :py ConqueTerm_2.write_ord(102)
inoremap <buffer> <silent> g :py ConqueTerm_2.write_ord(103)
inoremap <buffer> <silent> h :py ConqueTerm_2.write_ord(104)
inoremap <buffer> <silent> i :py ConqueTerm_2.write_ord(105)
inoremap <buffer> <silent> j :py ConqueTerm_2.write_ord(106)
inoremap <buffer> <silent> k :py ConqueTerm_2.write_ord(107)
inoremap <buffer> <silent> l :py ConqueTerm_2.write_ord(108)
inoremap <buffer> <silent> m :py ConqueTerm_2.write_ord(109)
inoremap <buffer> <silent> n :py ConqueTerm_2.write_ord(110)
inoremap <buffer> <silent> o :py ConqueTerm_2.write_ord(111)
inoremap <buffer> <silent> p :py ConqueTerm_2.write_ord(112)
inoremap <buffer> <silent> q :py ConqueTerm_2.write_ord(113)
inoremap <buffer> <silent> r :py ConqueTerm_2.write_ord(114)
inoremap <buffer> <silent> s :py ConqueTerm_2.write_ord(115)
inoremap <buffer> <silent> t :py ConqueTerm_2.write_ord(116)
inoremap <buffer> <silent> u :py ConqueTerm_2.write_ord(117)
inoremap <buffer> <silent> v :py ConqueTerm_2.write_ord(118)
inoremap <buffer> <silent> w :py ConqueTerm_2.write_ord(119)
inoremap <buffer> <silent> x :py ConqueTerm_2.write_ord(120)
inoremap <buffer> <silent> y :py ConqueTerm_2.write_ord(121)
inoremap <buffer> <silent> z :py ConqueTerm_2.write_ord(122)
inoremap <buffer> <silent> { :py ConqueTerm_2.write_ord(123)
inoremap <buffer> <silent> | :py ConqueTerm_2.write_ord(124)
inoremap <buffer> <silent> } :py ConqueTerm_2.write_ord(125)
inoremap <buffer> <silent> ~ :py ConqueTerm_2.write_ord(126)
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=hide
setlocal buflisted
setlocal buftype=nofile
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=nic
setlocal conceallevel=3
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'conque_term'
setlocal filetype=conque_term
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=syntaxcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'conque_term'
setlocal syntax=conque_term
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 88 + 88) / 177)
exe 'vert 2resize ' . ((&columns * 88 + 88) / 177)
tabedit include/list.h
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 88 + 88) / 177)
exe 'vert 2resize ' . ((&columns * 88 + 88) / 177)
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit src/list.c
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 88 + 88) / 177)
exe 'vert 2resize ' . ((&columns * 88 + 88) / 177)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
