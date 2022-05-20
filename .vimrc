"""""""""""""""文字コード"""""""""""""""
set encoding=utf-8 " ファイル読み込み時の文字コード
scriptencoding utf-8 " Vimスクリプト内でマルチバイト文字を使う場合の文字コード
set fileencoding=utf-8 " 保存時の文字コード
set fileencodings=ucs-boms,utf-8,euc-jp,cp932 " 読み込み時の文字コードの自動判別, 左が優先
set fileformats=unix,dos,mac " 改行コードの自動判別, 左が優先
set ambiwidth=double " 文字幅を判定できないフォントに旧式フォントを適用して見た目の崩れを無くす

"""""""""""""""インデント"""""""""""""""
set expandtab " タブ入力を複数の空白入力に置き換える
set tabstop=4 " タブ文字が占める幅
set softtabstop=4 " 連続したスペースに対してtab,backspaceで動く幅
set autoindent " 改行時に前の行のインデントを継続
set smartindent " 改行時に前の行の構文をチェックして次の行のインデントを増減
set shiftwidth=4 " smartindentで増減する幅

"""""""""""""""表示設定"""""""""""""""
set number " 行番号の表示
set title " 編集中のファイル名を表示
set list " タブ、空白、改行の可視化
syntax on

"""""""""""""""括弧"""""""""""""""
set showmatch " 括弧の対応関係を表示

"""""""""""""""カーソル"""""""""""""""
set whichwrap=b,s,h,l,[,],<,> " 行頭行末での方向キーによるカーソルの回り込みを可能にする

"""""""""""""""キーボード入力"""""""""""""""
" 入力モード時にControl + [key]でカーソル移動可能
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>


