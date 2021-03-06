" ============================================================
"  Author: chusiang / chusiang (at) drx.tw
"  Blog: http://note.drx.tw
"  Filename: plugin-list.vim
"  Modified: 2016-10-06 19:00
"  Description: Vim plugin manage with NeoBundle.
" =========================================================== 

" # Bundle List

" ## vimproc
NeoBundle 'Shougo/vimproc'
"NeoBundle 'Shougo/vimproc', {
"      \ 'build' : {
"      \     'windows' :'make -f make_mingw32.mak',
"      \     'cygwin' : 'make -f make_cygwin.mak',
"      \     'mac' : 'make -f make_mac.mak',
"      \     'unix' : 'make -f make_unix.mak',
"      \    },
"      \ }

" ## vimshell.vim
NeoBundle 'Shougo/vimshell.vim'

" ## YouCompleteMe (code-completion)
NeoBundle 'Valloric/YouCompleteMe'
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'gitcommit' : 1,
      \}
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" ## UltiSnips (auto-complete)
NeoBundle 'SirVer/ultisnips'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsListSnippets="<c-s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:UltiSnipsSnippetDirectories=["UltiSnips", "ultisnips_my"]

" snippets for UltiSnips.
NeoBundle 'honza/vim-snippets'

" ## vim-airline
" replace 'vim-powerline'.
NeoBundle 'bling/vim-airline'
"let g:airline_powerline_fonts = 1

" ## c.vim
NeoBundleLazy 'c.vim'
autocmd FileType c NeoBundleSource c.vim

" ## calendar.vim
"NeoBundle 'calendar.vim'
NeoBundle 'calendar.vim--Matsumoto'
nmap <leader>wc	:Calendar<CR>

" ## Colorscheme
"NeoBundle 'flazz/vim-colorschemes'
"NeoBundle 'chriskempson/vim-tomorrow-theme'
"NeoBundle 'nanotech/jellybeans.vim'

" ## ctrlp.vim
NeoBundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll|cfg|desktop)$',
	\ 'link': 'some_bad_symbolic_links',
\ }
let g:ctrlp_user_command = {
	\ 'types': {
		\ 1: ['.git', 'cd %s && git ls-files -c -o'],
   		\ 2: ['.hg', 'hg --cwd %s locate -I .'],
	\ },
	\ 'fallback': 'find %s -type f'
\ }

" integration the Buffer and MRU.
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>m :CtrlPMRU<CR>

" ## Vim EasyMotion
NeoBundle 'easymotion/vim-easymotion'

" ## EditorConfig
NeoBundle 'editorconfig/editorconfig-vim'

" ## EnhCommentify.vim
NeoBundle 'EnhCommentify.vim'

" ## Emmet
"NeoBundle 'mattn/emmet-vim'
"let g:user_emmet_install_global = 0
"let g:user_emmet_mode='n'
"let g:user_emmet_leader_key='<C-Q>'
"autocmd FileType html,css EmmetInstall

" ## EverVim
"NeoBundle 'kakkyz81/evervim'
"nmap <leader>ec :EvervimCreateNote<CR>
"nmap <leader>el :EvervimNotebookList<CR>
"nmap <leader>er :EvervimReloadPref<CR>
"nmap <leader>ej :EvervimPageNext<CR>
"nmap <leader>ek :EvervimPagePrev<CR>
"nmap <leader>es :EvervimSearchByQuery 


" ## Gitv (need the fugitive plugin)
"NeoBundle 'gitv'				
"NeoBundle 'gregsexton/gitv'
NeoBundle 'tpope/vim-fugitive'
"nmap <leader>gv :Gitv --all<CR>
"nmap <leader>gV :Gitv! --all<CR>
"vmap <leader>gV :Gitv! --all<CR>

" ## Global Session
"NeoBundle 'c9s/gsession.vim'
""NeoBundle 'gsession.vim'
"let g:session_dir				= '$HOME/.vim/session'
""let g:local_session_filename	= '.session.vim'
"let g:autoload_session = 0
"let g:autosave_session = 0
""let g:gsession_non_default_mapping = 1

" ## Vim Git Gutter
NeoBundle 'airblade/vim-gitgutter'

