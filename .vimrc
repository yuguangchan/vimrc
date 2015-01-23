" CRiption: �ʺ��Լ�ʹ�õ�vimrc�ļ���for Linux/Windows, GUI/Console 
" 
" Last Change: 2010��4��25�� 23ʱ39�� Asins - asinsimple AT gmail DOT com 
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
"�﷨����
"""""""""""""""""""""""""""""""
" Bundle "vim-scripts/Python-mode-klen"


" Bundle 'JavaScript-syntax'
" Bundle 'jQuery'
" Bundle 'othree/html5.vim'
" Bundle 'groenewege/vim-less'
" Bundle 'Markdown'
" Bundle 'Markdown-syntax'
" Bundle 'php.vim-html-enhanced' "һ��TABΪ3���ո� = =
" Bundle 'css_color.vim' 
" ������rgb��ʾ��ɫ��ͬ����ʾ�ദ��ɫ
" Bundle 'skammer/vim-css-color'

"above the Vim UI
"""""""""""""""""""""""""""""""
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'taglist.vim'
Bundle 'bufexplorer.zip'
" Bundle 'fholgado/minibufexpl.vim'
" Bundle 'winmanager'
" Bundle 'Lokaltog/vim-powerline'
" Make gvim-only colorschemes work transparently in terminal vim
" Bundle 'CSApprox' 

"AutoComplete
"""""""""""""""""""""""""""""""
"Bundle 'AutoComplPop'
"Bundle 'msanders/snipmate.vim' "�Դ���snippets
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

filetype plugin indent on   " ������� 
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
set nocompatible            " �ر� vi ����ģʽ 
syntax on                   " �Զ��﷨���� 
colorscheme default         " �趨��ɫ���� 
set number                  " ��ʾ�к� 
set cursorline              " ͻ����ʾ��ǰ�� 
set ruler                   " ��״̬����� 
set shiftwidth=4            " �趨 << �� >> �����ƶ�ʱ�Ŀ��Ϊ 4 
set softtabstop=4           " ʹ�ð��˸��ʱ����һ��ɾ�� 4 ���ո� 
set tabstop=4               " �趨 tab ����Ϊ 4 
set nobackup                " �����ļ�ʱ������ 
set autochdir               " �Զ��л���ǰĿ¼Ϊ��ǰ�ļ����ڵ�Ŀ¼ 
set backupcopy=yes          " ���ñ���ʱ����ΪΪ���� 
set ignorecase smartcase    " ����ʱ���Դ�Сд��������һ�������ϴ�д��ĸʱ�Ա��ֶԴ�Сд���� 
set nowrapscan              " ��ֹ���������ļ�����ʱ�������� 
set incsearch               " ������������ʱ����ʾ������� 
set hlsearch                " ����ʱ������ʾ���ҵ����ı� 
set noerrorbells            " �رմ�����Ϣ���� 
set novisualbell            " �ر�ʹ�ÿ������������� 
set t_vb=                   " �ÿմ����������ն˴��� 
" set showmatch               " ��������ʱ�����ݵ���ת��ƥ��Ķ�Ӧ���� 
" set matchtime=2             " ������ת��ƥ�����ŵ�ʱ�� 
set magic                   " ����ħ�� 
set hidden                  " ��������δ������޸�ʱ�л�����������ʱ���޸��� vim ���𱣴� 
set guioptions-=T           " ���ع����� 
set guioptions-=m           " ���ز˵��� 
set smartindent             " ��������ʱʹ�������Զ����� 
set backspace=indent,eol,start 
                            " ���趨�ڲ���״̬�޷����˸���� Delete ��ɾ���س��� 
set cmdheight=1             " �趨�����е�����Ϊ 1 
set laststatus=2            " ��ʾ״̬�� (Ĭ��ֵΪ 1, �޷���ʾ״̬��) 
set statusline=/%<%F[%1*%M%*%n%R%H]%=/%y/%0(%{&fileformat}/%{&encoding}/%{&fileencoding}/%c:%l/%L%)/ 
                            " ������״̬����ʾ����Ϣ 
set foldenable              " ��ʼ�۵� 
set foldmethod=syntax       " �����﷨�۵� 
set foldcolumn=0            " �����۵�����Ŀ�� 
setlocal foldlevel=1        " �����۵�����Ϊ 
" set foldclose=all           " ����Ϊ�Զ��ر��۵�                            
" nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> 
                            " �ÿո���������۵� 

"==========================================================================
"����ϵͳ�������������
"=========================================================================
" return OS type, eg: windows, or linux, mac, et.st.. 
function! MySys() 
    if has("win16") || has("win32") || has("win64") || has("win95") 
        return "windows" 
    elseif has("unix") 
        return "linux" 
    endif 
endfunction 

" �û�Ŀ¼����$VIMFILES 
if MySys() == "windows" 
    let $VIMFILES = $VIM.'/vimfiles' 
elseif MySys() == "linux" 
    let $VIMFILES = $HOME.'/.vim' 
endif 

