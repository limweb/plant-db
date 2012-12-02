package th.co.servit.vo
{
	/**
	 * @author www.comtaste.com
	*/
	[Bindable]
	public class USERVO {
		
		public function USERVO() {
		}
		
		private var _CELL : Number;
		public function get CELL() : Number {
			return _CELL;
		}
		
		public function set CELL( value : Number ) : void  {
			_CELL = value;
		}
		
		// PRIMARY KEY
		private var _ID : int;
		public function get ID() : int {
			return _ID;
		}
		
		public function set ID( value : int ) : void  {
			_ID = value;
		}
		
		private var _NAME : String;
		public function get NAME() : String {
			return _NAME;
		}
		
		public function set NAME( value : String ) : void  {
			_NAME = value;
		}
		
	}
}
