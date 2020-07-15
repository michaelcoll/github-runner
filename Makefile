GITHUB_RUNNER_VERSION="2.267.1"
DOCKER_IMAGE_VERSION="latest"
DOCKER_IMAGE_NAME="michaelcoll/github-runner"

.PHONY: build
build:
	docker build -t $(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_VERSION) -t $(DOCKER_IMAGE_NAME):$(GITHUB_RUNNER_VERSION) --build-arg GITHUB_RUNNER_VERSION=$(GITHUB_RUNNER_VERSION) .

.PHONY: push
push:
	docker push $(DOCKER_IMAGE_NAME)
