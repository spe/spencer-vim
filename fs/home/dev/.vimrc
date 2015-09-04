set nocompatible
filetype off
" always show ^M in DOS files
set ff=unix

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'ctags.vim'
Plugin 'cscope.vim'
"Plugin 'cscope-quickfix'
"git usage
Plugin 'tpope/vim-fugitive'

Plugin 'lastpos.vim'
"Plugin 'groenewege/vim-less'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'Shougo/unite.vim'
Plugin 'majutsushi/tagbar'
"Plugin 'chrisbra/csv.vim'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-signify'
"Plugin 'edkolev/tmuxline.vim'
"Plugin 'edkolev/promptline.vim'
"Plugin ''

"file cache
Plugin 'MarcWeber/vim-addon-mw-utils'

" file, exception log, change log
Plugin 'tomtom/tlib_vim'

Plugin 'spe/snipmate-snippets'
Plugin 'garbas/vim-snipmate'
"Plugin 'honza/vim-snippets'
"Plugin 'othree/vim-autocomplpop'
Plugin 'EasyMotion'
"Plugin 'klen/python-mode'
"Plugin 'Valloric/YouCompleteMe'

" for SouceInsight environment
"Plugin 'Trinity'
Plugin 'wesleyche/Trinity'
"Plugin 'Source-Explorer-srcexpl.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'SrcExpl'
Plugin 'wesleyche/SrcExpl'
Plugin 'taglist.vim'
Plugin 'winmanager'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'a.vim'
Plugin 'vimwiki'
"Plugin 'dokuwiki'
"Plugin 'vim-dokuwiki'
"Plugin 'DokuVimKi'
"Plugin 'c.vim'
"Plugin 'WolfgangMehner/vim-plugins'
Plugin 'spe/vim-plugins'
Plugin 'AutoComplPop'

" buffer windows
"Plugin 'minibufexpl.vim'
"Plugin 'bufexplorer.zip'
Plugin 'jlanzarotta/bufexplorer'
"Plugin 'FuzzyFinder'
"Plugin 'L9'
"L9 need for FuzzyFinder

" Alternate Files quickly (.c --> .h etc)

" mark function
"Plugin 'Mark--Karkat'
"Plugin 'Mark'
"Plugin 'BOOKMARKS--Mark-and-Highlight-Full-Lines'
"Plugin 'Visual-Mark'
"Plugin 'vim-scripts/Visual-Mark'
"Plugin 'spe/Visual-Mark'
Plugin 'MattesGroeger/vim-bookmarks'

"Plugin 'EnhCommentify.vim'
Plugin 'vim-scripts/EnhCommentify.vim'

"check the coding error
"Plugin 'scrooloose/syntastic'

Plugin 'vimcommander'
Plugin 'mileszs/ack.vim'
Plugin 'yssl/QFEnter'
Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'mbbill/undotree'

"Bundle 'vim-multiple-cursors'

call vundle#end()            " required
filetype plugin indent on    " required

" undotree
"---------------------------------------------------------------------------
nnoremap <Leader>d :UndotreeToggle<cr>

" vimwiki
"---------------------------------------------------------------------------
nmap <leader>tt <Plug>VimwikiToggleListItem
let wiki_1 = {}
let wiki_1.path = '~/vimwiki/'
"let wiki_1.html_template = '~/public_html/template.tpl'
"let wiki_1.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}

let wiki_2 = {}
let wiki_2.path = '~/devArea/BSP/dell/'
"let wiki_2.index = 'main'

let g:vimwiki_list = [wiki_1, wiki_2]
nmap <Leader>wb <Plug>VimwikiGoBackLink

" bookmarks
"---------------------------------------------------------------------------
hi SignColumn ctermbg=233
hi BookmarkSign ctermbg=17 ctermfg=51
hi BookmarkAnnotationSign ctermbg=17 ctermfg=51
hi BookmarkLine ctermbg=17 ctermfg=NONE
hi BookmarkAnnotationLine ctermbg=17 ctermfg=NONE
"let g:bookmark_sign = '♥'
let g:bookmark_sign = '☯'
let g:bookmark_annotation_sign = 'B'
let g:bookmark_highlight_lines = 1
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1
"call unite#custom#profile('source/vim_bookmarks', 'context', {
"    \   'winheight': 13,
"    \   'direction': 'botright',
"    \   'start_insert': 0,
"    \   'keep_focus': 1,
"    \   'no_quit': 1,
"    \ })

" ctrlp
"---------------------------------------------------------------------------
let g:ctrlp_map = ',,'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"  \ 'file': '\v\.(exe|so|dll)$',
"  \ 'link': 'some_bad_symbolic_links',
"  \ }

" Unite
"---------------------------------------------------------------------------
"nnoremap f :Unite file<CR>
nnoremap <Leader>u :Unite file buffer<CR>

