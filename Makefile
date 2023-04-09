all: output/resume.pdf output/resume.html

output/resume.%: resume.json
	resume export $@ --resume $< --theme caffeine

.PHONE: all