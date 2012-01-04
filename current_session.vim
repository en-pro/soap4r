let SessionLoad = 1
if &cp | set nocp | endif
map ,C :delmarks a-z:delmarks A-Z
map ,M :DoShowMarks!
map ,s :Rstylesheet 
map ,j :Rjavascript 
map ,m :Rmigration 
map ,R :e config/routes.rb
map ,p :set nopaste
map ,P :set paste
map ,N :cnext
map ,a :Ack 
map ,n :TName "
map ,A :TlistAddFiles %
map ,L :TlistToggle
map ,k :tabnew
map ,l :tabn
map ,h :tabp
map ,D :split
map ,d :vsplit
map ,t :e .
let s:cpo_save=&cpo
set cpo&vim
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
map <F12> gg=G
map <F6> 6gt
map <F5> 5gt
map <F4> 4gt
map <F3> 3gt
map <F2> 2gt
map <F1> 1gt
inoremap jj 
inoremap kk 
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=indent,eol,start
set backup
set backupdir=~/.vim/backups
set cindent
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set clipboard=unnamed
set directory=~/.vim/tmp
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set formatoptions=tcqr
set guicursor=n-v-c:block-Cursor
set guioptions=aegimt
set guitablabel=%{TabGuiCaptionLabel()}
set helplang=en
set hlsearch
set incsearch
set ruler
set shiftwidth=2
set showmatch
set smarttab
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabline=%!TabCaptionLineFunction()
set tabstop=2
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/src/soap4r
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +13 lib/xsd/charset.rb
badd +21 lib/xsd/iconvcharset.rb
badd +0 lib/soap/property.rb
args ~/src/soap4r
edit lib/soap/property.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=:0,p0,t0
setlocal cinwords=if,else,while,do,for,switch,case
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
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
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
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
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,NOTE:\ Gem.all_load_paths\ is\ deprecated\ with\ no\ replacement.\ It\ will\ be\ removed\ on\ or\ after\ 2011-10-01.\
Gem.all_load_paths\ called\ from\ -e:1.\
NOTE:\ Gem.all_partials\ is\ deprecated\ with\ no\ replacement.\ It\ will\ be\ removed\ on\ or\ after\ 2011-10-01.\
Gem.all_partials\ called\ from\ /usr/lib/ruby/1.9.1/rubygems.rb:258.\
/usr/lib/ruby/1.9.1/rubygems.rb:259:in\ `block\ (2\ levels)\ in\ all_load_paths':\ undefined\ method\ `add'\ for\ \"/usr/lib/ruby/gems/1.9.1\":String\ (NoMethodError)\
\	from\ /usr/lib/ruby/1.9.1/rubygems.rb:427:in\ `block\ (2\ levels)\ in\ each_load_path'\
\	from\ /usr/lib/ruby/1.9.1/rubygems.rb:426:in\ `each'\
\	from\ /usr/lib/ruby/1.9.1/rubygems.rb:426:in\ `block\ in\ each_load_path'\
\	from\ /usr/lib/ruby/1.9.1/rubygems.rb:421:in\ `each'\
\	from\ /usr/lib/ruby/1.9.1/rubygems.rb:421:in\ `each_load_path'\
\	from\ /usr/lib/ruby/1.9.1/rubygems.rb:258:in\ `block\ in\ all_load_paths'\
\	from\ /usr/lib/ruby/1.9.1/rubygems.rb:257:in\ `each'\
\	from\ /usr/lib/ruby/1.9.1/rubygems.rb:257:in\ `all_load_paths'\
\	from\ /usr/lib/ruby/1.9.1/rubygems/deprecate.rb:63:in\ `block\ (2\ levels)\ in\ deprecate'\
\	from\ -e:1:in\ `<main>'\

setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 70 - ((69 * winheight(0) + 47) / 94)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
70
normal! 049l
lcd ~/src/soap4r
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
