# json4haxe

## Building and testing

Currently testing runs on the nekoVM, PHP and JavaScript platform. For testing JavaScript target [PhantomJS](http://www.phantomjs.org/) is used.

### Building 
To build all the targets run: `haxe build.hxml`

### Testing requirements

* haxe installed ;-)
* nekoVM installed
* PHP installed
* phantomJS

phantomJS is included in this git repository as a submodule (`git submodule update --init`). For build instructions check out http://code.google.com/p/phantomjs/wiki/BuildInstructions.

### Testing
To run tests on all platforms run `./run.sh`
