DEPLOY_DIR := "../autogen-cover-letter/resume"

all: output/resume.pdf output/resume.html

output/resume.%: resume.json
	./node_modules/.bin/resume export $@ --resume $< --theme caffeine

deploy:
	cp -f resume.json $(DEPLOY_DIR)/resume.json

.PHONY: all deploy