"You can explicitly turn vim-gitgutter off and on (defaults to on):
"
"    turn off with :GitGutterDisable
"    turn on with :GitGutterEnable
"    toggle with :GitGutterToggle.
nmap <leader>d	:GitGutterToggle<CR>
"
"And you can turn line highlighting on and off (defaults to off):
"
"    turn on with :GitGutterLineHighlightsEnable
"    turn off with :GitGutterLineHighlightsDisable
"    toggle with :GitGutterLineHighlightsToggle.
"
"Furthermore you can jump between hunks:
"
"    jump to next hunk: ]h
"    jump to previous hunk: [h.
"
nmap gh <Plug>GitGutterNextHunk
nmap gH <Plug>GitGutterPrevHunk

" ## HTML5 omnicomplete and syntax
NeoBundle 'othree/html5.vim'

" ## indentLine
NeoBundle 'Yggdroot/indentLine'

" ## livedown 
NeoBundle 'shime/vim-livedown'
nmap gm :LivedownToggle<CR>

" ## Matchit
NeoBundle 'matchit.zip'

" ## mru.vim
NeoBundle 'mru.vim'
let MRU_Max_Entries = 1000
"nmap <leader>m  :MRU<CR>

" ## NERDTree
NeoBundle 'scrooloose/nerdtree'
let NERDTreeWinPos=1                " Open NERDTree at right window.
nmap <leader>e  :NERDTreeToggle<CR>

" ## nerdtree-git-plugin
NeoBundle 'Xuyuanp/nerdtree-git-plugin'

" ## vim-notes
NeoBundle 'xolox/vim-notes'
NeoBundle 'xolox/vim-misc'
let g:notes_directories = ['~/Dropbox/notes']
let g:notes_suffix = '.txt'

" ## numbers.vim
"NeoBundle 'myusuf3/numbers.vim'
"nnoremap <F3> :NumbersToggle<CR>

" ## Omni Complete
set ofu=syntaxcomplete#Complete
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"  - Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"  - Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
	let g:neocomplcache_omni_patterns = {}
endif

"let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
"let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

" ## OmniCppComplete
"NeoBundle 'OmniCppComplete'
"
"set tags+=~/vimfiles/tags/tags
"set tags+=~/vimfiles/tags/c++.tags
"set tags+=~/vimfiles/tags/stl-3.3.tags
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
"let OmniCpp_MayCompleteDot = 1 " autocomplete with .
"let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
"let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
"let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
"let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files

" ## phpfolding.vim
NeoBundleLazy 'phpfolding.vim', '3d5149e651'
autocmd FileType php NeoBundleSource phpfolding
autocmd FileType php noremap <F4> :!php -l % <CR>
"autocmd FileType php noremap <F5> <Esc>:EnableFastPHPFolds<Cr>
"autocmd FileType php noremap <F6> <Esc>:EnablePHPFolds<Cr>
"autocmd FileType php noremap <F7> <Esc>:DisablePHPFolds<Cr> 

" ## Powerline for Vim
"NeoBundle 'Lokaltog/vim-powerline'
"set laststatus=2
"set fillchars+=stl:\ ,stlnc:\ 
"let g:Powerline_symbols = 'fancy'
"set -g default-terminal 'screen-256color'

" ## pythoncomplete
NeoBundle 'pythoncomplete'

" ## Ragtag
" - https://github.com/tpope/vim-ragtag/blob/master/doc/ragtag.txt
"
" Mapping       Changed to  (cursors = ^)   ~
" <C-X><Space>  <foo>^</foo>              *ragtag-CTRL-X_<Space>*
" <C-X><CR>     <foo>\n^\n</foo>          *ragtag-CTRL-X_<CR>*
"
NeoBundle 'tpope/vim-ragtag'

