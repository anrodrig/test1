artifacts.zip: hello
	zip -9 $@ $<

.PHONY: git_version.h
git_version.h:
	echo "#define VERSION \"`git describe --long --tags --dirty --always`\"" > $@

hello: main.c git_version.h
	gcc $< -o $@