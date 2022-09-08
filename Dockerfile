FROM ubuntu

ARG DUCK_DB_VERSION

RUN wget https://github.com/duckdb/duckdb/releases/download/${DUCK_DB_VERSION}/duckdb_cli-linux-amd64.zip \
    && unzip duckdb_cli-linux-amd64.zip -d /usr/local/bin \
    && rm duckdb_cli-linux-amd64.zip

CMD [ "duckdb", "--version"]