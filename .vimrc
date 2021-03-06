" CRiption: 适合自己使用的vimrc文件，for Linux/Windows, GUI/Console 
" 
" Last Change: 2010年4月25日 23时39分 Asins - asinsimple AT gmail DOT com 
" 
" Author:      Assins - asinsimple AT gmail DOT com 
"              Get latest vimrc from http://nootn.com/blog/Tool/22/ 
" 
" Version:     1.80 
" 
"========================================================================= 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" BundleInstall

set nocompatible    " be iMproved
filetype off        " required!

set rtp+=~/.vim/bundle/vundle/ 
" call vundle#rc('~/.vim/bundle/vundle/')
call vundle#rc()

" let Vundle manage Vundle
" required
Bundle 'gmarik/vundle'

" My Bundle here:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"语法高亮
"""""""""""""""""""""""""""""""
Bundle "vim-scripts/Python-mode-klen" 
" Bundle 'JavaScript-syntax'
" Bundle 'jQuery'
" Bundle 'othree/html5.vim'
" Bundle 'groenewege/vim-less'
" Bundle 'Markdown'
" Bundle 'Markdown-syntax'
" Bundle 'php.vim-html-enhanced' "一个TAB为3个空格 = =
" Bundle 'css_color.vim' 
" 增加了rgb显示颜色和同行显示多处颜色
" Bundle 'skammer/vim-css-color'

"above the Vim UI
"""""""""""""""""""""""""""""""
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'taglist.vim'
Bundle 'bufexplorer.zip'
Bundle 'kien/ctrlp.vim'
" Bundle 'fholgado/minibufexpl.vim'
" Bundle 'winmanager'
" Bundle 'Lokaltog/vim-powerline'
" Make gvim-only colorschemes work transparently in terminal vim
" Bundle 'CSApprox' 

"AutoComplete
"""""""""""""""""""""""""""""""
"Bundle 'AutoComplPop'
"Bundle 'msanders/snipmate.vim' "自带了snippets
"Bundle 'Pydiction'
Bundle 'Shougo/neocomplcache'
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'tomtom/tlib_vim'
"Bundle 'honza/snipmate-snippets'
"Bundle 'spf13/snipmate-snippets'
"Bundle 'garbas/vim-snipmate'

"Bundle 'ZenCoding.vim'
"let g:user_zen_expandabbr_key='<C-u>'

"Bundle 'word_complete.vim'
"Bundle 'closetag.vim'

"PHP 
"press K on a function for full PHP manual
"Bundle 'spf13/PIV'

"Tools
""""""""""""""""""""""""""""""
"Bundle 'udonmai/Conque-Shell'
"Bundle 'grep.vim'
"Bundle 'vim-flake8'

filetype plugin indent on   " 开启插件 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..



"==============================================================================
"Normal Setting
"==============================================================================
set nocompatible            " 关闭 vi 兼容模式 
syntax on                   " 自动语法高亮 
colorscheme ron				" 设定配色方案 
set number                  " 显示行号 
set cursorline              " 突出显示当前行 
set ruler                   " 打开状态栏标尺 
set shiftwidth=4            " 设定 << 和 >> 命令移动时的宽度为 4 
set softtabstop=4           " 使得按退格键时可以一次删掉 4 个空格 
set tabstop=4               " 设定 tab 长度为 4 
set nobackup                " 覆盖文件时不备份 
set autochdir               " 自动切换当前目录为当前文件所在的目录 
set backupcopy=yes          " 设置备份时的行为为覆盖 
set ignorecase smartcase    " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感 
set nowrapscan              " 禁止在搜索到文件两端时重新搜索 
set incsearch               " 输入搜索内容时就显示搜索结果 
set hlsearch                " 搜索时高亮显示被找到的文本 
set noerrorbells            " 关闭错误信息响铃 
set novisualbell            " 关闭使用可视响铃代替呼叫 
set t_vb=                   " 置空错误铃声的终端代码 
" set showmatch               " 插入括号时，短暂地跳转到匹配的对应括号 
" set matchtime=2             " 短暂跳转到匹配括号的时间 
set magic                   " 设置魔术 
set hidden                  " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存 
set guioptions-=T           " 隐藏工具栏 
set guioptions-=m           " 隐藏菜单栏 
set smartindent             " 开启新行时使用智能自动缩进 
set backspace=indent,eol,start 
                            " 不设定在插入状态无法用退格键和 Delete 键删除回车符 
set cmdheight=1             " 设定命令行的行数为 1 
set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏) 
set statusline=/%<%F[%1*%M%*%n%R%H]%=/%y/%0(%{&fileformat}/%{&encoding}/%{&fileencoding}/%c:%l/%L%)/ 
                            " 设置在状态行显示的信息 
" set foldenable              " 开始折叠 
" set foldmethod=syntax       " 设置语法折叠 
" set foldcolumn=0            " 设置折叠区域的宽度 
" setlocal foldlevel=1        " 设置折叠层数为 
" set foldclose=all           " 设置为自动关闭折叠                            
" nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> 
                            " 用空格键来开关折叠 

