DOCKER_HUB = hub.pri.ibanyu.com
DOCKER_TAG = base
DOCKER_IMAGE = $(DOCKER_HUB)/devops/zhgop

build:
	@docker build  -t $(DOCKER_IMAGE):$(DOCKER_TAG) .

push:
	@docker push $(DOCKER_IMAGE):$(DOCKER_TAG)

all: build push

rm:
	@docker rmi $(DOCKER_IMAGE):$(DOCKER_TAG)

.PHONY: build push all rm
