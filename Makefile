DOCKER-RUN = docker-compose run --rm
BUNDLE-EXEC = bundle exec

up:
	docker-compose up

down:
	docker-compose down

sh:
	$(DOCKER-RUN) web $(BUNDLE-EXEC) sh

guard:
	$(DOCKER-RUN) web $(BUNDLE-EXEC) guard
