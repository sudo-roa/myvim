#!/bin/sh

# vim-plugがインストールされているかどうか
if [ -f $HOME/.vim/autoload/plug.vim ]
then
    echo 'vim-plugは既にインストールされています。'
else
    echo 'vim-plugをインストールしますか？(y/n)'
    read -p '> ' cmd
    case $cmd in
        y)
            echo 'installを開始します'
            curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
                https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
            echo 'vim-plugのインストールが完了しました。';;
        n)
            break;;
    esac
fi

echo '\nvimの設定ファイルを追加しますか？(y/n)'
read -p '> ' cmd
case $cmd in
    y)
        echo '追加します。'
        if [ -d $HOME/.vim/autoload/ ]
        then
            cp ./editor.vim $HOME/.vim/autoload/edirot.vim
        else
            mkdir $HOME/.vim/autoload
            cp ./editor.vim $HOME/.vim/autoload/editor.vim
        fi
        echo '設定ファイルを有効化するには.vimrcを追加するか.vimrcファイルに"source $HOME/.vim/autoload/editor.vim"を記述し設定ファイルを読み込んでください。';;
    n)
        break;;
esac

echo ''

# .vimrcが存在するかどうか
if [ -f $HOME/.vimrc ]
then
    echo '.vimrcが存在します。上書きしますか？(y/n)'
    read -p '> ' cmd
    case $cmd in
        y)
            cp ./.vimrc ~/;;
        n)
            break;;
    esac
fi

echo 'fin'
