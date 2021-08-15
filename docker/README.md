# Run various servers locally using docker

To run all servers

`make start`

To run a single server check available commands in makefile. e.g

`make mysql`

To tear it down

`make stop`

To connect to mysql run

`docker exec -it {container name} bash` then inside the container run `mysql -uroot -pp@ssw0rd1`
