" 主のvimの設定ファイル
" ディレクトリがプラグインでごちゃごちゃにならないように分割

" 自前の設定用ファイル
source ~/.vim/autoload/editor.vim



call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

