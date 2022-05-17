include .env_example

docker-list:
	docker ps

docker-build:
	docker build -t ${SERVICE_NAME} .

docker-run:
	docker run --name latest -d -p ${CONTAINER_PORT}:${HOST_PORT} ${SERVICE_NAME}

# ex. make docker-stop ID=container-id
docker-stop:
	docker stop ${ID}
	docker rm ${ID}

