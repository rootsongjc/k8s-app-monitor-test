.PHONY: build run clean all

export GOOS= linux

export GOARCH=amd64
repo=jimmysong
imageName=k8s-app-monitor-test
tag=`git rev-parse --short HEAD`
imageWholeName=${repo}/${imageName}:${tag}
port=3000
build:
	go build
	docker build -t ${imageWholeName} .

run:
	docker run -d --name ${imageName} -p ${port}:${port} ${imageWholeName}

clean:
	docker rm -f ${imageName}

all: build run
