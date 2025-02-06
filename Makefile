run: build
	sudo docker container run --volume $(PWD):/data \
    --rm -it ansible_runner /bin/bash 

build:
	sudo docker build -t ansible_runner .

clean:
	sudo docker system prune --volumes
	#sudo docker image rm im1 im2...

