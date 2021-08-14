# Run servers locally using docker

To run mysql locally

`docker-compose up`

To tear it down

`docker-compose down`

To connect to mysql run

`docker exec -it {container name} bash` then inside the container run `mysql -uroot -pp@ssw0rd1`
