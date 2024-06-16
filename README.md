# startweb
### &lt;startup>dockercomposeとvue.jsを使ってdb、backend、frontendのtreeを作る

コードは自由に使ってOKです！比較的初心者が書いたコードなのですごい人は改変したりして使ってください
### 説明
まず以下の図のようなのtreeが作られ、
```
project-name
├── README.md
├── backend
│   ├── README.md
│   ├── app
│   │   ├── api
│   │   │   ├── crud
│   │   │   │   └── crud.py
│   │   │   ├── endpoints
│   │   │   │   └── views.py
│   │   │   ├── models
│   │   │   │   └── models.py
│   │   │   └── schemas
│   │   │       └── schemas.py
│   │   ├── core
│   │   │   ├── config.py
│   │   │   └── database.py
│   │   └── main.py
│   ├── dockerfile
│   └── requirements.txt
├── compose.yml
└── db
    ├── README.md
    └── init
        └── 01_init.sql
```
```
/project-name/ % npm init vue@latest
```
を実行した状態となります

---
# 使い方
1. リポジトリをダウンロードする。
ここでは~/scriptにダウンロードしたとする
2. ~/scriptにて以下を実行
```
chmod +x startweb.sh
```
あとはwebアプリ開発を始めたいディレクトリで
```
~/script/startweb.sh project-name
```
を実行してください(project-nameは好きに変えてください)
