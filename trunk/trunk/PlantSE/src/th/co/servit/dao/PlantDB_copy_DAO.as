package th.co.servit.dao
{
	/**
	* @author www.comtaste.com
	*/
	
	import flash.data.SQLConnection;
	import flash.events.SQLEvent;
	import flash.events.SQLErrorEvent;
	import flash.data.SQLStatement;
	import flash.errors.SQLError;
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	
	import Object;
	
	public class PlantDB_copy_DAO
	{
	
		
		private static var instance:PlantDB_copy_DAO;
		public static function getInstance():PlantDB_copy_DAO {
			if( instance == null )
				instance = new PlantDB_copy_DAO( new SingletonLock );
			return instance;
		}
		
	
		public function PlantDB_copy_DAO( lock: SingletonLock) {
		}
	
		private var sqlConnection:SQLConnection;
		public function getConnection():SQLConnection {
			return sqlConnection;
		}
		public function setConnection( connection:SQLConnection, initializeTable:Boolean = false ):void {
			// store connection reference
			sqlConnection = connection;
			// try construct table on Database any time a new connection is submitted
			if(sqlConnection.connected && initializeTable){
				createTable();
				
			}
		}
	
		public function createTable( resultHandler:Function = null, faultHandler:Function = null ):void {
			var stmt:SQLStatement = new SQLStatement();
			stmt.sqlConnection = sqlConnection;
			stmt.text = 'CREATE TABLE IF NOT EXISTS PlantDB_copy ("commonname"  TEXT,"othername"  TEXT,"scientificname"  TEXT,"genus"  TEXT,"family"  TEXT,"treesize"  TEXT,"minheight"  REAL,"maxheight"  REAL,"minhedgesize"  REAL,"maxhedgesize"  REAL,"closeplantingdist"  REAL,"longplantingdist"  REAL,"unit"  TEXT,"planttype"  TEXT,"treeshape"  TEXT,"texture"  TEXT,"trunk"  TEXT,"leaf"  TEXT,"bloomingseason"  TEXT,"isfruit"  TEXT,"fruittype"  TEXT,"isherb"  TEXT,"flowercolor"  TEXT,"isscented"  TEXT,"waterrequirement"  TEXT,"sunlightrequirement"  TEXT,"soiltype"  TEXT,"growthrate"  TEXT,"deciduousorevergreen"  TEXT,"isscreen"  TEXT,"makenoise"  TEXT,"safeforkids"  TEXT,"maintaindifficult"  TEXT,"maintaindetail"  TEXT,"advantage"  TEXT,"reproductionmethod"  TEXT,"plantingstyle"  TEXT,"landscapearchuse"  TEXT,"recommendation"  TEXT,"remark"  TEXT,"pic1"  BLOB,"pic2"  BLOB,"pic3"  BLOB,PRIMARY KEY ("commonname"));';
			stmt.addEventListener( SQLEvent.RESULT,
			function ( event:SQLEvent ):void {
				if (resultHandler != null) resultHandler.call(this);
			});
			stmt.addEventListener( SQLErrorEvent.ERROR, faultHandler == null ? sqlErrorHandler : faultHandler );
			stmt.execute();
		}
		
		public function getTableContent( resultHandler:Function, faultHandler:Function = null ):void {
			var stmt:SQLStatement = new SQLStatement();
			stmt.sqlConnection = sqlConnection;
			stmt.text = 'SELECT * FROM PlantDB_copy;';
			stmt.addEventListener( SQLEvent.RESULT,
			function ( event:SQLEvent ):void {
				resultHandler.call( this, new ArrayCollection( stmt.getResult().data ) );
			});
			stmt.addEventListener( SQLErrorEvent.ERROR, faultHandler == null ? sqlErrorHandler : faultHandler );
			stmt.execute();
		}
		
		public function updateRow( rowItem:Object, resultHandler:Function = null, faultHandler:Function = null ):void {
			var stmt:SQLStatement = new SQLStatement();
			stmt.sqlConnection = sqlConnection;
			stmt.text = 'UPDATE PlantDB_copy SET commonname = @commonname, othername = @othername, scientificname = @scientificname, genus = @genus, family = @family, treesize = @treesize, minheight = @minheight, maxheight = @maxheight, minhedgesize = @minhedgesize, maxhedgesize = @maxhedgesize, closeplantingdist = @closeplantingdist, longplantingdist = @longplantingdist, unit = @unit, planttype = @planttype, treeshape = @treeshape, texture = @texture, trunk = @trunk, leaf = @leaf, bloomingseason = @bloomingseason, isfruit = @isfruit, fruittype = @fruittype, isherb = @isherb, flowercolor = @flowercolor, isscented = @isscented, waterrequirement = @waterrequirement, sunlightrequirement = @sunlightrequirement, soiltype = @soiltype, growthrate = @growthrate, deciduousorevergreen = @deciduousorevergreen, isscreen = @isscreen, makenoise = @makenoise, safeforkids = @safeforkids, maintaindifficult = @maintaindifficult, maintaindetail = @maintaindetail, advantage = @advantage, reproductionmethod = @reproductionmethod, plantingstyle = @plantingstyle, landscapearchuse = @landscapearchuse, recommendation = @recommendation, remark = @remark, pic1 = @pic1, pic2 = @pic2, pic3 = @pic3WHERE ID = ?;';
			setParameters( stmt, [ {name:"commonname", value:rowItem.commonname}, {name:"othername", value:rowItem.othername}, {name:"scientificname", value:rowItem.scientificname}, {name:"genus", value:rowItem.genus}, {name:"family", value:rowItem.family}, {name:"treesize", value:rowItem.treesize}, {name:"minheight", value:rowItem.minheight}, {name:"maxheight", value:rowItem.maxheight}, {name:"minhedgesize", value:rowItem.minhedgesize}, {name:"maxhedgesize", value:rowItem.maxhedgesize}, {name:"closeplantingdist", value:rowItem.closeplantingdist}, {name:"longplantingdist", value:rowItem.longplantingdist}, {name:"unit", value:rowItem.unit}, {name:"planttype", value:rowItem.planttype}, {name:"treeshape", value:rowItem.treeshape}, {name:"texture", value:rowItem.texture}, {name:"trunk", value:rowItem.trunk}, {name:"leaf", value:rowItem.leaf}, {name:"bloomingseason", value:rowItem.bloomingseason}, {name:"isfruit", value:rowItem.isfruit}, {name:"fruittype", value:rowItem.fruittype}, {name:"isherb", value:rowItem.isherb}, {name:"flowercolor", value:rowItem.flowercolor}, {name:"isscented", value:rowItem.isscented}, {name:"waterrequirement", value:rowItem.waterrequirement}, {name:"sunlightrequirement", value:rowItem.sunlightrequirement}, {name:"soiltype", value:rowItem.soiltype}, {name:"growthrate", value:rowItem.growthrate}, {name:"deciduousorevergreen", value:rowItem.deciduousorevergreen}, {name:"isscreen", value:rowItem.isscreen}, {name:"makenoise", value:rowItem.makenoise}, {name:"safeforkids", value:rowItem.safeforkids}, {name:"maintaindifficult", value:rowItem.maintaindifficult}, {name:"maintaindetail", value:rowItem.maintaindetail}, {name:"advantage", value:rowItem.advantage}, {name:"reproductionmethod", value:rowItem.reproductionmethod}, {name:"plantingstyle", value:rowItem.plantingstyle}, {name:"landscapearchuse", value:rowItem.landscapearchuse}, {name:"recommendation", value:rowItem.recommendation}, {name:"remark", value:rowItem.remark}, {name:"pic1", value:rowItem.pic1}, {name:"pic2", value:rowItem.pic2}, {name:"pic3", value:rowItem.pic3} ] );
			stmt.addEventListener( SQLEvent.RESULT,
			function ( event:SQLEvent ):void {
				if ( resultHandler != null ) resultHandler.call( this, rowItem );
			});
			stmt.addEventListener( SQLErrorEvent.ERROR, faultHandler == null ? sqlErrorHandler : faultHandler );
			stmt.execute();
		}
		
		public function insertRow( rowItem:Object, resultHandler:Function = null, faultHandler:Function = null ):void {
			var stmt:SQLStatement = new SQLStatement();
			stmt.sqlConnection = sqlConnection;
			stmt.text = 'INSERT INTO PlantDB_copy( commonname, othername, scientificname, genus, family, treesize, minheight, maxheight, minhedgesize, maxhedgesize, closeplantingdist, longplantingdist, unit, planttype, treeshape, texture, trunk, leaf, bloomingseason, isfruit, fruittype, isherb, flowercolor, isscented, waterrequirement, sunlightrequirement, soiltype, growthrate, deciduousorevergreen, isscreen, makenoise, safeforkids, maintaindifficult, maintaindetail, advantage, reproductionmethod, plantingstyle, landscapearchuse, recommendation, remark, pic1, pic2, pic3 ) VALUES ( @commonname,@othername,@scientificname,@genus,@family,@treesize,@minheight,@maxheight,@minhedgesize,@maxhedgesize,@closeplantingdist,@longplantingdist,@unit,@planttype,@treeshape,@texture,@trunk,@leaf,@bloomingseason,@isfruit,@fruittype,@isherb,@flowercolor,@isscented,@waterrequirement,@sunlightrequirement,@soiltype,@growthrate,@deciduousorevergreen,@isscreen,@makenoise,@safeforkids,@maintaindifficult,@maintaindetail,@advantage,@reproductionmethod,@plantingstyle,@landscapearchuse,@recommendation,@remark,@pic1,@pic2,@pic3 );';
			var params:Array = [ {name:"commonname", value:rowItem.commonname}, {name:"othername", value:rowItem.othername}, {name:"scientificname", value:rowItem.scientificname}, {name:"genus", value:rowItem.genus}, {name:"family", value:rowItem.family}, {name:"treesize", value:rowItem.treesize}, {name:"minheight", value:rowItem.minheight}, {name:"maxheight", value:rowItem.maxheight}, {name:"minhedgesize", value:rowItem.minhedgesize}, {name:"maxhedgesize", value:rowItem.maxhedgesize}, {name:"closeplantingdist", value:rowItem.closeplantingdist}, {name:"longplantingdist", value:rowItem.longplantingdist}, {name:"unit", value:rowItem.unit}, {name:"planttype", value:rowItem.planttype}, {name:"treeshape", value:rowItem.treeshape}, {name:"texture", value:rowItem.texture}, {name:"trunk", value:rowItem.trunk}, {name:"leaf", value:rowItem.leaf}, {name:"bloomingseason", value:rowItem.bloomingseason}, {name:"isfruit", value:rowItem.isfruit}, {name:"fruittype", value:rowItem.fruittype}, {name:"isherb", value:rowItem.isherb}, {name:"flowercolor", value:rowItem.flowercolor}, {name:"isscented", value:rowItem.isscented}, {name:"waterrequirement", value:rowItem.waterrequirement}, {name:"sunlightrequirement", value:rowItem.sunlightrequirement}, {name:"soiltype", value:rowItem.soiltype}, {name:"growthrate", value:rowItem.growthrate}, {name:"deciduousorevergreen", value:rowItem.deciduousorevergreen}, {name:"isscreen", value:rowItem.isscreen}, {name:"makenoise", value:rowItem.makenoise}, {name:"safeforkids", value:rowItem.safeforkids}, {name:"maintaindifficult", value:rowItem.maintaindifficult}, {name:"maintaindetail", value:rowItem.maintaindetail}, {name:"advantage", value:rowItem.advantage}, {name:"reproductionmethod", value:rowItem.reproductionmethod}, {name:"plantingstyle", value:rowItem.plantingstyle}, {name:"landscapearchuse", value:rowItem.landscapearchuse}, {name:"recommendation", value:rowItem.recommendation}, {name:"remark", value:rowItem.remark}, {name:"pic1", value:rowItem.pic1}, {name:"pic2", value:rowItem.pic2}, {name:"pic3", value:rowItem.pic3} ];
			setParameters( stmt, params );
			stmt.addEventListener( SQLEvent.RESULT,
			function ( event:SQLEvent ):void {
				if (resultHandler != null) resultHandler.call(this, rowItem);
			});
			stmt.addEventListener( SQLErrorEvent.ERROR, faultHandler == null ? sqlErrorHandler : faultHandler );
			stmt.execute();
		}
		
		public function deleteRow( rowItem:Object, resultHandler:Function = null, faultHandler:Function = null ):void {
			var stmt:SQLStatement = new SQLStatement();
			stmt.sqlConnection = sqlConnection;
			stmt.text = 'DELETE FROM PlantDB_copy WHERE PlantDB_copy.commonname = @commonname;';
			var params:Array = [ {name:"commonname", value:rowItem.commonname} ];
			setParameters( stmt, params );
			stmt.addEventListener( SQLEvent.RESULT,
			function ( event:SQLEvent ):void {
				if (resultHandler != null) resultHandler.call(this, rowItem);
			});
			stmt.addEventListener( SQLErrorEvent.ERROR, faultHandler == null ? sqlErrorHandler : faultHandler );
			stmt.execute();
		}
		
		private function setParameters( stmt:SQLStatement, params:Array ):void {
			var param:Object;
			for ( var i:int = 0; i < params.length; i++ ) {
				param = params[i];
				stmt.parameters[ '@' + param.name ] = param.value;
			}
		}
		
		private function sqlErrorHandler( event:SQLError ):void {
			Alert.show( event.message, "Error" );
		}
		
	}
}

class SingletonLock {}
