package th.co.servit.vo
{
	/**
	 * @author www.comtaste.com
	*/
	[Bindable]
	public class PlantDB_copyVO {
		
		public function PlantDB_copyVO() {
		}
		
		// PRIMARY KEY
		private var _commonname : String;
		public function get commonname() : String {
			return _commonname;
		}
		
		public function set commonname( value : String ) : void  {
			_commonname = value;
		}
		
		private var _othername : String;
		public function get othername() : String {
			return _othername;
		}
		
		public function set othername( value : String ) : void  {
			_othername = value;
		}
		
		private var _scientificname : String;
		public function get scientificname() : String {
			return _scientificname;
		}
		
		public function set scientificname( value : String ) : void  {
			_scientificname = value;
		}
		
		private var _genus : String;
		public function get genus() : String {
			return _genus;
		}
		
		public function set genus( value : String ) : void  {
			_genus = value;
		}
		
		private var _family : String;
		public function get family() : String {
			return _family;
		}
		
		public function set family( value : String ) : void  {
			_family = value;
		}
		
		private var _treesize : String;
		public function get treesize() : String {
			return _treesize;
		}
		
		public function set treesize( value : String ) : void  {
			_treesize = value;
		}
		
		private var _minheight : Number;
		public function get minheight() : Number {
			return _minheight;
		}
		
		public function set minheight( value : Number ) : void  {
			_minheight = value;
		}
		
		private var _maxheight : Number;
		public function get maxheight() : Number {
			return _maxheight;
		}
		
		public function set maxheight( value : Number ) : void  {
			_maxheight = value;
		}
		
		private var _minhedgesize : Number;
		public function get minhedgesize() : Number {
			return _minhedgesize;
		}
		
		public function set minhedgesize( value : Number ) : void  {
			_minhedgesize = value;
		}
		
		private var _maxhedgesize : Number;
		public function get maxhedgesize() : Number {
			return _maxhedgesize;
		}
		
		public function set maxhedgesize( value : Number ) : void  {
			_maxhedgesize = value;
		}
		
		private var _closeplantingdist : Number;
		public function get closeplantingdist() : Number {
			return _closeplantingdist;
		}
		
		public function set closeplantingdist( value : Number ) : void  {
			_closeplantingdist = value;
		}
		
		private var _longplantingdist : Number;
		public function get longplantingdist() : Number {
			return _longplantingdist;
		}
		
		public function set longplantingdist( value : Number ) : void  {
			_longplantingdist = value;
		}
		
		private var _unit : String;
		public function get unit() : String {
			return _unit;
		}
		
		public function set unit( value : String ) : void  {
			_unit = value;
		}
		
		private var _planttype : String;
		public function get planttype() : String {
			return _planttype;
		}
		
		public function set planttype( value : String ) : void  {
			_planttype = value;
		}
		
		private var _treeshape : String;
		public function get treeshape() : String {
			return _treeshape;
		}
		
		public function set treeshape( value : String ) : void  {
			_treeshape = value;
		}
		
		private var _texture : String;
		public function get texture() : String {
			return _texture;
		}
		
		public function set texture( value : String ) : void  {
			_texture = value;
		}
		
		private var _trunk : String;
		public function get trunk() : String {
			return _trunk;
		}
		
		public function set trunk( value : String ) : void  {
			_trunk = value;
		}
		
		private var _leaf : String;
		public function get leaf() : String {
			return _leaf;
		}
		
		public function set leaf( value : String ) : void  {
			_leaf = value;
		}
		
		private var _bloomingseason : String;
		public function get bloomingseason() : String {
			return _bloomingseason;
		}
		
		public function set bloomingseason( value : String ) : void  {
			_bloomingseason = value;
		}
		
		private var _isfruit : String;
		public function get isfruit() : String {
			return _isfruit;
		}
		
		public function set isfruit( value : String ) : void  {
			_isfruit = value;
		}
		
		private var _fruittype : String;
		public function get fruittype() : String {
			return _fruittype;
		}
		
		public function set fruittype( value : String ) : void  {
			_fruittype = value;
		}
		
		private var _isherb : String;
		public function get isherb() : String {
			return _isherb;
		}
		
		public function set isherb( value : String ) : void  {
			_isherb = value;
		}
		
		private var _flowercolor : String;
		public function get flowercolor() : String {
			return _flowercolor;
		}
		
		public function set flowercolor( value : String ) : void  {
			_flowercolor = value;
		}
		
		private var _isscented : String;
		public function get isscented() : String {
			return _isscented;
		}
		
		public function set isscented( value : String ) : void  {
			_isscented = value;
		}
		
		private var _waterrequirement : String;
		public function get waterrequirement() : String {
			return _waterrequirement;
		}
		
		public function set waterrequirement( value : String ) : void  {
			_waterrequirement = value;
		}
		
		private var _sunlightrequirement : String;
		public function get sunlightrequirement() : String {
			return _sunlightrequirement;
		}
		
		public function set sunlightrequirement( value : String ) : void  {
			_sunlightrequirement = value;
		}
		
		private var _soiltype : String;
		public function get soiltype() : String {
			return _soiltype;
		}
		
		public function set soiltype( value : String ) : void  {
			_soiltype = value;
		}
		
		private var _growthrate : String;
		public function get growthrate() : String {
			return _growthrate;
		}
		
		public function set growthrate( value : String ) : void  {
			_growthrate = value;
		}
		
		private var _deciduousorevergreen : String;
		public function get deciduousorevergreen() : String {
			return _deciduousorevergreen;
		}
		
		public function set deciduousorevergreen( value : String ) : void  {
			_deciduousorevergreen = value;
		}
		
		private var _isscreen : String;
		public function get isscreen() : String {
			return _isscreen;
		}
		
		public function set isscreen( value : String ) : void  {
			_isscreen = value;
		}
		
		private var _makenoise : String;
		public function get makenoise() : String {
			return _makenoise;
		}
		
		public function set makenoise( value : String ) : void  {
			_makenoise = value;
		}
		
		private var _safeforkids : String;
		public function get safeforkids() : String {
			return _safeforkids;
		}
		
		public function set safeforkids( value : String ) : void  {
			_safeforkids = value;
		}
		
		private var _maintaindifficult : String;
		public function get maintaindifficult() : String {
			return _maintaindifficult;
		}
		
		public function set maintaindifficult( value : String ) : void  {
			_maintaindifficult = value;
		}
		
		private var _maintaindetail : String;
		public function get maintaindetail() : String {
			return _maintaindetail;
		}
		
		public function set maintaindetail( value : String ) : void  {
			_maintaindetail = value;
		}
		
		private var _advantage : String;
		public function get advantage() : String {
			return _advantage;
		}
		
		public function set advantage( value : String ) : void  {
			_advantage = value;
		}
		
		private var _reproductionmethod : String;
		public function get reproductionmethod() : String {
			return _reproductionmethod;
		}
		
		public function set reproductionmethod( value : String ) : void  {
			_reproductionmethod = value;
		}
		
		private var _plantingstyle : String;
		public function get plantingstyle() : String {
			return _plantingstyle;
		}
		
		public function set plantingstyle( value : String ) : void  {
			_plantingstyle = value;
		}
		
		private var _landscapearchuse : String;
		public function get landscapearchuse() : String {
			return _landscapearchuse;
		}
		
		public function set landscapearchuse( value : String ) : void  {
			_landscapearchuse = value;
		}
		
		private var _recommendation : String;
		public function get recommendation() : String {
			return _recommendation;
		}
		
		public function set recommendation( value : String ) : void  {
			_recommendation = value;
		}
		
		private var _remark : String;
		public function get remark() : String {
			return _remark;
		}
		
		public function set remark( value : String ) : void  {
			_remark = value;
		}
		
		private var _pic1 : Object;
		public function get pic1() : Object {
			return _pic1;
		}
		
		public function set pic1( value : Object ) : void  {
			_pic1 = value;
		}
		
		private var _pic2 : Object;
		public function get pic2() : Object {
			return _pic2;
		}
		
		public function set pic2( value : Object ) : void  {
			_pic2 = value;
		}
		
		private var _pic3 : Object;
		public function get pic3() : Object {
			return _pic3;
		}
		
		public function set pic3( value : Object ) : void  {
			_pic3 = value;
		}
		
	}
}
