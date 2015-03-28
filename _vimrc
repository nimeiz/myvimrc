"�����ڷǼ���(VI)ģʽ��(����ģʽ�� TAB ��ȫ)
set nocompatible

"-------------------------------------------
"   ��������
"-------------------------------------------
"�����ı�����ʾ����
set encoding=utf-8
"�趨�ļ�����
"set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set fileencodings=utf-8,chinese,latin-1
"if has("win32")
"    set fileencoding=chinese
"else
"    set fileencoding=utf-8
"endif

"����˵����Ҽ��˵�����
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"����consle�������
language messages zh_CN.utf-8
"-------------------------------------------


"-------------------------------------------
"   �༭�������Ż�
"-------------------------------------------
"lcd d:/Yager_Files  "����GvimĬ��Ŀ¼
lcd d:/  "����GvimĬ��Ŀ¼
set bsdir=buffer    "�趨�ļ������Ŀ¼Ϊ��ǰĿ¼
set autochdir       "�趨�Զ��л�Ŀ¼
"   ����<Leader>��Ϊ,��<Leader>Ĭ��Ϊ\
let mapleader=","
let maplocalleader=","

"����ļ�����
filetype on
"��Բ�ͬ���ļ����ò�ͬ��������ʽ
filetype indent on
"������,�����ļ����Ͳ��
filetype plugin on
"�������ܲ�ȫ,��������ļ����͵��Զ�����
filetype plugin indent on

"�����﷨��������
syntax enable
syntax on

"===Editing related===
"���趨����ʱ���ڲ���״̬�޷����˸��deleteɾ���س���
set whichwrap=b,s,<,>,[,]
set mouse=a
set selectmode=
set mousemodel=popup
set keymodel=
set selection=inclusive

" �����ļ�(swrap file)���Զ�����(auto backup)���á�
set nobackup
"if g:OS#win
    set directory=$VIM\tmp
"else
"    set directory=~/.tmp
"endif
" �־û��������á�
if has("persistent_undo")
    set undofile
    set undolevels=1000

"    if g:OS#win
        "set undodir=$VIM\undodir
        set undodir=$VIM\tmp
        au BufWritePre undodir/* setlocal noundofile
"    else
"        set undodir=~/.undodir
"        au BufWritePre ~/.undodir/* setlocal noundofile
"    endif
endif
"-------------------------------------------


"-------------------------------------------
"   ��������ʾ
"-------------------------------------------
"��ɫ���
"colorscheme pablo

"�������ģʽ
set shortmess=atI
"�趨 GUI ѡ��
"set guioptions=gmrLtT  m:�˵� T:������ t:���Լ��µĲ˵�
set guioptions=gmrL
"�����и߶�
set cmdheight=1
"�趨�о� ( GUI ��������Ч )
set linespace=0
set wildmenu            "�����в�ȫ����ǿģʽ���У���ʾС�˵���
"set ruler               "ru,��ʾ��ߣ�״̬���ұߣ�
set showmatch           "sm,������תƥ��Ķ�Ӧ����
" ״̬����
set laststatus=2
set statusline=%t\ %1*%m%*\ %1*%r%*\ %2*%h%*%w%=[%l%3*/%L(%p%%)%*,%c%V]\ [%b:0x%B]\ [%{&ft==''?'TEXT':toupper(&ft)},%{toupper(&ff)},%{toupper(&fenc!=''?&fenc:&enc)}%{&bomb?',BOM':''}%{&eol?'':',NOEOL'}]
"let &statusline=' %t %{&mod?(&ro?"*":"+"):(&ro?"=":" ")} %1*|%* %{&ft==""?"any":&ft} %1*|%* %{&ff} %1*|%* %{(&fenc=="")?&enc:&fenc}%{(&bomb?",BOM":"")} %1*|%* %=%1*|%* 0x%B %1*|%* (%l,%c%V) %1*|%* %L %1*|%* %P'

"�Զ�����
"set nowrap
set wrap
"��������������
set nolinebreak
"set linebreak
"�п�����ʱ�Զ����뻻�з���
"set textwidth=80
set textwidth=0

" Ĭ�ϴ��ڴ�С����ʾ96�У�30��
set columns=96
"���볤����ʾ
"set colorcolumn=81
set colorcolumn=90
set lines=30
" Ĭ�ϴ���λ��
winp 300 200

"������ ��ռ� �ڲ��� ����ռ�:�������κ��ı��Ŀռ䡣�绻�з�֮��
"set virtualedit=all
"��ֹ�� ��ռ� �ڲ���
set virtualedit=

