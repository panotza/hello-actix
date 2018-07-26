FROM ekidd/rust-musl-builder as builder
COPY . .
RUN sudo chown -R rust:rust .
RUN cargo build --release

FROM scratch
COPY --from=builder /home/rust/src/target/x86_64-unknown-linux-musl/release/actix /
EXPOSE 8080
CMD ["/actix"]