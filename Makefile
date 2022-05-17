docker-list:
	docker ps

docker-build:
	docker build -t collection .	

docker-run:
	docker run --name service -d -p 8080:80 collection

# ex. make docker-stop ID=container-id
docker-stop:
	docker stop ${ID}
	docker rm ${ID}

