let mapleader=","
"不兼容vi
set nocompatible
filetype plugin on
syntax on

set history=200  "保存历史命令的条数，默认是20条

set nu rnu "设置显示行号
set shiftwidth=4 "每次缩进是4个空格
set softtabstop=4 "每次按tab键输入4个空格
set expandtab

"将vim里的数字 全部当成10进制的数字，尽管形如 001 
set nrformats=

set incsearch
set backspace=indent,eol,start
set autoindent

set nobackup       " no backup files
set noswapfile     " no swap files
set nowritebackup  " only in case you don't want a backup file while editing
set noundofile     " no undo files
set ruler       "显示corsur的位置
set cursorline  "高亮当前行
set showcmd
"go= 空串，意思是guioptions为空，即不要gui功能。
set go=a "添加a是实现了选中即复制的功能a的意思是在可视及选择模式里，选中的字符自动放到*寄存器里。即系统寄存器。
"set go+=m 
set go+=r 
set go+=e 
"set mouse=nvi
set mouse+=a
"set selectmode+=mouse

"set clipboard=unnamedplus

"============================vim-plugin settings========================
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " nerdtree
Plug 'Valloric/YouCompleteMe' " Ycm
Plug 'vimwiki/vimwiki' " vimwiki
Plug 'vim-airline/vim-airline'
"colorscheme
Plug 'gruvbox-community/gruvbox' "thmem gruvbox
Plug 'joshdick/onedark.vim'

" Languages and file types.
Plug 'cakebaker/scss-syntax.vim'
Plug 'chr4/nginx.vim'
Plug 'chrisbra/csv.vim'
"Plug 'ekalinin/dockerfile.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'godlygeek/tabular' | Plug 'tpope/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'lifepillar/pgsql.vim'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'stephpy/vim-yaml'
Plug 'tmux-plugins/vim-tmux'
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-liquid'
"Plug 'tpope/vim-rails'
Plug 'vim-python/python-syntax'
"Plug 'vim-ruby/vim-ruby'
Plug 'wgwoods/vim-systemd-syntax'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()
"========================================================================

"============================nerdtree====================================
let NERDTreeWinSize=20
let NERDTreeMinimalUI=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
"========================================================================

"============================ ctags =====================================
"文件保存的时候自动index一下
":autocmd BufWritePost * call system("ctags -R --exclude=.git")
"========================================================================

"============================ vimwiki ===================================

let wiki_html={}
let wiki_html.path='~/.vim/vimwiki/wiki1/cont'
let wiki_html.path_html='~/.vim/vimwiki/wiki1/html'

let wiki_md={}
let wiki_md.path='/mnt/c/Users/70492/OneDrive/wiki/md'
let wiki_md.path_html='/mnt/c/Users/70492/OneDrive/wiki/md'
let wiki_md.syntax='markdown'
let wiki_md.ext='.md'
"todo 
"let wiki_md.css_file": '/mnt/f/Dropbox/vimwiki/css/style.css',
let g:vimwiki_list = [wiki_md, wiki_html]

let g:vimwiki_auto_chdir=1


"let g:vimwiki_list = [
" \{"path": "/mnt/f/Dropbox/vimwiki/md", 
" \ "path_html": "/mnt/f/Dropbox/vimwiki/html",
" \ "syntax": "markdown", 
" \ "ext": ".md",
" \ "css_file": '/mnt/f/Dropbox/vimwiki/css/style.css',
" \ "auto_export": 0}
" \]

"========================================================================
" \"custom_wiki2html": \"/mnt/f/Dropbox/vimwiki/exe/misaka_md2html.py",

"============================ markdown preview ==========================
"let g:mkdp_auto_close=0
"let g:mkdp_refresh_slow=1
"let g:mkdp_markdown_css='/mnt/f/Dropbox/vimwiki/css/github-markdown.css'
"========================================================================
"
"set t_Co=256 记着注释或者删除这一行
if has("termguicolors")
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

set background=dark
colorscheme gruvbox
"colorscheme onedark
"let g:gruvbox_contrast_dark='hard'
