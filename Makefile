

default: start

service:= seat-reserve
.PHONY: docs-serve
docs-serve:
	redoc-cli serve -w -ssr -p 9999 specs/api.yml

.PHONY: start
start: 
	docker-compose up -d

.PHONY: stop
stop: 
	docker-compose down
.PHONY: docs
docs:
	- docker build -t loc/final-exam .
	- docker run -v $$PWD/docs:/apiSpec/docs loc/final-exam

.PHONY: clean
clean: stop build start