" vimcommander
"---------------------------------------------------------------------------
noremap <silent> <F8> :cal VimCommanderToggle()<CR>

" NERDTreeTabs
"---------------------------------------------------------------------------
map <Leader>n <plug>NERDTreeTabsToggle<CR>
let g:NERDTreeDirArrows=0

" syntastic
"---------------------------------------------------------------------------
" 在打开文件的时候检查
let g:syntastic_check_on_open=0
"phpcs，tab4个空格，编码参考使用CodeIgniter风格
"let g:syntastic_phpcs_conf = "--tab-width=4 --standard=CodeIgniter"

" EasyMotion
"---------------------------------------------------------------------------
"let g:EasyMotion_leader_key = '<Leader>'

"nnoremap <silent> <F5> :NERDTree<CR>

syntax on
filetype plugin on
set t_Co=256
"set fileencoding=utf-8
set encoding=utf-8
"set fileencoding=gb18030
"set fileencodings=ucs-bom,gb18030,utf-8,default

" for airline settings:
let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_whitespace=0
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
let g:airline_powerline_fonts = 1

set expandtab
set ai " autoindent, ai " set noai
set ts=4 "tabstop
set sts=4 "softtabstop
set sw=4 "shiftwidth
set laststatus=2 " For 'powerline'
set ic "搜索不分大小写
set hls "标识关键字
set nu "显示行号
"exec ':language message zh_TW.UTF-8'
exec ':language message en_US.UTF-8'
if !exists("g:vimrc_loaded")
	"Enable syntax hl
	"syntax enable

	" color scheme
	if has("gui_running")
		" set guioptions-=T
		" set guioptions-=m
		" set guioptions-=L
		" set guioptions-=r
		"colorscheme fruit
		"hi normal guibg=#294d4a
	else
		"colorscheme evening
	endif " has
endif " exists(...)
"set background=dark
"colorscheme desert256
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=grey
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=darkgrey
let g:indent_guides_color_change_percent = 10

set dictionary+=/usr/share/dict/words

"去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set nocp

"显示匹配括号
set showmatch

" Line highlight 設此是游標整行會標註顏色
set cursorline
"set cursorcolumn
hi cursorline term=NONE cterm=NONE ctermbg=233 guibg=Grey90
hi linenr ctermbg=232 ctermfg=235 guifg=18
hi CursorLineNr term=bold ctermfg=27 gui=bold guifg=Brown
hi Comment term=bold ctermfg=239 guifg=Blue
hi Todo ctermfg=196 ctermbg=10 cterm=none
hi Visual term=reverse ctermbg=17 guibg=LightGrey
"hi Search cterm=NONE ctermfg=darkGrey ctermbg=Yellow
hi Search cterm=NONE ctermfg=darkGrey

"hi SignColor ctermfg=white ctermbg=21
"syntax on



"---------------------------------------------------------------------------
" mapping
" 如果下拉菜单弹出，回车映射为接受当前所选项目，否则，仍映射为回车；
"
" 如果下拉菜单弹出，CTRL-J映射为在下拉菜单中向下翻页。否则映射为CTRL-X CTRL-O；
"
" 如果下拉菜单弹出，CTRL-K映射为在下拉菜单中向上翻页，否则仍映射为CTRL-K；
"
" 如果下拉菜单弹出，CTRL-U映射为CTRL-E，即停止补全，否则，仍映射为CTRL-U；
inoremap <expr> <CR>       pumvisible()?"\<C-Y>":"\<CR>"
inoremap <expr> <C-J>      pumvisible()?"\<PageDown>\<C-N>\<C-P>":"\<C-X><C-O>"
inoremap <expr> <C-K>      pumvisible()?"\<PageUp>\<C-P>\<C-N>":"\<C-K>"
inoremap <expr> <C-U>      pumvisible()?"\<C-E>":"\<C-U>"a

"home添加文件头
function Mytitle()
	call setline(1,"/**********************************************")
	call append(line("."),"作者:自己名字")
	call append(line(".")+1,"时间:".strftime("%c"))
	call append(line(".")+2,"文件名:".expand("%"))
	call append(line(".")+3,"描述:")
	call append(line(".")+4,"**********************************************/")
endf
map <home> <Esc>:call Mytitle()<CR><Esc>:$<Esc>o

"智能补全
let OmniCpp_DefaultNamespaces = ["std"]
"highlight Pmenu ctermbg=13 guibg=LightGray
"highlight PmenuSel ctermbg=7 guibg=DarkBlue guifg=White
"highlight PmenuSbar ctermbg=7 guibg=DarkGray
"highlight PmenuThumb guibg=DarkBlue
hi Pmenu ctermbg=DarkBlue ctermfg=Yellow guibg=LightGray
hi PmenuSel ctermbg=White guibg=DarkBlue guifg=White
hi PmenuSbar ctermbg=1 guibg=DarkGray
hi PmenuThumb guibg=DarkBlue

