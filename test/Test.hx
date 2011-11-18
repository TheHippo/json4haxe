import haxe.json.JSON;

class Test {
	static function main() {
		#if js
		if (haxe.Firebug.detect())
			haxe.Firebug.redirectTraces();
		#end
		trace("ok");
		#if js
		untyped {
			phantom.exit();
		}
		#end
	}
}
