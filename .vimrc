"vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'Valloric/YouCompleteMe'

Plugin 'scrooloose/syntastic'

Plugin 'nvie/vim-flake8'

"Colors!!!
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'Yggdroot/indentLine'

Plugin 'tell-k/vim-autopep8'

Plugin 'jiangmiao/auto-pairs'

Plugin 'scrooloose/nerdcommenter'

Plugin 'python_fold'

call vundle#end()

filetype plugin indent on
"去掉vi的一致性"
set nocompatible
"显示行号"
set number
"隐藏滚动条"
set guioptions-=r
set guioptions-=L
set guioptions-=b
"隐藏顶部标签栏"
set showtabline=0
"设置字体"
set guifont=Monaco:h13
syntax on   "开启语法高亮"
let g:solarized_termcolors=256 "solarized主题设置在终端下的设置"
set background=dark  "设置背景色"
colorscheme solarized
set nowrap  "设置不折行"
set fileformat=unix  "设置以unix的格式保存文件
"set cindent   "设置c样式的缩进格式
set tabstop=4 "设置table长度"
set shiftwidth=4  "同上"
set showmatch   "显示匹配的括号"
set scrolloff=5  "距离顶部和底部5行"
set laststatus=2  "命令行为两行"
set fenc=utf-8   "文件编码"
set backspace=2
set mouse=a	"启用鼠标"
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase "忽略大小写"
set incsearch
set hlsearch	"高亮搜索项"
set noexpandtab "不允许扩展table"
set whichwrap+=<,>,h,l
set autoread
set cursorline "突出显示当前行"
set cursorcolumn "突出显示当前列"


"YouCompleteMe配置
let g:ycm_autoclose_preview_window_after_completion=1

"custom keys
let mapleader=","
noremap <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

call togglebg#map("<F3>")

let python_highlight_all=1

"split navigations
nnoremap <c-J> <C-W><C-J>
nnoremap <c-K> <C-W><C-K>
nnoremap <c-L> <C-W><C-L>
nnoremap <c-H> <C-W><C-H>

"F2开启和关闭树"
noremap <F2> :NERDTreeToggle<CR>
let NERDTreeDirMode=1
"显示书签"
let NERDTreeShowBookmarks=1
"设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']

"缩进指示线"
let g:indentLine_char='|'
let g:indentLine_enabled=1

"autopep8设置"
let g:autopep8_disabel_show_diff=1
let g:autopep8_aggressive=2
nnoremap <leader>m :Autopep8<cr>

"添加注释"
noremap <F4> <leader>ci <CR>

"代码折叠
set foldmethod=indent
nnoremap <space> za

"开启系统剪切板
set clipboard=unnamed

"设置语法检查
let g:syntastic_python_checkers = ['flake8']

"写入文件时自动调用flake8进行代码检查
autocmd BufWritePost *py call Flake8()

"快速添加.vimrc文件
nnoremap <leader>ev :vsplit $MYVIMRC<cr>	"分屏打开.vimrc文件"
nnoremap <leader>sv :source $MYVIMRC<cr>    "重新载入.vimrc文件"

"容易输入错误的代码自纠正
iabbrev slef self
iabbrev itme item
iabbrev tyep type

"退回normal模式映射
inoremap jk <esc>