"====[ Show when lines extend past column 80 "]================================>-<=====================
highlight ColorColumn ctermbg=052
function! MarkMargin (on)
if exists('b:MarkMargin')
try
call matchdelete(b:MarkMargin)
catch /./
endtry
unlet b:MarkMargin
endif
if a:on
let b:MarkMargin = matchadd('ColorColumn', '\%81v', 100)
endif
endfunction
augroup MarkMargin
autocmd!
autocmd BufEnter * :call MarkMargin(1)
autocmd BufEnter *.vp* :call MarkMargin(0)
augroup END

"bufferexplorer设置
"---------------------------------------------------------------------------
"实现<C-Tab> 向前循环切换到每个buffer上,并在当前窗口打开
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExpleMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 0
let g:bufExplorerSortBy = "name"
let g:MBEVisibleChanged=1
"<C-S-Tab> 向后循环切换到每个buffer上,并在当前窗口打开
autocmd BufRead,BufNew :call UMiniBufExplorer
"map <leader>u :TMiniBufExplorer<cr>

" QUICKFIX WINDOW
"---------------------------------------------------------------------------
"function! GetBufferList()
"    redir =>buflist
"    silent! ls
"    redir END
"    return buflist
"endfunction

"function! ToggleList(bufname, pfx)
"    let buflist = GetBufferList()
"    for bufnum in map(filter(split(buflist, '\n'), 'v:val =~ "'.a:bufname.'"'), 'str2nr(matchstr(v:val, "\\d\\+"))')
"        if bufwinnr(bufnum) != -1
"            exec(a:pfx.'close')
"            return
"        endif
"    endfor
"    if a:pfx == 'l' && len(getloclist(0)) == 0
"        echohl ErrorMsg
"        echo "Location List is Empty."
"        return
"    endif
"    let winnr = winnr()
"    exec(a:pfx.'open')
"    if winnr() != winnr
"        wincmd p
"    endif
"endfunction

"nmap <silent> <leader>l :call ToggleList("Location List", 'l')<CR>
"nmap <silent> <leader>e :call ToggleList("Quickfix List", 'c')<CR>
"---
command -bang -nargs=? QFix call QFixToggle(<bang>0)
function! QFixToggle(forced)
    if exists("g:qfix_win") && a:forced == 0
        cclose
        unlet g:qfix_win
    else
        copen 7
        let g:qfix_win = bufnr("$")
    endif
endfunction

"ctags
set tags+=tags
"set tags+=/home/spencer/devArea/Projects/Pandaboard_ES_4460/02-SW/kernel/ubuntu/kernel-ubuntu/tags

"set tags+=/home/spencer/devArea/Projects/Pandaboard_ES_4460/02-SW/kernel/kernel-ubuntu/tags
"set tags+=/home/sarah/devArea/linuxKernel/linux-3.2.0/tags
"set tags+=/lib/modules/3.2.0-29-generic/build/tags

" cscope settings
"---------------------------------------------------------------------------
if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=1
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
	cs add cscope.out
	" else add database pointed to by environment
	elseif $CSCOPE_DB != ""
	cs add $CSCOPE_DB
	endif
	set csverb
	set cscopetag
	set cscopequickfix=s-,g-,c-,d-,t-,e-,f-,i-
endif

"<C-_>s		search this symbol, could skip note
"<C-_>g		search this define
"<C-_>c		search the functions using this function
"<C-_>t		search this char, token
"<C-_>e		search this egrep mode
"<C-_>f		search this document
"<C-_>i		search the document which contain this doc
"<C-_>d		search all functions which this function has
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"Trinity Settings
"---------------------------------------------------------------------------
"nmap gt :TrinityToggleAll<CR>
nmap gt :call TrinityToggleAllCheck()<CR>
nmap gs :call TrinityToggleSourceExplorerCheck()<CR>
nmap gl :call TrinityToggleTagListCheck()<CR>
nmap gf :call TrinityToggleNERDTreeCheck()<CR>

function! TrinityToggleAllCheck()
"exe 'CMiniBufExplorer'
exe 'TrinityToggleAll'
"exe 'CMiniBufExplorer'
endfunction

function! TrinityToggleSourceExplorerCheck()
"exe 'CMiniBufExplorer'
exe 'TrinityToggleSourceExplorer'
"exe 'CMiniBufExplorer'
endfunction

function! TrinityToggleTagListCheck()
"exe 'CMiniBufExplorer'
exe 'TrinityToggleTagList'
"exe 'CMiniBufExplorer'
endfunction

function! TrinityToggleNERDTreeCheck()
"exe 'CMiniBufExplorer'
exe 'TrinityToggleNERDTree'
"exe 'CMiniBufExplorer'
endfunction