"===��������===
set cindent             "��C/C++�����Զ�����
set autoindent          "�Զ����룬����ǰ�ж����ʽӦ�õ���һ��
"set noautoindent
set smartindent         "���ܶ��룬���õ�֧�ִ����д
set cinoptions=:0g0t0(susj1   "�趨C/C++����Զ�������ѡ��

"�趨 Tab �������Ŀո���
set tabstop=4
"�趨�༭�������ٿո���Ϊһ������
set shiftwidth=4
"������ת��Ϊ�ո�
set expandtab
"���ð��˸��ʱ����һ��ɾ��4���ո�
set softtabstop=4
"���ð��˸��ʱ����һ��ɾ��4���ո�
set smarttab
"��Tab���Զ�ת���ɿո� ������ҪTab��ʱʹ��[Ctrl + V + Tab]
set expandtab
%retab!



"����ģʽ�£����������ɾ�����ǰ���ַ������׿հס����з��������֮ǰ���ַ�
set backspace=indent,eol,start

"��������ʷ��¼
set history=5000

"������������
set incsearch
"set noincsearch
"����ʱ���Դ�Сд
"set ignorecase
"set noignorecase
"������ʾ������� hls
set hlsearch
" ������ǰ��
" highlight CurrentLine guibg=darkgrey guifg=white
" au! Cursorhold * exe 'match CurrentLine /\%' . line('.') . 'l.*/'
" set ut=100
"
" set cursorcolumn
set cursorline
"�趨�۵���ʽ
"set foldmethod=manual
set foldmethod=syntax
set foldlevel=6
set foldcolumn=0

"�����ַ�������Ϊ���ʵ�һ���� (ASCII)��
"set iskeyword+=33-47,58-64,91-96,123-128
" ���ÿ�Ȳ���������(�� �����٢ڡ� )Ϊ˫����ı���
" @see http://blog.sina.com.cn/s/blog_46dac66f010006db.html
set ambiwidth=double

set guifont=Microsoft_Yahei_Mono:h10:cANSI,Fixedsys:h12
set guifontwide=Microsoft_Yahei_Mono:h10:cANSI,Fixedsys:h12
"-------------------------------------------


"-------------------------------------------
"   ��ݼ�
"-------------------------------------------
"ѡ���ı�ʱͨ��TAB��Shift+TAB����
vmap <tab> >gv
vmap <s-tab> <gv

" ѡ��һ�����ֲ�ȫ�������������
vnoremap  *  y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
vnoremap  #  y?<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>

" ���ڼ���ƶ����á�
map <Leader>w <C-W>w
" map <C-j> <C-W>j
" map <C-k> <C-W>k
" map <C-l> <C-W>l
" map <C-h> <C-W>h
" 
" map <C-kPlus> <C-w>+
" map <C-kMinus> <C-w>-
" map <C-S-kPlus> <C-w>_
" map <C-S-kMinus> <C-w>_

"��������ģʽ�£���Ctrl+V����Ĵ���"�е�����
cmap <C-V> <C-R>"
"���������java
map <F3> :w<CR>:!javac %<CR><CR>
map <F4> :!java %<<CR><CR>
"������󻯣���С������ԭ
map <Leader>mx :simalt ~x<CR>
map <Leader>mn :simalt ~n<CR>
"recover
map <Leader>re :simalt ~r<CR>

" ������������
map <Leader>fr :set guifont=<CR>:set gfw=<CR>

"��Ctrl+D�ڲ���ģʽ�²��뵱ǰʱ��
"imap <C-D> --<C-R>=strftime("%c")<CR>--
imap <C-D> <C-R>=strftime("%Y-%m-%d %H:%M:%S %A")<CR>

"markdown�ı���
map <Leader>h2 <ESC>I## <ESC>
vmap <Leader>h2 I## <ESC>gv
map <Leader>h3 <ESC>I### <ESC>
vmap <Leader>h3 I### <ESC>gv
map <Leader>h4 <ESC>I#### <ESC>
vmap <Leader>h4 I#### <ESC>gv
map <Leader>h5 <ESC>I##### <ESC>
vmap <Leader>h5 I##### <ESC>gv
" �ָ���
map <Leader>fgx I* * *<ESC>o<ESC>
"-------------------------------------------

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction


"-------------------------------------------
"   Vundle ����
"-------------------------------------------
" Vundle
" ��װ֮ǰ����Windows�����£�����Ҫcurl�ġ����Ұ�git/bin���뵽Path֮��Ҳ�ǿ��Եģ�
" �ٷ��Ǹ���һ���ű�ȥ����curl.exe
" ��װVundle��
" ���Լ����û�Ŀ¼�£�һ���������cmd֮���Ĭ��·��
" cd %userprofile%
" cd %USERPROFILE%
" git clone https://github.com/gmarik/Vundle.vim.git vimfiles/bundle/Vundle.vim
" Ȼ��ͱ༭_vimrc�ˣ��޸��� rtp �� path �Ķ��巽ʽ�� 
" �μ��� https://github.com/gmarik/Vundle.vim/wiki/Vundle-for-Windows
"        https://github.com/gmarik/Vundle.vim

" ��һ�о������ˣ����ԣ����ﲻ��Ҫ��
" set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim/
let path='~/vimfiles/bundle'

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
call vundle#begin(path)

"  ����ƽ̨��ʼ����ʽ
"set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
"
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" vim-markdown�������������markdown�ļ���
" https://github.com/plasticboy/vim-markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" spring ��ɫ����
Plugin 'spring.vim'

call vundle#end()            " required
filetype plugin indent on    " required
" ��װ����ǣ� 
" ����vim֮��  :PluginInstall

"�Ѱ�װ��spring��ɫ������
colorscheme spring
"-------------------------------------------

