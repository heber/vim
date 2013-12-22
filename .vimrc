"========================================================================
" DseCRiption: 适合自己使用的vimrc文件，for Linux/Windows, GUI/Console
"
" Last Change: 2013-12-22 14:33:37 heber - heber386 AT gmail DOT com
"
" Author:      heber - heber386 AT gmail DOT com
"              Get latest vimrc from 
"
" Version:     1.0
"=========================================================================
set nocompatible            " 关闭 vi 兼容模式
syntax on                   "自动语法高亮
"common conf {{             通用配置
set ai                      "自动缩进
set bs=2                    "在insert模式下用退格键删除
set showmatch               "代码匹配
set laststatus=2            "总是显示状态行
set expandtab               "以下三个配置配合使用，设置tab和缩进空格数
set shiftwidth=4
set tabstop=4
set cursorline              "为光标所在行加下划线
set number                  "显示行号
set autoread                "文件在Vim之外修改过，自动重新读入

set ignorecase              "检索时忽略大小写
set fileencodings=uft-8,gbk "使用utf-8或gbk打开文件
set hls                     "检索时高亮显示匹配项
set helplang=cn             "帮助系统设置为中文
set foldmethod=syntax       "代码折叠
"}}

"conf for tabs, 为标签页进行的配置，通过ctrl h/l切换标签等
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>


"conf for plugins {{ 插件相关的配置
"状态栏的配置 

"pathogen是Vim用来管理插件的插件
"pathogen{
call pathogen#infect()
"}

"vim-colors-solarized{
if(has('gui_running'))
    set background=light
    colorscheme solarized
endif
"}

"ctrlp{
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
"}

"NERDTree{
map <C-l> :tabn<cr>             "下一个tab
map <C-h> :tabp<cr>             "上一个tab
map <C-n> :tabnew<cr>           "新tab
map <C-k> :bn<cr>               "下一个文件
map <C-j> :bp<cr>               "上一个文件
"}

"NERDTree-Tabs{
let g:nerdtree_tabs_open_on_console_startup=0       "设置打开vim的时候默认关闭目录树
let g:nerdtree_tabs_open_on_gui_startup=1           "设置打开gvim的时候默认打开目录树
map <leader>n <plug>NERDTreeTabsToggle <CR>         "设置打开目录树的快捷键
"}

"}}
