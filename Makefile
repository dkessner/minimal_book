#
# Makefile
#


# python3 -m venv venv
# source venv/bin/activate
# pip install -r requirements 


# activate venv for pandoc-include:
# 	source venv/bin/activate


book.pdf: chapters/*.md pandoc_options.yml pandoc_latex.template
	pandoc chapters/*.md \
		--toc -s \
		-o book.pdf \
		--metadata-file pandoc_options.yml \
		--template pandoc_latex.template \
		--filter pandoc-include


clean:
	rm book.pdf

