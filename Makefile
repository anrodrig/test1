artifacts.zip: hello
	zip -9 $@ $<

hello: main.c
	gcc $< -o $@