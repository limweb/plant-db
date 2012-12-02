package th.co.servit.vo
{
	/**
	 * @author www.comtaste.com
	*/
	[Bindable]
	public class CUSTOMERVO {
		
		public function CUSTOMERVO() {
		}
		
		private var _DESCRIPTION : String;
		public function get DESCRIPTION() : String {
			return _DESCRIPTION;
		}
		
		public function set DESCRIPTION( value : String ) : void  {
			_DESCRIPTION = value;
		}
		
		// PRIMARY KEY
		private var _ID : int;
		public function get ID() : int {
			return _ID;
		}
		
		public function set ID( value : int ) : void  {
			_ID = value;
		}
		
		private var _IMAGE : Object;
		public function get IMAGE() : Object {
			return _IMAGE;
		}
		
		public function set IMAGE( value : Object ) : void  {
			_IMAGE = value;
		}
		
	}
}
