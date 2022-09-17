FROM rust:1.62-slim
    MAINTAINER Kyrylo Baibula <kirillbaybula@gmail.com>

RUN rustup target add wasm32-unknown-unknown
RUN cargo install trunk

CMD [ "trunk" ]
