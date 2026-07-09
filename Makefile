IMAGE_NAME := shell-basics-dev
CONTAINER_NAME := shell-basics-dev
PORT := 8888
NOTEBOOK_DIR := /home/jovyan
CONTENT_DIR := $(CURDIR)/lesson-content
JUPYTER_DIR := $(CURDIR)/.jupyter

.PHONY: help build run stop shell clean init-content

help:
	@printf '%s\n' \
		'Available targets:' \
		'  make build  - build the local Jupyter image' \
		'  make run    - start JupyterLab with the repo mounted' \
		'  make init-content - reset lesson-content to a clean starter state' \
		'  make stop   - stop the local dev container' \
		'  make shell  - open a shell inside the image' \
		'  make clean  - remove the local image'

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -d --rm \
		--name $(CONTAINER_NAME) \
		-p $(PORT):8888 \
		-v $(CONTENT_DIR):/home/jovyan \
		-v $(JUPYTER_DIR):/home/jovyan/.jupyter \
		-w /home/jovyan \
		$(IMAGE_NAME) \
		start-notebook.sh --ServerApp.token='' --ServerApp.password='' --ServerApp.allow_origin='*' --ServerApp.root_dir=$(NOTEBOOK_DIR)
	@printf '%s\n' 'JupyterLab is running at http://127.0.0.1:$(PORT)/lab'

stop:
	-docker stop $(CONTAINER_NAME)

shell:
	docker run --rm -it \
		-v $(CONTENT_DIR):/home/jovyan \
		-v $(JUPYTER_DIR):/home/jovyan/.jupyter \
		-w /home/jovyan \
		$(IMAGE_NAME) \
	bash

init-content:
	bash init-content.sh

clean:
	docker image rm $(IMAGE_NAME)