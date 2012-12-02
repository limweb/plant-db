package th.co.servit.vo
{
	/**
	 * @author www.comtaste.com
	*/
	[Bindable]
	public class familyVO {
		
		public function familyVO() {
		}
		
		// PRIMARY KEY
		private var _family : Object;
		public function get family() : Object {
			return _family;
		}
		
		public function set family( value : Object ) : void  {
			_family = value;
		}
		
	}
}
