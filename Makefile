build:
	sudo docker build -t ansible:latest .

lst:
	sudo docker images -a

prune:
	sudo docker prune --volumes

