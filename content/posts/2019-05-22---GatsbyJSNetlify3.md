---
template: post
title: GatsbyJS + Netlify(3)
slug: /posts/GatsbyJSNetlify3/
date: 2019-05-22T01:00:00.000Z
description: GatsbyJS + Netlify で立てたサイトをローカルでいじくる。
category: develop
tags:
  - preview
  - Learning to write
---


[前回](/posts/GatsbyJSNetlify2/)GatsbyJS + Netlifyで秒でサイトを立ち上げ、サブドメインを使えるようにして、HTTPS化しました。
さて、今回は運用です。
今回利用している[このテンプレート](https://www.gatsbyjs.org/starters/?v=2)はどうやらCMSの機能が入っているらしいので、
Web上でもブログをかけますが、何かとめんどくさかったり、一部、ソースコードの修正が必要なので、ローカルで立ち上げる手順と、
編集ポイントを記載します。

## ローカルで実行
gatsby-cliをインストールしてnpmするだけ
```
 # gatsby-cliをインストール
 npm install --global gatsby-cli
 
 # githubからclone 
 git clone xxxxx

 # npm install
 cd xxxxx
 npm install

 # 起動
 npm run develop

```


## かゆいところをかきむしる
1. まず、iconのおじさんを自分のものにする  
public/photo.pngを変えればOK

2. Contact me ? いらない。  
grepして消す。

3. telegram? rss? vkontakte? いらない  
grepして消す。その際facebookへのリンクは使えるらしいので、facebookをそのほかと同様に記載しておく

4. title: 'Blog by John Doe',?いらない  
config.js周りを自分に合わせる。

5. about meはCMSで編集できないので編集しちゃう。  
content/pages/about.mdを編集


こんなところでOKあとはmasterにマージすればデプロイされるので、デプロイしちゃう。


## CMS
host/adminでWeb上での編集ができるらしい。普段記事を書くときはここからでOKだけど、  
画像のアップロードがめんどくさい。
