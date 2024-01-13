# ベースとなるDockerイメージ指定
FROM golang:1.21-alpine as server-build

# コンテナ内の作業ディレクトリを作成し、そこを指定
WORKDIR  /go/src/toDoList
# ローカルの現在のディレクトリから、コンテナの作業ディレクトリにコピー
COPY . .
# alpineパッケージのアップデート
RUN apk upgrade --update && \
    apk --no-cache add git