"SrcExpl Settings
"---------------------------------------------------------------------------
" // The switch of the Source Explorer                                         "
" nmap <F8> :SrcExplToggle<CR>
"
" // Set the height of Source Explorer window                                  "
" let g:SrcExpl_winHeight = 8
"                                                                              "
" // Set 100 ms for refreshing the Source Explorer                             "
let g:SrcExpl_refreshTime = 100
"                                                                              "
" // Set "Enter" key to jump into the exact definition context                 "
let g:SrcExpl_jumpKey = "<ENTER>"
"                                                                              "
" // Set "Space" key for back from the definition context                      "
let g:SrcExpl_gobackKey = "<SPACE>"
"                                                                              "
" // In order to Avoid conflicts, the Source Explorer should know what plugins "
" // are using buffers. And you need add their bufname into the list below     "
" // according to the command ":buffers!"                                      "
let g:SrcExpl_pluginList = [
        \ "__Tag_List__",
        \ "_NERD_tree_",
        \ "Source_Explorer"
    \ ]
"                                                                              "
" // Enable/Disable the local definition searching, and note that this is not  "
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. "
" // It only searches for a match with the keyword according to command 'gd'   "
let g:SrcExpl_searchLocalDef = 1
"                                                                              "
" // Do not let the Source Explorer update the tags file when opening          "
let g:SrcExpl_isUpdateTags = 0
"                                                                              "
" // Use program 'ctags' with argument '--sort=foldcase -R' to create or       "
" // update a tags file                                                        "
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."
"                                                                              "
" // Set "<F10>" key for updating the tags file artificially                   "
" let g:SrcExpl_updateTagsKey = "<F10>"

"Tlist 和 wm的设置
"命令模式输入wm打开Tlist和WM

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_WinWidth = 42
let g:winManagerWindowLayout='FileExplorer|TagList'
let g:winManagerWidth=42
nmap wm :WMToggle<cr>

" Highlight Search
"---------------------------------------------------------------------------
command -bang -nargs=? HLsearch call HLsearchToggle(<bang>0)
function! HLsearchToggle(forced)
endfunction

"---------------------------------------------------------------------------
map <F3> :set nu <CR>
map <F4> :set nonu <CR>
map <F6> :bp <CR>
map <F7> :bn <CR>
"map <F7> :bp <CR>
"map <F8> :bn <CR>
"qmap <F9> :shell <CR>
"map <F10> :WMToggle <CR>
"map <F11> :edit
"map <F12> :TlistToggle <CR>
nmap wt :TlistToggle <CR>
nmap tb :TagbarToggle <CR>
map <F9> :set scb <CR>
map <F10> :set noscb <CR>
map <F11> :set hlsearch <CR>
map <F12> :set nohlsearch <CR>

map <c-w><c-f> :FirstExplorerWindow <CR>
map <c-w><c-b> :BottomExplorerWindow <CR>
"map <c-p><c-r> :MRU <CR>

nnoremap <leader>q :QFix<CR>
nmap <C-q> :colder<CR>:cc<CR>

nmap [h <Plug>GitGutterPrevHunk<CR>
nmap ]h <Plug>GitGutterNextHunk<CR>

"map <A-m> :call Vm_toggle_sign() <CR>
"map µ :call Vm_toggle_sign() <CR>
"map <A-2>  :call Vm_goto_next_sign() <CR>
"map<unique>mn <Plug>Vm_goto_next_sign
"map <A-1>  :call Vm_goto_prev_sign() <CR>
"map<unique>mp <Plug>Vm_goto_prev_sign
map <c-0>  :bn <CR>
"map º    :bn<CR>
map <c-9>  :bp <CR>
"map ª     :bp <CR>
" map <A-5> : shell
map ∞ :shell <CR>

"Insert the header of main file
nmap <leader>cv :call C_InsertTemplate("comment.file-description")<CR>

"vimgrep
nmap <c-l><c-l> viwy::vimgrep /\<<C-R>"\>/ **/*.[ch] **/*.[ch]pp<CR>
"nmap <c-l><c-l> viwy::vimgrep /\<<C-R>"\>/ **/*.[ch] **/*.[ch]pp **/*.java **/*.pl **/*.rb **/*.py<CR>
"for qfix, cn:next err,
nmap <c-n> :cn<CR>
"for qfix, cp:previos err,
nmap <c-m> :cp<CR>
map <leader>z :set foldmethod=syntax<CR>

"set paste : This cmd will prevent the opeartion which is auto-stuffing the empty line from pasting some code from clipboard.
"set nopaste
"

"===============================================================================
"EasyMotion
"<Leader><Leader>w : to jump to the word you want forward
"<Leader><Leader>b : to jump to the word you want backward

"===============================================================================
