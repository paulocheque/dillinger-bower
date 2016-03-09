#VERSION=v1.0.0
VERSION=master

.DEFAULT_GOAL := default

default: build

build: update
	@cd dillinger && npm i -d
	@cd dillinger && gulp build --prod
	@mkdir -p build
	@cd dillinger && cp public/js/bundle.js ../build/dillinger.min.js
	@cd dillinger && cp public/css/app.css ../build/dillinger.min.css
	# TODO: move this change to the fork.
	@cp override.css ./build/override.css

update: clone
	@cd dillinger && git fetch && git checkout $(VERSION)

clone:
	@if [ ! -d dillinger ]; then git clone git@github.com:paulocheque/dillinger.git dillinger; fi;

clean:
	@rm -rf build
	@rm -rf dillinger

deps:
	sudo npm i -g gulp
