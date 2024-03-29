import haxe.json.JSON;

class TestCase extends haxe.unit.TestCase {
	
	public function testArrayInt()
		assertEquals("[1,2,3]",JSON.encode(JSON.decode("[1,2,3]")))
	
	public function testArrayString()
		assertEquals("[\"a\",\"b\",\"c\"]",JSON.encode(JSON.decode("[\"a\",\"b\",\"c\"]")))
	
	public function testArrayMixed()
		assertEquals("[1,\"a\",3]",JSON.encode(JSON.decode("[1,\"a\",3]")))
		
	public function testObjectSimple()
		assertEquals("{\"a\":\"b\"}",JSON.encode(JSON.decode("{\"a\":\"b\"}")))
		
	public function testObjectUnicode()
		assertEquals('{"a":"a\\u00f6b\\u00e4c\\u00fcd\\u00dfe"}',JSON.encode(JSON.decode("{\"a\":\"aöbäcüdße\"}")))
		
	public function testError() {
		try {
			JSON.decode("[1,2,3");
			assertTrue(false);
		}
		catch (e:Dynamic) {
			assertTrue(true);
		}	
	}
	
	public function testBool()
		assertEquals('{"a":true,"b":false}',JSON.encode(JSON.decode('{"a":true,"b":false}')))
}

class Test {
	static function main() {
		#if js
		if (haxe.Firebug.detect())
			haxe.Firebug.redirectTraces();
		#end
		var runner = new haxe.unit.TestRunner();
		runner.add(new TestCase());
		runner.run();
		#if js
		untyped {
			phantom.exit();
		}
		#end
	}
}
