# json4haxe
Proposal for a JSON implementation for haXe standard library.

## Features
The implementation is based on the hxJson2 implementation of JSON decoding and encoding. A few thing were changed to make the library smaller and faster and a better fit the haXe standard library.
On the haXe PHP target this libray uses native `json_decode` and `json_encode`functions. On the haXe JavaScript target it tries to use `JSON.stringify` and `JSON.parse` if possible. When native functions are used there could be differences in the output compared with haXe version of `haxe.json.JSON.decode` and `haxe.json.JSON.decode`.

## Building and testing
Currently testing runs on the nekoVM, PHP and JavaScript platform. For testing JavaScript target [PhantomJS](http://www.phantomjs.org/) is used.

### Building 
To build all the targets run: `haxe build.hxml`

### Testing requirements

* haxe installed ;-)
* nekoVM installed
* PHP installed
* phantomJS

phantomJS is included in this git repository as a submodule (`git submodule update --init`). For build instructions check out [the build instructions](http://code.google.com/p/phantomjs/wiki/BuildInstructions).

### Testing
To run tests on all platforms run `./run.sh`

### Help & Contribute
If you like to help feel free to fork this repository and send me pull requests OR ask me to become a constributer on this repository.
If you found a bug, please create an issue.

### Use this library
Make sure to include the `std` folder in build command. (E.g.: `haxe ... -cp /path/to/lib/std ...`)