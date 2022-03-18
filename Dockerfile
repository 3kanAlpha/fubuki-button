FROM node:14-slim

# アプリケーションディレクトリを作成する
WORKDIR /usr/src/app

# yarnのインストール
# RUN npm i -g corepack

# アプリケーションの依存関係をインストールする
COPY package.json .
COPY yarn.lock .

RUN yarn

COPY . .

EXPOSE 3000
CMD [ "yarn", "dev" ]