" �趨doc�ĵ�Ŀ¼ 
let helptags=$VIMFILES.'/doc' 

" �������� �Լ�����֧�� 
if has("win32") 
    set guifont=Inconsolata:h12:cANSI 
endif 

"���ñ���
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gb2312,gbk,ucs-bom,cp936



"=====================================================================
"����������
"=====================================================================

" Buffers������ݷ�ʽ! 
nnoremap <C-RETURN> :bnext<CR> 
nnoremap <C-S-RETURN> :bprevious<CR> 

" Tab������ݷ�ʽ! 
nnoremap <C-TAB> :tabnext<CR> 
nnoremap <C-S-TAB> :tabprev<CR> 

"����tab�Ŀ�ݼ� 
" map tn :tabnext<cr> 
" map tp :tabprevious<cr> 
" map td :tabnew .<cr> 
" map te :tabedit 
" map tc :tabclose<cr> 

"���ڷָ�ʱ,�����л��İ����ȼ���Ҫ��������,������·������ƶ� 
"��굽�Ϸ�����,��Ҫ<c-w><c-w>k,�ǳ��鷳,������ӳ��Ϊ<c-k>,�л��� 
"ʱ����÷ǳ�����. 
nnoremap <C-h> <C-w>h 
nnoremap <C-j> <C-w>j 
nnoremap <C-k> <C-w>k 
nnoremap <C-l> <C-w>l 

"һЩ�����ӳ��ת���﷨�������һ���ļ��л���˲�ͬ����ʱ���ã� 
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


" �� Tohtml ������ CSS �﷨�� html 
" syntax/2html.vim��������:runtime! syntax/2html.vim 
let html_use_css=1 

" Python �ļ���һ�����ã����粻Ҫ tab �� 
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab 
autocmd FileType python map <F12> :!python %<CR> 

" ѡ��״̬�� Ctrl+c ���� 
vmap <C-c> "+y 

" ��javascript�۵� 
let b:javascript_fold=1 
" ��javascript��dom��html��css��֧�� 
let javascript_enable_domhtmlcss=1 
" �����ֵ� ~/.vim/dict/�ļ���·�� 
autocmd filetype javascript set dictionary=$VIMFILES/dict/javascript.dict 
autocmd filetype css set dictionary=$VIMFILES/dict/css.dict 
autocmd filetype php set dictionary=$VIMFILES/dict/php.dict 

"----------------------------------------------------------------- 
" plugin - bufexplorer.vim Buffers�л� 
" /be ȫ����ʽ�鿴ȫ���򿪵��ļ��б� 
" /bv ���ҷ�ʽ�鿴   /bs ���·�ʽ�鿴 
"----------------------------------------------------------------- 

map <F9> :BufExplorer<CR> 
" let g:mapleader = "/"

"----------------------------------------------------------------- 
" plugin - taglist.vim  �鿴�����б���Ҫctags���� 
" F4 ������taglist���� 
"----------------------------------------------------------------- 
if MySys() == "windows"                " �趨windowsϵͳ��ctags�����λ�� 
    let Tlist_Ctags_Cmd = '"'.$VIMRUNTIME.'/ctags.exe"' 
elseif MySys() == "linux"              " �趨windowsϵͳ��ctags�����λ�� 
    let Tlist_Ctags_Cmd = '/usr/bin/ctags' 
endif 
"�����û�Ŀ¼�µ�tags����Ϊvim��tags
"set tags = /usr/bin/ctags


nnoremap <silent><F4> :TlistToggle<CR> 
let Tlist_Show_One_File = 1            " ��ͬʱ��ʾ����ļ���tag��ֻ��ʾ��ǰ�ļ��� 
let Tlist_Exit_OnlyWindow = 1          " ���taglist���������һ�����ڣ����˳�vim 
let Tlist_Use_Right_Window = 1         " ���Ҳര������ʾtaglist���� 
let Tlist_File_Fold_Auto_Close=1       " �Զ��۵���ǰ�Ǳ༭�ļ��ķ����б� 
let Tlist_Auto_Open = 0 
let Tlist_Auto_Update = 1 
let Tlist_Hightlight_Tag_On_BufEnter = 1 
let Tlist_Enable_Fold_Column = 0 
let Tlist_Process_File_Always = 1 
let Tlist_Display_Prototype = 0 
let Tlist_Compact_Format = 1 


