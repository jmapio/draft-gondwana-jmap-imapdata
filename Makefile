

build: draft-gondwana-jmap-imapdata.txt draft-gondwana-jmap-imapdata.xml draft-gondwana-jmap-imapdata.html

%.xml: %.mdown
	mmark -xml2 -page $< > $@

%.txt: %.xml
	xml2rfc --text $< $@

%.html: %.xml
	xml2rfc --html $< $@

clean:
	rm -f *.txt *.html *.xml
