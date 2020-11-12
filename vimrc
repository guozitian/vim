set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

"--------------------PERSONAL PLUGINS----------------------
Plugin 'fatih/vim-go'                               " golang
Plugin 'scrooloose/nerdtree'                        " 目录树
Plugin 'kien/ctrlp.vim'                             " ctrlp
Plugin 'vim-airline/vim-airline'                    " 状态栏
Plugin 'kien/rainbow_parentheses.vim'               " 匹配括号彩色显示
Plugin 'majutsushi/tagbar'							" 标签列表
Plugin 'tomtom/tcomment_vim'                        " 快速注释
Plugin 'vim-airline/vim-airline-themes'             " airline 主题
Plugin 'valloric/youcompleteme'						" ycm
Plugin 'tpope/vim-surround'                         " surround
Plugin 'tpope/vim-fugitive'                         " vim的git工具
Plugin 'airblade/vim-gitgutter'                     " 侧栏显示git diff
Plugin 'godlygeek/tabular'                          " 对齐工具
Plugin 'sirver/ultisnips'                           " 代码片段
Plugin 'honza/vim-snippets'                         " 代码片段
"---------------------------------------------------------

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"------------------------------------------------------

"-------------------SYSTEM SETTINGS------------------------------

"编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileformats=unix,dos,mac

set ttyfast
set lazyredraw


"编辑器
syntax enable                           " 语法高亮
set background=dark
set termguicolors                       " 真彩色
colorscheme gruvbox                     " 配色方案
set t_Co=256                            " 256色
set number                              " 显示行号
set ruler                               " 显示标尺
set autoindent                          " 自动缩进
set smartindent                         " 智能缩进
set shiftwidth=4                        " (自动)缩进每一步使用的空白数目
set tabstop=4                           " 定义tab等同的space长度
set expandtab                           " tab转space
set backspace=indent,eol,start          " 解决退格键不能用的问题
set nobackup                            " 不备份文件
set wildmenu                            " 底部命令选择
set noshowmode                          " 状态栏不显示mode
set modifiable                          " 允许读外部程序输出
set hidden                              " 文件切换时不关闭，保留undo list

set noerrorbells
set novisualbell
set t_vb=

set autoread                            " 文件在外部被修改时，自动重新读取
set foldmethod=indent                   " 设置代码折叠方式
set foldlevelstart=99                   " 设置代码默认不折叠

set confirm                             " 没有保存或文件只读时弹出确认
set cursorline                          " 高亮当前行

set history=128                         " 记录的命令数量

set hlsearch                            " 搜索时高亮被找到的文本
highlight Search guibg=darkgrey guifg=black

set ignorecase                          " 搜索模式里忽略大小写
set smartcase                           " 搜索模式里包含大写字符，不使用ignorecase选项
set incsearch                           " 输入搜索命令时，显示目前输入的模式的匹配位置

set ttimeoutlen=0

"-------------------------------
" external grep
set grepprg=/usr/local/bin/ggrep\ -Prn\ $*



" leader key
let mapleader = "\<Space>"
"------------------------------------------------



"-------------------PLUGIN SETTINGS----------------

" ycm
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/youcompleteme/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_cache_omnifunc = 0
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_key_invoke_completion = '<C-x><C-o>'
set completeopt=menuone,longest
autocmd InsertLeave * if pumvisible() == 0|pclose|endif


" utilsnips
let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"
let g:UltiSnipsEditSplit="vertical"


"vim-go
let g:go_fmt_command = "goimports"
let g:go_def_mode = 'gopls'
let g:go_info_mode = 'gopls'
let g:go_list_type = "quickfix"
let g:go_auto_type_info = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_structs = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_space_tab_error = 0
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 1
nnoremap <leader>i :GoImplements<CR>
nnoremap <leader>r :GoReferrers<CR>


