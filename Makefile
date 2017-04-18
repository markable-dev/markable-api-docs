
all: start

start:
	@bundle exec middleman server

deploy:
	@./deploy.sh

.PHONY: server deploy