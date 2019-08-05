#!/bin/bash

# nvm (node version manager) のロード、node のインストール (バージョン指定は .nvmrc ファイルにある)、 npm パッケージのインストール
[ -s "$HOME/.nvm/nvm.sh" ] && source "$HOME/.nvm/nvm.sh" && nvm use
# 既にインストールされていなければ、 npm をインストールする
[ ! -d "node_modules" ] && npm install

npm run build
./node_modules/.bin/gulp deploy