" ## SrcExpl 
"NeoBundle 'wesleyche/SrcExpl'
"map <leader>s  :<C-u>SrcExplToggle<CR>
"
"" // The switch of the Source Explorer 
"" nmap <F8> :SrcExplToggle<CR> 
""
"" " // Set the height of Source Explorer window 
"" let g:SrcExpl_winHeight = 8 
""
"" " // Set 100 ms for refreshing the Source Explorer 
"" let g:SrcExpl_refreshTime = 100 
""
"" // Set 'Enter' key to jump into the exact definition context 
"" let g:SrcExpl_jumpKey = '<ENTER>'
""
"" // Set 'Space' key for back from the definition context 
"" let g:SrcExpl_gobackKey = '<SPACE>'
""
"" " // In order to Avoid conflicts, the Source Explorer should know what  plugins 
"" " // are using buffers. And you need add their bufname into the list below 
"" " // according to the command ':buffers!'
" let g:SrcExpl_pluginList = [ 
"             \ '__Tag_List__',
"             \ '_NERD_tree_', 
"             \ 'Source_Explorer' 
"             \ ] 
""
"" // Enable/Disable the local definition "searching, and note that this is not 
"" // guaranteed to work, the Source Explorer "doesn't check the syntax for now. 
"" // It only searches for a match with the keyword according to command 'gd' 
"let g:SrcExpl_searchLocalDef = 1 
"
"" // Do not let the Source Explorer update the "tags file when opening 
"let g:SrcExpl_isUpdateTags = 0 
"
"" // Use 'Exuberant Ctags' with '--sort=foldcase "-R .' or '-L cscope.files' to 
"" // create/update the tags file 
"let g:SrcExpl_updateTagsCmd = 'ctags --sort=foldcase -R .' 
"
"" // Set '<F12>' key for updating the tags file "artificially 
""let g:SrcExpl_updateTagsKey = '<F12>' 
"
"" // Set '<F3>' key for displaying the previous definition in the jump list 
""let g:SrcExpl_prevDefKey = '<F3>'
"
"" // Set '<F4>' key for displaying the next "definition in the jump list 
""let g:SrcExpl_nextDefKey = '<F4>' 

" ## Sublime Text like.
NeoBundle 'terryma/vim-multiple-cursors'
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-m>'
let g:multi_cursor_skip_key='<C-q>'
let g:multi_cursor_quit_key='<Esc>'

" ## reStructuredText in Vim
"NeoBundle 'Rykka/riv.vim'
"NeoBundle 'Rykka/clickable.vim'
"let g:clickable_browser='/usr/bin/firefox'
"let g:clickable_extensions='txt,js,css,html,py,vim,java,jade,c,cpp,rst,php,rb'
"NeoBundle 'Rykka/clickable-things'
"NeoBundle 'Rykka/os.vim'

" ## surround
" ex. [chusiang] → 'chusiang', <b>chusiang</b> → <u>chusiang</u>
NeoBundle 'tpope/vim-surround'
"NeoBundle 'surround'

" ## sdcv
NeoBundle 'chusiang/vim-sdcv'
nmap <leader>w :call SearchWord()<CR>

" ## Tagbar
NeoBundle 'majutsushi/tagbar'
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
nmap <leader>t :<C-u>TagbarToggle<CR>
"nnoremap <F3> :<C-u>TagbarToggle<CR>

if has('win32')
	let g:tagbar_ctags_bin='C:\ctags.exe'
endif

" ## TagList
NeoBundle 'taglist.vim'
"nmap <leader>t :<C-u>Tlist<CR>

" ## Trinity (SrcExpl need)
NeoBundle "wesleyche/Trinity"

" ## vimcdoc-tw
NeoBundle 'chusiang/vimcdoc-tw'
"set helplang=tw

" ## vim-indent-object
" - https://github.com/michaeljsmith/vim-indent-object/blob/master/doc/indent-object.txt
"
" Key Mapping       Description     ~
" <count>ai         (A)n (I)ndentation level and line above.
" <count>ii         (I)nner (I)ndentation level (no line above).
" <count>aI         (A)n (I)ndentation level and lines above/below.
" <count>iI         (I)nner (I)ndentation level (no lines above/below).
"
"NeoBundle 'michaeljsmith/vim-indent-object'

" ## Vimwiki
NeoBundle 'vimwiki'

