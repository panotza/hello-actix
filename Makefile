image: clean
	docker build -t actix .
run-local:
	docker run --rm --name actix -p 8080:8080 -d actix
stop-local:
	docker stop actix
clean:
	cargo clean
build:
	cargo build