"运行在非兼容(VI)模式下(命令模式下 TAB 补全)
set nocompatible

"-------------------------------------------
"   中文乱码
"-------------------------------------------
"处理文本中显示乱码
set encoding=utf-8
"设定文件编码
"set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
"set fileencodings=utf-8,chinese,latin-1
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"if has("win32")
"    set fileencoding=chinese
"else
"    set fileencoding=utf-8
"endif

"处理菜单及右键菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"处理consle输出乱码
language messages zh_CN.utf-8
"-------------------------------------------


"-------------------------------------------
"   编辑、操作优化
"-------------------------------------------
"lcd d:/Yager_Files  "设置Gvim默认目录
lcd d:/  "设置Gvim默认目录
set bsdir=buffer    "设定文件浏览器目录为当前目录
set autochdir       "设定自动切换目录
"   定义<Leader>键为,，<Leader>默认为\
let mapleader=","
let maplocalleader=","

"检测文件类型
filetype on
"针对不同的文件采用不同的缩进方式
filetype indent on
"允许插件,启用文件类型插件
filetype plugin on
"启动智能补全,启用针对文件类型的自动缩进
filetype plugin indent on

"开启语法高亮功能
syntax enable
syntax on

"===Editing related===
"不设定此项时，在插入状态无法用退格和delete删除回车符
set whichwrap=b,s,<,>,[,]
set mouse=a
set selectmode=
set mousemodel=popup
set keymodel=
set selection=inclusive

" 交换文件(swrap file)，自动备份(auto backup)设置。
set nobackup
"if g:OS#win
    set directory=$VIM\tmp
"else
"    set directory=~/.tmp
"endif
" 持久化撤销设置。
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
"   界面与显示
"-------------------------------------------
"配色风格
"colorscheme pablo

"简洁启动模式
set shortmess=atI
"设定 GUI 选项
"set guioptions=gmrLtT  m:菜单 T:工具栏 t:可以剪下的菜单
set guioptions=gmrL
"命令行高度
set cmdheight=1
"设定行距 ( GUI 界面中生效 )
set linespace=0
set wildmenu            "命令行补全以增强模式运行（显示小菜单）
"set ruler               "ru,显示标尺（状态栏右边）
set showmatch           "sm,短暂跳转匹配的对应括号
" 状态栏。
set laststatus=2
set statusline=%t\ %1*%m%*\ %1*%r%*\ %2*%h%*%w%=[%l%3*/%L(%p%%)%*,%c%V]\ [%b:0x%B]\ [%{&ft==''?'TEXT':toupper(&ft)},%{toupper(&ff)},%{toupper(&fenc!=''?&fenc:&enc)}%{&bomb?',BOM':''}%{&eol?'':',NOEOL'}]
"let &statusline=' %t %{&mod?(&ro?"*":"+"):(&ro?"=":" ")} %1*|%* %{&ft==""?"any":&ft} %1*|%* %{&ff} %1*|%* %{(&fenc=="")?&enc:&fenc}%{(&bomb?",BOM":"")} %1*|%* %=%1*|%* 0x%B %1*|%* (%l,%c%V) %1*|%* %L %1*|%* %P'

"自动折行
"set nowrap
set wrap
"按完整单词折行
set nolinebreak
"set linebreak
"行宽（输入时自动插入换行符）
"set textwidth=80
set textwidth=0

" 默认窗口大小，显示96列，30行
set columns=96
"代码长度提示
"set colorcolumn=81
set colorcolumn=90
set lines=30
" 默认窗口位置
winp 200 100

"允许在 虚空间 内操作 （虚空间:不包含任何文本的空间。如换行符之后）
"set virtualedit=all
"禁止在 虚空间 内操作
set virtualedit=