"rainbow_parentheses
let g:rbpt_colorpairs = [
			\ ['brown',       'RoyalBlue3'],
			\ ['darkgray',    'DarkOrchid3'],
			\ ['darkgreen',   'firebrick3'],
			\ ['darkcyan',    'RoyalBlue3'],
			\ ['darkred',     'SeaGreen3'],
			\ ['darkmagenta', 'DarkOrchid3'],
			\ ['brown',       'firebrick3'],
			\ ['gray',        'RoyalBlue3'],
			\ ['darkmagenta', 'DarkOrchid3'],
			\ ['darkgreen',   'RoyalBlue3'],
			\ ['darkcyan',    'SeaGreen3'],
			\ ['darkred',     'DarkOrchid3'],
			\ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"airline
set laststatus=2
let g:airline_theme="distinguished"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" NERDTree
let NERDTreeChDirMode=2
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite,*/vendor/*,*/clients/*,*/thrift_gen/*

" CtrlP
let g:ctrlp_map = '<leader>f'
let g:ctrlp_cmd = 'CtrlP'


"---------------------------------------------------


"---------------KEY MAPPING----------------------------

" buffer
nmap <C-n> :bnext<CR>
nmap <C-p> :bprevious<CR>

" move in insert mode
inoremap <C-f> <right>
inoremap <C-b> <left>

" \键当前文件夹递归查找内容
nnoremap \ :FindAll<space>
nnoremap m :cnext<CR>
nnoremap M :cprevious<CR>

" plugin
nmap <leader>1 :NERDTree<CR>
nmap <leader>2 :TagbarToggle<CR>

" 系统剪贴板
vnoremap c "+y

" window size
nmap <silent> <leader>= :vertical resize +5<CR>
nmap <silent> <leader>- :vertical resize -5<CR>
nmap <silent> <leader>. :resize +5<CR>
nmap <silent> <leader>, :resize -5<CR>

" Tab
nnoremap <silent> <leader>t :tabnew<CR>
nnoremap <silent> <leader>n :tabnext<CR>
nnoremap <silent> <leader>p :tabprevious<CR>

" 不添加到jumplist
nnoremap <silent> ( :<C-u>execute "keepjumps norm! " . v:count1 . "("<CR>
nnoremap <silent> ) :<C-u>execute "keepjumps norm! " . v:count1 . ")"<CR>
nnoremap <silent> { :<C-u>execute "keepjumps norm! " . v:count1 . "{"<CR>
nnoremap <silent> } :<C-u>execute "keepjumps norm! " . v:count1 . "}"<CR>
nnoremap <silent> n :<C-u>execute "keepjumps norm! " . v:count1 . "n"<CR>
nnoremap <silent> N :<C-u>execute "keepjumps norm! " . v:count1 . "N"<CR>

" Switching windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" Tabular
map <leader>a= :Tabularize /=<CR>
map <leader>a: :Tabularize /:\zs<CR>
map <leader>a<space> :Tabularize / /<CR>
map <leader>a\| :Tabularize /\|<CR>

" cmdline
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>


"-------------------------------------------------
" auto-pairs
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap ' ''<left>
inoremap " ""<left>
inoremap ` ``<left>

function PairDelete()
    let str = strpart(getline('.'), col('.')-2, 2)
    let pairs = ["()", "[]", "{}", "<>", "\'\'", "\"\"", "``"]
    for value in pairs
        if value == str
            return "\<right>\<BS>\<BS>"
        end
    endfor
    return "\<BS>"
endfunction

function NewLineWithIndent()
    let ch = strpart(getline('.'), col('.')-1, 1)
    if ch == "}" || ch == "]" || ch == ")"
        return v:true
    end
    return v:false
endfunction

inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<right>" : ")"
inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<right>" : "]"
inoremap <expr> } strpart(getline('.'), col('.')-1, 1) == "}" ? "\<right>" : "}"
inoremap <silent> <expr> <CR> NewLineWithIndent() ? "\<CR>\<ESC>O" : "\<CR>"
inoremap <silent> <BS> <C-R>=PairDelete()<CR>


"------------------Custom Command-------------------------------
"json format
command JsonFormat %!python -m json.tool
"clang format
command ClangFormat %!clang-format -style="{BasedOnStyle: Google, IndentWidth: 4}"
"find
command -nargs=1 FindAll silent! grep <q-args> | redraw! | cwindow


"------------------Go To Definition--------------------
function GoToDef()
    if &ft == "go"
        execute "GoDef"
    else
        execute "YcmCompleter GoTo"
    endif
endfunction

nnoremap <leader>d :call GoToDef()<CR>


"---------------clean all empty buffer---------------
function CleanEmptyBuffer()
    let buffers = filter(range(1, bufnr('$')), 'buflisted(v:val) && getbufline(v:val, 1, "$") == [""] && empty(bufname(v:val))')
    if !empty(buffers)
        execute 'bdelete ' . join(buffers, ' ')
    endif
endfunction

command CleanEmptyBuffer call CleanEmptyBuffer()
