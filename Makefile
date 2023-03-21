all:
	docker build -t arch .
	docker run -it --name archpwn arch

docker_start:
	docker start -i archpwn

docker_run:
	docker exec -it archpwn /bin/zsh

prune:
	docker system prune -a --volumes
