all: litaniae.pdf
litaniae.pdf: $(foreach I,1 2 3 4 5 6 7,temporalia/litaniae$(I).gtex) litaniae.tex conventuscommune.tex junicode.fea
	lualatex litaniae.tex
	lualatex litaniae.tex
temporalia/litaniae%.gtex: litaniae%.gabc temporalia
	gregorio -o $@ $<
temporalia:
	mkdir -p temporalia
clean:
	rm -rf temporalia *~ litaniae.aux litaniae.gaux litaniae.log
