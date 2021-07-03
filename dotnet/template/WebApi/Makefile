start:
	docker build -t webapi .
	docker run -d --rm -it -p 8000:80 --name webapi webapi

stop:
	docker stop webapi