"===缩进设置===
set cindent             "打开C/C++风格的自动缩进
set autoindent          "自动对齐，将当前行对齐格式应用到下一行
"set noautoindent
set smartindent         "智能对齐，更好的支持代码编写
set cinoptions=:0g0t0(susj1   "设定C/C++风格自动缩进的选项

"设定 Tab 键缩进的空格数
set tabstop=4
"设定编辑器将多少空格视为一个缩进
set shiftwidth=4
"将缩进转换为空格
set expandtab
"设置按退格键时可以一次删除4个空格
set softtabstop=4
"设置按退格键时可以一次删除4个空格
set smarttab
"将Tab键自动转换成空格 真正需要Tab键时使用[Ctrl + V + Tab]
set expandtab
%retab!



"插入模式下，“←”如何删除光标前的字符：行首空白、换行符、插入点之前的字符
set backspace=indent,eol,start

"命令行历史纪录
set history=5000

"禁用增量搜索
set incsearch
"set noincsearch
"搜索时忽略大小写
"set ignorecase
"set noignorecase
"高亮显示搜索结果 hls
set hlsearch
" 高亮当前行
" highlight CurrentLine guibg=darkgrey guifg=white
" au! Cursorhold * exe 'match CurrentLine /\%' . line('.') . 'l.*/'
" set ut=100
"
" set cursorcolumn
set cursorline
"设定折叠方式
"set foldmethod=manual
set foldmethod=syntax
set foldlevel=6
set foldcolumn=0

"以下字符将被视为单词的一部分 (ASCII)：
"set iskeyword+=33-47,58-64,91-96,123-128
" 设置宽度不明的文字(如 “”①②→ )为双宽度文本。
" @see http://blog.sina.com.cn/s/blog_46dac66f010006db.html
set ambiwidth=double

set guifont=Microsoft_Yahei_Mono:h10:cANSI,Fixedsys:h12
set guifontwide=Microsoft_Yahei_Mono:h10:cANSI,Fixedsys:h12
"-------------------------------------------


"-------------------------------------------
"   快捷键
"-------------------------------------------
"选中文本时通过TAB与Shift+TAB缩进
vmap <tab> >gv
vmap <s-tab> <gv

" 选中一段文字并全文搜索这段文字
vnoremap  *  y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
vnoremap  #  y?<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>

" 窗口间的移动设置。
map <Leader>ww <C-W>w
" = 把鼠标放在竖分格上往左拖
map <Leader>w, 10<C-W><
" = 把鼠标放在竖分格上往右拖
map <Leader>w. 10<C-W>>
" 关闭当前窗口
map <Leader>wc <C-W>c
" map <C-j> <C-W>j
" map <C-k> <C-W>k
" map <C-l> <C-W>l
" map <C-h> <C-W>h
" 
" map <C-kPlus> <C-w>+
" map <C-kMinus> <C-w>-
" map <C-S-kPlus> <C-w>_
" map <C-S-kMinus> <C-w>_


"在命令行模式下，用Ctrl+V贴入寄存器"中的内容
cmap <C-V> <C-R>"
"编译和运行java
map <F3> :w<CR>:!javac %<CR><CR>
map <F4> :!java %<<CR><CR>
"窗口最大化，最小化，还原
map <Leader>mx :simalt ~x<CR>
map <Leader>mn :simalt ~n<CR>
"recover
map <Leader>re :simalt ~r<CR>

" 重置字体设置
map <Leader>fr :set guifont=<CR>:set gfw=<CR>

"用Ctrl+D在插入模式下插入当前时间
"imap <C-D> --<C-R>=strftime("%c")<CR>--
imap <C-D> <C-R>=strftime("%Y-%m-%d %H:%M:%S %A")<CR>

"markdown的标题
map <Leader>h2 <ESC>I## <ESC>
vmap <Leader>h2 I## <ESC>gv
map <Leader>h3 <ESC>I### <ESC>
vmap <Leader>h3 I### <ESC>gv
map <Leader>h4 <ESC>I#### <ESC>
vmap <Leader>h4 I#### <ESC>gv
map <Leader>h5 <ESC>I##### <ESC>
vmap <Leader>h5 I##### <ESC>gv
" 分格线
map <Leader>fgx o* * *<ESC>o<ESC>

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
"   Vundle 配置
"-------------------------------------------
" Vundle
" 安装之前，在Windows环境下，是需要curl的。当我把git/bin加入到Path之后，也是可以的；
" 官方是给了一个脚本去调用curl.exe
" 安装Vundle：
" 在自己的用户目录下，一般就是运行cmd之后的默认路径
" cd %userprofile%
" cd %USERPROFILE%
" git clone https://github.com/gmarik/Vundle.vim.git vimfiles/bundle/Vundle.vim
" 然后就编辑_vimrc了，修改了 rtp 与 path 的定义方式： 
" 参见： https://github.com/gmarik/Vundle.vim/wiki/Vundle-for-Windows
"        https://github.com/gmarik/Vundle.vim

" 第一行就设置了，所以，这里不需要了
" set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim/
let path='~/vimfiles/bundle'

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
call vundle#begin(path)

"  其它平台初始化方式
"set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
"
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" 自动新建文件夹

Plugin 'auto_mkdir'

"Plugin 'lokaltog/vim-powerline'

"let g:Powerline_symbols = 'fancy'

" vim-markdown插件，用来高亮markdown文件的
" https://github.com/plasticboy/vim-markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" ftplugin/mkd.vim : line 315 : let &winwidth=(&columns/4)  
" 这样子 :Toc的时候不会占半个屏，占1/4个屏
" 原本为2


" 加入NERDTree
Plugin 'scrooloose/nerdtree' 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-f> :NERDTreeToggle<CR>

" spring 配色方案
Plugin 'spring.vim'

" 让gvim全屏的插件，通过 Vundle安装之后不太好使，需将gvimfullscreen.dll手动复制到与gvim.exe相同
" 的目录
Plugin 'gvimfullscreen_win32'

" 让文字们居中显示
Plugin 'junegunn/goyo.vim'
" ##Usage
" 
" :Goyo
" Toggle Goyo
" :Goyo [width]
" Turn on or resize Goyo
" :Goyo!
" Turn Goyo off
" The window can be resized with the usual [count]<CTRL-W> + >, <, +, - keys.
" 
" ##Configuration
" 
" g:goyo_width (default: 80)
" g:goyo_margin_top (default: 4)
" g:goyo_margin_bottom (default: 4)
" g:goyo_linenr (default: 0)
let g:goyo_width=96
let g:goyo_margin_top=2
let g:goyo_margin_bottom=2

" 多点编辑插件
" https://github.com/terryma/vim-multiple-cursors
Plugin 'terryma/vim-multiple-cursors' 
call vundle#end()            " required
filetype plugin indent on    " required
" 安装插件们： 
" 运行vim之后  :PluginInstall

"把安装的spring配色用起来
" colorscheme spring
"-------------------------------------------
"

" let g:MyVimLib = $VIMRUNTIME.'/gvimfullscreen.dll'
" let g:MyVimLib = '~/vimfiles/bundle/gvimfullscreen_win32/gvimfullscreen.dll'
" function ToggleFullScreen()
"     call libcallnr(g:MyVimLib, "ToggleFullScreen", 0)
" endfunction
map <F11> <Esc>:set guioptions-=mr<cr><Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
"map <F11> <Esc>:call ToggleFullScreen()<CR>
"


" Markdown调用Chrome浏览器预览
function! s:nr2hex(nr)
  let n = a:nr
  let r = ""
  while n
    let r = '0123456789ABCDEF'[n % 16] . r
    let n = n / 16
  endwhile
  return r
endfunction

function! s:encodeURIComponent(instr)
  let instr = iconv(a:instr, &enc, "utf-8")
  let len = strlen(instr)
  let i = 0
  let outstr = ''
  while i < len
    let ch = instr[i]
    if ch =~# '[0-9A-Za-z-._~!''()*]'
      let outstr = outstr . ch
    elseif ch == ' '
      let outstr = outstr . '+'
    else
      let outstr = outstr . '%' . substitute('0' . s:nr2hex(char2nr(ch)), '^.*\(..\)$', '\1', '')
    endif
    let i = i + 1
  endwhile
  return outstr
endfunction


function! MarkdownPro()
    let chrome = "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe"
    let filed = expand("%:p")
    let filed = s:encodeURIComponent(filed)
    let filed = substitute(filed,"%3A",":","g")
    let filed = substitute(filed,"%5C","/","g")
    let filed = substitute(filed,"%","\\\\%","g")
    let filed = substitute(filed,"+","\\\\%20","g")
    "echo filed
    return chrome." \"file:///".filed."\""
endfunction

"map <Leader>p :!start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" :echo EncodeURIComponent(%:p)<CR>
map <Leader>p :silent !start <C-R>=MarkdownPro()<CR><CR><CR>
