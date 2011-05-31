UGLIFYJS = ./node_modules/.bin/uglifyjs

doc:
	./node_modules/.bin/docco control/mm/*.js

ext:
	-test ! -d ext && mkdir ext
	wget http://code.jquery.com/jquery-1.5.1.min.js -O ext/jquery-1.5.min.js
	wget --no-check-certificate https://github.com/simplegeo/polymaps/raw/master/polymaps.js -O ext/polymaps.js
	wget --no-check-certificate https://github.com/developmentseed/openlayers_slim/raw/v1.9/OpenLayers.js -O ext/OpenLayers.js
	wget --no-check-certificate https://github.com/stamen/modestmaps-js/raw/c202b0a274f4235c4ebd8362fff11d88a2c0fc8f/modestmaps.min.js -O ext/modestmaps.js

lint:
	./node_modules/.bin/jshint control/lib/*.js control/mm/*.js --config=jshint.json

build/wax.ol.min.js:
	cat lib/*.js control/lib/*.js control/ol/*.js > built/wax.ol.js
	$(UGLIFYJS) built/wax.ol.js > built/wax.ol.min.js

build/wax.g.min.js:
	cat lib/*.js control/lib/*.js control/g/*.js connectors/g/*.js > built/wax.g.js
	$(UGLIFYJS) built/wax.g.js > built/wax.g.min.js

build/wax.mm.min.js:
	cat ext/reqwest.min.js lib/*.js control/lib/*.js control/mm/*.js connectors/mm/*.js > built/wax.mm.js
	$(UGLIFYJS) built/wax.mm.js > built/wax.mm.min.js

build_setup:
	mkdir build

build: build_setup build/wax.ol.min.js build/wax.g.min.js build/wax.mm.min.js lint


clean:
	rm -rf build

.PHONY: ext doc clean
