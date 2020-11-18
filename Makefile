all:
	docker build -t hongmin/helloworld .

run:
	docker run -d -P hongmin/helloworld
