
build:
	ant -buildfile tools/build.xml

all:
	ant -buildfile tools/build.xml build_seajs
	ant -buildfile tools/build.xml build_plugins

test:
	phantomjs tools/phantom.js http://localhost:8080/leeight.github.com/seajs/tests/runner.html?console

local:
	phantomjs tools/phantom.js tests/runner.html?console

node:
	node tests/node-runner.js

size:
	tools/size.sh
