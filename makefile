dir := build
bin := /usr/bin/noble
files := object.rb noble.rb method.rb message.rb bootstrap.rb
lib := "./lib"

export: $(dir)
	rm -rf $(dir)
	mkdir $(dir)
	cp $(files) $(dir)
	cp -r $(lib) $(dir)
	chmod a+x $(dir)/noble.rb

$(dir):
	mkdir -p $@
