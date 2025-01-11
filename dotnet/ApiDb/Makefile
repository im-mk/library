test:
	cd src && dotnet test
start:
	make test && docker compose up -d --build
stop:	
	docker compose stop