" - g:vimwiki_list* *vimwiki-multiple-wikies*.
let g:vimwiki_list = [
      \ { 'path': '~/vimwiki/',
      \   'index': 'index',
      \   'path_html': '~/vimwiki/public_html/',
      \   'syntax': 'markdown', 'ext': '.md'
      \ },
			\ { 'path': '~/vimwiki/diary/',
      \   'syntax': 'markdown',
      \   'ext': '.md'
      \ }]

" - Header level color.
:hi VimwikiHeader1 guifg=#FF0000	" Red
:hi VimwikiHeader2 guifg=#FFDB00	" Yellow
:hi VimwikiHeader3 guifg=#9C9CE0	" Light Purple 
:hi VimwikiHeader4 guifg=#91B9E0	" Light Blue
:hi VimwikiHeader5 guifg=#999999	" Light Grey
:hi VimwikiHeader6 guifg=#49D432	" Light Green

" - Default Browser.
let g:vimwiki_browsers=['/usr/bin/firefox']

" - Keymap
autocmd BufRead,BufNewFile *.md noremap	<leader>wtb	:VimwikiTable <CR>
autocmd BufRead,BufNewFile *.md noremap	<leader>wj	:VimwikiDiaryNextDay <CR>
autocmd BufRead,BufNewFile *.md noremap	<leader>wk	:VimwikiDiaryPrevDay <CR>
autocmd BufRead,BufNewFile *.md noremap	<leader>wo	<C-Space> <CR>

" ## VST (Vim reStructured Text)
NeoBundle 'VST'
let g:vst_write_export=1	" plugin of vst default export html.

" ## wmgraphviz.vim
NeoBundle 'wannesm/wmgraphviz.vim'
let g:WMGraphviz_viewer='xdg-open'
let g:WMGraphviz_output="png" 
nmap <leader>lp :GraphvizCompile<CR>
nmap <leader>ll :GraphvizCompilePDF<CR>
nmap <leader>lv :GraphvizShow<CR>
nmap <leader>li :GraphvizInteractive<CR>

" ## Start Syntax
NeoBundle 'scrooloose/syntastic'
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_enable_highlighting = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" ignore files of Ansible Roles.
let g:syntastic_ignore_files = ['\m^roles/']

nmap <leader>q :SyntasticToggleMode<CR>

NeoBundle 'BBCode--Dahn'
NeoBundle 'othree/vim-javascript-syntax'
NeoBundle 'css3'
NeoBundle 'hail2u/vim-css3-syntax'

NeoBundle 'skammer/vim-css-color'
let g:cssColorVimDoNotMessMyUpdatetime = 1

NeoBundle 'gorodinskiy/vim-coloresque'
NeoBundle 'jQuery'
NeoBundle 'php.vim'
"NeoBundle 'cpp.vim'
"NeoBundle 'django.vim'
NeoBundle 'jgb/django.vim'
NeoBundle 'python.vim--Vasiliev'
NeoBundle 'nginx.vim'
NeoBundle 'tmux-plugins/vim-tmux'
"NeoBundle 'rest.vim'
"set syntax=rest
NeoBundle 'vim-scripts/bats.vim'
NeoBundle 'xu-cheng/brew.vim'
"NeoBundle 'vadv/vim-chef'
"autocmd FileType ruby,eruby set filetype=ruby.eruby.chef
NeoBundle 'rking/ag.vim'
NeoBundle 'ekalinin/Dockerfile.vim'
NeoBundle 'pearofducks/ansible-vim'
NeoBundle 'Glench/Vim-Jinja2-Syntax'

NeoBundle 'plasticboy/vim-markdown'
let g:vim_markdown_conceal = 0

NeoBundle 'godlygeek/tabular'
let g:vim_markdown_folding_disabled=1

NeoBundle 'timcharper/textile.vim'
NeoBundle 'guns/xterm-color-table.vim'

" Dash.app for OSX.
NeoBundle 'rizzatti/dash.vim.git'



" -----------------------------------

"NeoBundle 'joonty/vdebug'

"NeoBundle 'nathanaelkane/vim-indent-guides'
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
"hi IndentGuidesOdd  guibg=red   ctermbg=3
"hi IndentGuidesEven guibg=green ctermbg=4
"let g:indent_guides_guide_size = 1