"==========================================================================
"操作系统及编码相关设置
"=========================================================================
" return OS type, eg: windows, or linux, mac, et.st.. 
function! MySys() 
    if has("win16") || has("win32") || has("win64") || has("win95") 
        return "windows" 
    elseif has("unix") 
        return "linux" 
    endif 
endfunction 

" 用户目录变量$VIMFILES 
if MySys() == "windows" 
    let $VIMFILES = $VIM.'/vimfiles' 
elseif MySys() == "linux" 
    let $VIMFILES = $HOME.'/.vim' 
endif 

" 设定doc文档目录 
let helptags=$VIMFILES.'/doc' 

" 设置字体 以及中文支持 
if has("win32") 
    set guifont=Inconsolata:h12:cANSI 
endif 

"配置编码
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gb2312,gbk,ucs-bom,cp936



"=====================================================================
"插件相关设置
"=====================================================================

" Buffers操作快捷方式! 
nnoremap <C-RETURN> :bnext<CR> 
nnoremap <C-S-RETURN> :bprevious<CR> 

" Tab操作快捷方式! 
nnoremap <C-TAB> :tabnext<CR> 
nnoremap <C-S-TAB> :tabprev<CR> 

"关于tab的快捷键 
" map tn :tabnext<cr> 
" map tp :tabprevious<cr> 
" map td :tabnew .<cr> 
" map te :tabedit 
" map tc :tabclose<cr> 

"窗口分割时,进行切换的按键热键需要连接两次,比如从下方窗口移动 
"光标到上方窗口,需要<c-w><c-w>k,非常麻烦,现在重映射为<c-k>,切换的 
"时候会变得非常方便. 
nnoremap <C-h> <C-w>h 
nnoremap <C-j> <C-w>j 
nnoremap <C-k> <C-w>k 
nnoremap <C-l> <C-w>l 

"一些不错的映射转换语法（如果在一个文件中混合了不同语言时有用） 
nnoremap <leader>1 :set filetype=xhtml<CR> 
nnoremap <leader>2 :set filetype=css<CR> 
nnoremap <leader>3 :set filetype=javascript<CR> 
nnoremap <leader>4 :set filetype=php<CR> 

" set fileformats=unix,dos,mac 
" nmap <leader>fd :se fileformat=dos<CR> 
" nmap <leader>fu :se fileformat=unix<CR> 

" use Ctrl+[l|n|p|cc] to list|next|previous|jump to count the result 
" map <C-x>l <ESC>:cl<CR> 
" map <C-x>n <ESC>:cn<CR> 
" map <C-x>p <ESC>:cp<CR> 
" map <C-x>c <ESC>:cc<CR> 


" 让 Tohtml 产生有 CSS 语法的 html 
" syntax/2html.vim，可以用:runtime! syntax/2html.vim 
let html_use_css=1 

" Python 文件的一般设置，比如不要 tab 等 
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab 
autocmd FileType python map <F12> :!python %<CR> 

" 选中状态下 Ctrl+c 复制 
vmap <C-c> "+y 

" 打开javascript折叠 
let b:javascript_fold=1 
" 打开javascript对dom、html和css的支持 
let javascript_enable_domhtmlcss=1 
" 设置字典 ~/.vim/dict/文件的路径 
autocmd filetype javascript set dictionary=$VIMFILES/dict/javascript.dict 
autocmd filetype css set dictionary=$VIMFILES/dict/css.dict 
autocmd filetype php set dictionary=$VIMFILES/dict/php.dict 

"----------------------------------------------------------------- 
" plugin - bufexplorer.vim Buffers切换 
" /be 全屏方式查看全部打开的文件列表 
" /bv 左右方式查看   /bs 上下方式查看 
"----------------------------------------------------------------- 

map <F9> :BufExplorer<CR> 
" let g:mapleader = "/"

"----------------------------------------------------------------- 
" plugin - taglist.vim  查看函数列表，需要ctags程序 
" F4 打开隐藏taglist窗口 
"----------------------------------------------------------------- 
if MySys() == "windows"                " 设定windows系统中ctags程序的位置 
    let Tlist_Ctags_Cmd = '"'.$VIMRUNTIME.'/ctags.exe"' 
elseif MySys() == "linux"              " 设定windows系统中ctags程序的位置 
    let Tlist_Ctags_Cmd = '/usr/bin/ctags' 
endif 
"把在用户目录下的tags设置为vim的tags
"set tags = /usr/bin/ctags


