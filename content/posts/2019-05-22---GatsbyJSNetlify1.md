---
template: post
title: GatsbyJS + Netlify(1)
slug: /posts/GatsbyJSNetlify1/
draft: true
date: 2019-05-22T01:00:00.000Z
description: GatsbyJS + Netlify 始めました。
category: develop
tags:
  - Handwriting
  - Learning to write
---

知り合いのエンジニアのエンジニアに教えてもらって、GatsbyJSとNetlifyの存在を知りました。
「すごい！」の一言です。
以前は静的なページはHTMLで書いて、github pagesに載せるか、Dockerとnginxproxyでサブドメイン貼って、サーバー立ててやったりしてましたが、GatsbyJSとNetlifyの存在をしり使ってみました。

![img](/media/gastby-netlify.png)

## 導入方法
ざっくり言うと、Gatsbyからポチッとやって、終わり。これでもう静的サイトができちゃいます。  
ただし、かゆいところに手が届かないので、色々設定していく。  
まず、カスタムドメインとしてサブドメインを設定。  
テンプレート次第だけど、自分にあったサイトに編集。


### Gatsubyからテンプレートを選んで、デプロイまで。
1. [ここから](https://www.gatsbyjs.org/starters/?v=2)テンプレートを選択。今回は一番使いやすそうな[gatsby-starter-lumen](https://www.gatsbyjs.org/starters/alxshelepenok/gatsby-starter-lumen/)を選択。

2. 右下に小さく「try this starter　Netlify」と書いてあるので、ポチる。するとGitHubアカウントを聞かれるので、ログインする。
![img](/media/contents/page1/sc01.png)

3. 「Repository name」を変更したければ変更して「Save and Deploy」で完了。
![img](/media/contents/page1/sc02.png)

これだけでデプロイされます。デプロイに少し時間がかかるので、1分くらい待ちます。
表示されているURLへアクセスしてみると、ちゃんとHTTPSで画面が表示されるはず。
![img](/media/contents/page1/sc03.png)
なるほど、これは簡単
