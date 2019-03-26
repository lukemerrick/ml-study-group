default: build run

build:
	docker build -f Dockerfile -t custom-notebook .

# runs the notebook docker image, forwarding port 8888 and mountin this directory
run:
	docker run --rm -p 8888:8888 -v $(shell pwd):/home/jovyan \
		--name=custom-notebook custom-notebook

# runs the shell inside the docker image
term:
	docker exec -it custom-notebook /bin/bash
