default: build

build:
	yarn build
	cp site.html target/index.html

serve:
	 python -m http.server --directory target/ 3001