nnoremap <silent><F4> :TlistToggle<CR> 
let Tlist_Show_One_File = 1            " 不同时显示多个文件的tag，只显示当前文件的 
let Tlist_Exit_OnlyWindow = 1          " 如果taglist窗口是最后一个窗口，则退出vim 
let Tlist_Use_Right_Window = 1         " 在右侧窗口中显示taglist窗口 
let Tlist_File_Fold_Auto_Close=1       " 自动折叠当前非编辑文件的方法列表 
let Tlist_Auto_Open = 0 
let Tlist_Auto_Update = 1 
let Tlist_Hightlight_Tag_On_BufEnter = 1 
let Tlist_Enable_Fold_Column = 0 
let Tlist_Process_File_Always = 1 
let Tlist_Display_Prototype = 0 
let Tlist_Compact_Format = 1 


"----------------------------------------------------------------- 
" plugin - mark.vim 给各种tags标记不同的颜色，便于观看调式的插件。 
" /m  mark or unmark the word under (or before) the cursor 
" /r  manually input a regular expression. 用于搜索. 
" /n  clear this mark (i.e. the mark under the cursor), or clear all highlighted marks . 
" /*  当前MarkWord的下一个     /#  当前MarkWord的上一个 
" //  所有MarkWords的下一个    /?  所有MarkWords的上一个 
"----------------------------------------------------------------- 

 
"----------------------------------------------------------------- 
" plugin - NERD_tree.vim 以树状方式浏览系统中的文件和目录 
" :ERDtree 打开NERD_tree         :NERDtreeClose    关闭NERD_tree 
" o 打开关闭文件或者目录         t 在标签页中打开 
" T 在后台标签页中打开           ! 执行此文件 
" p 到上层目录                   P 到根目录 
" K 到第一个节点                 J 到最后一个节点 
" u 打开上层目录                 m 显示文件系统菜单（添加、删除、移动操作） 
" r 递归刷新当前目录             R 递归刷新当前根目录 
"----------------------------------------------------------------- 
" F3 NERDTree 切换 
map <F3> :NERDTreeToggle<CR> 
imap <F3> <ESC>:NERDTreeToggle<CR> 


" ----------------------------------------------------------------- 
" plugin - NERD_commenter.vim   注释代码用的， 
" [count],cc 光标以下count行逐行添加注释(7,cc) 
" [count],cu 光标以下count行逐行取消注释(7,cu) 
" [count],cm 光标以下count行尝试添加块注释(7,cm) 
" ,cA 在行尾插入 /* */,并且进入插入模式。 这个命令方便写注释。 
" 注：count参数可选，无则默认为选中行或当前行 
" ----------------------------------------------------------------- 
let g:mapleader = ","
let NERDSpaceDelims=1       " 让注释符与语句之间留一个空格 
let NERDCompactSexyComs=1   " 多行注释时样子更好看 
 

"----------------------------------------------------------------- 
" plugin - DoxygenToolkit.vim  由注释生成文档，并且能够快速生成函数标准注释 
"----------------------------------------------------------------- 
let g:DoxygenToolkit_authorName="Asins - asinsimple AT gmail DOT com" 
let g:DoxygenToolkit_briefTag_funcName="yes" 
map <leader>da :DoxAuthor<CR> 
map <leader>df :Dox<CR> 
map <leader>db :DoxBlock<CR> 
map <leader>dc a /*  */<LEFT><LEFT><LEFT> 



"----------------------------------------------------------------- 
" plugin - NeoComplCache.vim    自动补全插件 
" "----------------------------------------------------------------- 
"打开VIM启动neocomplcache
let g:neocomplcache_enable_at_startup = 1
"使用tab在候选词之间切换
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"使用Ctrl+l逐字补全
inoremap <expr><C-l>     neocomplcache#complete_common_string()
"撤销补全
inoremap <expr><C-g>     neocomplcache#undo_completion()
"当前文件是JS文件使用javascriptcomplete#CompleteJS来进行语法补全
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"neocomplcache config end



"=======================================================================

"==============================Edited By chenyuguang====================
"设置Python文件头
function HeaderPython()
    call setline(1, "#!/usr/bin/env python")
    call append(line("."), "# -*- coding: utf-8 -*-")
    call append(line(".")+1,"")
    call append(line(".")+2,"import sys")
    call append(line(".")+3,"reload(sys)")
    call append(line(".")+4,"sys.setdefaultencoding('utf-8')")

    normal G
    normal o
    normal o
endf

autocmd bufnewfile *.py call HeaderPython()

set nowrap
"--------------pythonmode-------------
" let g:pymode_options = 1
" let g:pymode = 1
" let g:pymode_trim_whitespaces = 1
" let g:pymode_motion = 1
" let g:pymode_lint_on_fly = 0
let g:pymode_lint_on_write = 0
let g:pymode_folding = 0
let g:pymode_rope_goto_definition_cmd = 'e'
" let g:pymode_syntax = 1
" let g:pymode_lint_cwindow = 0
" let g:pymode_lint_signs = 1
" let g:pymode_syntax_all = 1
" let g:pymode_syntax_builtin_types = g:pymode_syntax_all
map <F7> :PymodeLint <CR>
map <F10> :PymodeLintToggle <CR><CR>

"设置F11运行ctags -R建立 tags
map <F11> :!ctags -R <CR><CR>
