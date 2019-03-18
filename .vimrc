" install plugin
call plug#begin('~/.local/share/nvim/plugged')

" file tree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
nnoremap <C-n> :NERDTreeToggle<CR>

" lsp
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'

" golang lsp
if executable('gopls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'gopls',
        \ 'cmd': {server_info->['gopls', '-mode', 'stdio']},
        \ 'whitelist': ['go'],
        \ })
endif

nmap <silent> <Space>d :LspDefinition<CR>
nmap <silent> <Space>p :LspHover<CR>
nmap <silent> <Space>r :LspReferences<CR>
nmap <silent> <Space>i :LspImplementation<CR>
nmap <silent> <Space>s :split \| :LspDefinition <CR>
nmap <silent> <Space>v :vsplit \| :LspDefinition <CR>


" solid language pack
Plug 'sheerun/vim-polyglot'

" elm
Plug 'elmcast/elm-vim'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:elm_syntastic_show_warnings = 1
let g:elm_format_autosave = 1
let g:ycm_semantic_triggers = {
     \ 'elm' : ['.'],
     \}

" for golang
" for terraform
Plug 'hashivim/vim-terraform'
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_remap_spacebar=1
let g:terraform_fmt_on_save=1
call plug#end()

set encoding=utf-8
scriptencoding utf-8

" 保存時の文字コード
set fileencoding=utf-8

" 読み込み時の文字コードの自動判別. 左側が優先される
set fileencodings=ucs-boms,utf-8,euc-jp,cp932

" 改行コードの自動判別. 左側が優先される
set fileformats=unix,dos,mac

set ambiwidth=double
" 行数を表示する
set number
set backspace=indent,eol,start

" ヤンクした時クリップボードにコピーする
set clipboard=unnamedplus

" インクリメンタルサーチ. １文字入力毎に検索を行う
set incsearch

" 検索パターンに大文字小文字を区別しない
set ignorecase

" 検索結果をハイライト"
set hlsearch

" カーソルの左右移動で行末から次の行の行頭への移動が可能になる
set whichwrap=b,s,h,l,<,>,[,],~

" カーソルラインをハイライト"
set cursorline

" 行が折り返し表示されていた場合、行単位ではなく表示行単位でカーソルを移動する
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

" tagsジャンプの時に複数ある時は一覧表示
" nnoremap <C-]> g<C-]>
nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>

" 括弧の対応関係を一瞬表示する
set showmatch

" コマンドモードの補完
set wildmenu
" 保存するコマンド履歴の数  "
set history=5000

"シンタックス設定
syntax enable
set t_Co=256
set background=dark

