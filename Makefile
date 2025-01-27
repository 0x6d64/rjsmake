.PHONY: clean publish rebuild

all: reveal.js/index.html index.html

# Parameters defining the look of prsentation
# possible values: beige, black, blood, league, moon,
# night, serif, simple, sky, solarized, white
REVEALJS_THEME := 'moon'
# possible values: none, fade, slide, convex, concave, zoom
REVEALJS_TRANSITION := 'slide'

rebuild: clean index.html
	echo "rebuilding"

# Make the index.html from index.md.
# --incremental makes lists into revealjs fragments
index.html: index.md
	pandoc -t revealjs --template=templates/default.revealjs \
	--standalone \
	--section-divs \
	--variable theme=$(REVEALJS_THEME) \
	--variable slideNumber="true" \
	--variable transition=$(REVEALJS_TRANSITION) \
	--incremental \
	--no-highlight \
	--variable hlss=zenburn \
	--css=css/custom.css \
	index.md -o index.html

# RevealJS setup
reveal.js/index.html:
	curl -L https://github.com/hakimel/reveal.js/archive/3.1.0.tar.gz -o reveal.js.tar.gz
	tar zxf reveal.js.tar.gz
	mv reveal.js-3.1.0 reveal.js
	rm reveal.js.tar.gz

# Force update the gh-pages branch with the current output.
# WARNING: Calls "make all"
publish:
	git checkout master
	git branch -D gh-pages
	git checkout -b gh-pages
	make all
	git rm .gitignore
	git add .
	git commit -m "Publish"
	git push origin gh-pages -f
	git checkout master
	make all

clean:
	rm index.html
