---
template: post
title: GatsbyJS + Netlify(2)
slug: /posts/GatsbyJSNetlify2/
date: 2019-05-22T01:00:00.000Z
description: GatsbyJS + Netlify で立てたサイトにカスタムドメインにサブドメインを設定する。
category: develop
tags:
  - preview
  - Learning to write
---


[前回](/posts/GatsbyJSNetlify1/)GatsbyJS + Netlifyで秒でサイトを立ち上げる方法を書きました。
お分かりの通り、URLは当然適当な意味不明なもの。そりゃそうだ。
こんなのはイヤだ！！ということで、カスタムドメインを設定していきますが、
ドメインを何個も取得したりはしたくはない。管理も大変だし、金もかかるし。
ということでサブドメインを設定していきます。
今回はお名前.comを例に設定していきます。

## まずお名前.comでドメイン購入
.workドメインが1円だったので、購入。
以上。


## カスタムドメインの設定
- 「Domain management」＞「Add custom domein」から上で取得したドメインを設定。いきなりサブドメインの設定はできなかったので、まずは上で取得したドメインでOK。  

- ネームサーバーをお名前.comに登録
![img](/media/contents/page1/sc04.png)

これで一旦完了

## HTTPS化
- 「Domain management」から「Renew certificate」でNetlifyのネームサーバーを利用していれば、Let's encryptを自動で貼ってくれるようです。


## サブドメインの登録
ようやく本題のサブドメイン登録
- お名前.comの「DNS関連機能の設定」＞「DNSレコード設定を利用する」＞「サイト作成」タブから設定します。
- TypeをNSにして、ホスト名の入力とVALUEとして、dns1.p04.nsone.net、dns2.p04.nsone.net、dns3.p04.nsone.net、dns4.p04.nsone.netを設定してください。
- 設定後、Netlifyの「Domain management」から「Add custom domein」から、上記、カスタムドメインの設定と同様に、作成したサブドメインを設定してください。
- 上で設定したカスタムドメインはサブドメインを設定した時点で不要になるので、削除でOK
- 再度、HTTPS化して完了

これでサブドメインのHTTPS化は完了です。


