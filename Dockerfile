FROM ruby:2.6.0

ENV LANG=C.UTF-8

ENV WORK_DIR="/app" \
    CONTAINER_ROOT="./"

RUN apt-get update && \
    apt-get install -y nodejs mysql-client
  # gemをインストールして、updateからのnodejsとmysql-clientをインストール
WORKDIR /app
COPY Gemfile ./
COPY Gemfile.lock ./
RUN bundle install --jobs=4 --retry=3
# bundle installの自動化
# かつWORKDIRでapp指定することでdocker-compose exec app bashでコンテナに入れる