package th.co.servit.vo
{
	import flash.utils.ByteArray;

	[Bindable]
	public class Bloomseason
	{
		
		public var pic1:ByteArray;
		public var name:String;
		public var bloom:String;
		public var color:uint;
		private var _ArBloom:Array;
		
		
		
		public function get ArBloom():Array
		{
			return _ArBloom = bloom.split(',');
		}

		public function set ArBloom(value:Array):void
		{
			_ArBloom = value;
		}

	}
}