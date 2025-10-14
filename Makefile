# targets that aren't filenames
.PHONY: all clean deploy build serve

all: build

build:
	bundle exec jekyll build

# you can configure these at the shell, e.g.:
# SERVE_PORT=5001 make serve
SERVE_HOST ?= 127.0.0.1
SERVE_PORT ?= 5000

serve:
	bundle exec jekyll serve

clean:
	$(RM) -r _site

workflow: clean

push: clean build
  # this needs to be updated to git push instead
# 	$(RSYNC) _site/ $(DEPLOY_HOST):$(DEPLOY_PATH)
	git add .
	git commit -m "auto-deployment from makefile"
	git push origin main
