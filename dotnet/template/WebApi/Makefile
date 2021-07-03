start:
	docker build -t webapi .
	docker run -d --rm -it -p 8000:80 --name webapi webapi

	docker build -f Dockerfile.alpine -t webapi-alpine .
	docker run -d --rm -it -p 8001:80 --name webapi-alpine webapi-alpine

	docker build -f Dockerfile.alpine-slim -t webapi-slim .
	docker run -d --rm -it -p 8002:80 --name webapi-slim webapi-slim

stop:
	docker stop webapi
	docker stop webapi-alpine
	docker stop webapi-slim