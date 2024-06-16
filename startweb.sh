#!/bin/bash

# 新しいtreeを作成する関数
create_tree() {
    local dir_name="$1"
    mkdir -p "$dir_name"  # -p オプションで親ディレクトリも自動的に作成する
    cd "$dir_name" || exit 1  # ディレクトリに移動できない場合はスクリプトを終了
    touch ".env"
    touch ".gitignore"
    touch "compose.yml"
    touch "README.md"
    cat > .gitignore << EOF
# Vue.js
/frontend/*
!/frontend/src/

# Logs
logs/
*.log

# Env
.env

# FastAPI
__pycache__/
*.py[cod]
*.pyo
*.env

# OS
.DS_Store

# other
.idea/
.vscode/
EOF
    # backend ディレクトリ内の必要なファイルとディレクトリを作成
    mkdir -p "backend/app/main.py"
    mkdir -p "backend/app/api/endpoints"
    mkdir -p "backend/app/api/models"
    mkdir -p "backend/app/api/crud"
    mkdir -p "backend/app/api/schemas"
    mkdir -p "backend/app/core"
    touch "backend/requirements.txt"
    touch "backend/dockerfile"
    touch "backend/README.md"
    touch "backend/app/api/endpoints/views.py"
    touch "backend/app/api/models/models.py"
    touch "backend/app/api/crud/crud.py"
    touch "backend/app/api/schemas/schemas.py"
    touch "backend/app/core/config.py"
    touch "backend/app/core/database.py"
    # db ディレクトリ内の必要なファイルとディレクトリを作成
    mkdir -p "db/init"
    touch "db/init/01_init.sql"
    touch "db/README.md"
    # Vueの初期化
    npm init vue@latest
}

# スクリプト実行時の第1引数を使用してディレクトリを作成
create_tree "$1"