"----------------------------------------------------------------- 
" plugin - mark.vim ������tags��ǲ�ͬ����ɫ�����ڹۿ���ʽ�Ĳ���� 
" /m  mark or unmark the word under (or before) the cursor 
" /r  manually input a regular expression. ��������. 
" /n  clear this mark (i.e. the mark under the cursor), or clear all highlighted marks . 
" /*  ��ǰMarkWord����һ��     /#  ��ǰMarkWord����һ�� 
" //  ����MarkWords����һ��    /?  ����MarkWords����һ�� 
"----------------------------------------------------------------- 

 
"----------------------------------------------------------------- 
" plugin - NERD_tree.vim ����״��ʽ���ϵͳ�е��ļ���Ŀ¼ 
" :ERDtree ��NERD_tree         :NERDtreeClose    �ر�NERD_tree 
" o �򿪹ر��ļ�����Ŀ¼         t �ڱ�ǩҳ�д� 
" T �ں�̨��ǩҳ�д�           ! ִ�д��ļ� 
" p ���ϲ�Ŀ¼                   P ����Ŀ¼ 
" K ����һ���ڵ�                 J �����һ���ڵ� 
" u ���ϲ�Ŀ¼                 m ��ʾ�ļ�ϵͳ�˵�����ӡ�ɾ�����ƶ������� 
" r �ݹ�ˢ�µ�ǰĿ¼             R �ݹ�ˢ�µ�ǰ��Ŀ¼ 
"----------------------------------------------------------------- 
" F3 NERDTree �л� 
map <F3> :NERDTreeToggle<CR> 
imap <F3> <ESC>:NERDTreeToggle<CR> 


" ----------------------------------------------------------------- 
" plugin - NERD_commenter.vim   ע�ʹ����õģ� 
" [count],cc �������count���������ע��(7,cc) 
" [count],cu �������count������ȡ��ע��(7,cu) 
" [count],cm �������count�г�����ӿ�ע��(7,cm) 
" ,cA ����β���� /* */,���ҽ������ģʽ�� ��������дע�͡� 
" ע��count������ѡ������Ĭ��Ϊѡ���л�ǰ�� 
" ----------------------------------------------------------------- 
let g:mapleader = ","
let NERDSpaceDelims=1       " ��ע�ͷ������֮����һ���ո� 
let NERDCompactSexyComs=1   " ����ע��ʱ���Ӹ��ÿ� 
 

"----------------------------------------------------------------- 
" plugin - DoxygenToolkit.vim  ��ע�������ĵ��������ܹ��������ɺ�����׼ע�� 
"----------------------------------------------------------------- 
let g:DoxygenToolkit_authorName="Asins - asinsimple AT gmail DOT com" 
let g:DoxygenToolkit_briefTag_funcName="yes" 
map <leader>da :DoxAuthor<CR> 
map <leader>df :Dox<CR> 
map <leader>db :DoxBlock<CR> 
map <leader>dc a /*  */<LEFT><LEFT><LEFT> 


"----------------------------------------------------------------- 
" plugin ? ZenCoding.vim �ܿ�Ĳ����HTML�������� 
" ������°棺http://github.com/mattn/zencoding-vim 
" ��������ɿ���http://nootn.com/blog/Tool/23/ 
"----------------------------------------------------------------- 


"----------------------------------------------------------------- 
" plugin ? checksyntax.vim    JavaScript�����﷨������ 
" Ĭ�Ͽ�ݷ�ʽΪ F5 
"----------------------------------------------------------------- 
let g:checksyntax_auto = 0 " ���Զ���� 


"----------------------------------------------------------------- 
" plugin - NeoComplCache.vim    �Զ���ȫ��� 
" "----------------------------------------------------------------- 
"��VIM����neocomplcache
let g:neocomplcache_enable_at_startup = 1
"ʹ��tab�ں�ѡ��֮���л�
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"ʹ��Ctrl+l���ֲ�ȫ
inoremap <expr><C-l>     neocomplcache#complete_common_string()
"������ȫ
inoremap <expr><C-g>     neocomplcache#undo_completion()
"��ǰ�ļ���JS�ļ�ʹ��javascriptcomplete#CompleteJS�������﷨��ȫ
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"neocomplcache config end



" plugin - matchit.vim   ��%���������չʹ������Ƕ�ױ�ǩ�����֮����ת 
" % ����ƥ��      g% ����ƥ�� 
" [% ��λ����     ]% ��λ��β 
"----------------------------------------------------------------- 


"----------------------------------------------------------------- 
" plugin - vcscommand.vim   ��%���������չʹ������Ƕ�ױ�ǩ�����֮����ת 
" SVN/git������ 
"----------------------------------------------------------------- 


"----------------------------------------------------------------- 
" plugin ? a.vim 
"----------------------------------------------------------------- 
" �����ͱ����б� 
 map <F4> :TlistToggle<CR> 
" 
" " ������ǰ�ʣ�����quickfix���� 
map <F5> :call Search_Word()<CR> 
" 
" " ȫ�ܲ�ȫ 
" noremap <F8> <C-x><C-o>

"=======================================================================

"==============================Edited By chenyuguang====================
"����Python�ļ�ͷ
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
" let g:pymode_folding = 0
" let g:pymode_syntax = 1
" let g:pymode_lint_cwindow = 0
" let g:pymode_lint_signs = 1
" let g:pymode_syntax_all = 1
" let g:pymode_syntax_builtin_types = g:pymode_syntax_all
map <F7> :PymodeLint <CR>
map <F10> :PymodeLintToggle <CR><CR>

"����F11����ctags -R���� tags
map <F11> :!ctags -R <CR><CR>
