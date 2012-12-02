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
	
	import th.co.servit.vo.USERVO;
	
	public class USER_DAO
	{
	
		
		private static var instance:USER_DAO;
		public static function getInstance():USER_DAO {
			if( instance == null )
				instance = new USER_DAO( new SingletonLock );
			return instance;
		}
		
	
		public function USER_DAO( lock: SingletonLock) {
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
			stmt.text = 'CREATE TABLE IF NOT EXISTS USER (CELL NUMERIC, ID INTEGER PRIMARY KEY, NAME TEXT);';
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
			stmt.text = 'SELECT * FROM USER;';
			stmt.itemClass = USERVO;
			stmt.addEventListener( SQLEvent.RESULT,
			function ( event:SQLEvent ):void {
				resultHandler.call( this, new ArrayCollection( stmt.getResult().data ) );
			});
			stmt.addEventListener( SQLErrorEvent.ERROR, faultHandler == null ? sqlErrorHandler : faultHandler );
			stmt.execute();
		}
		
		public function updateRow( rowItem:USERVO, resultHandler:Function = null, faultHandler:Function = null ):void {
			var stmt:SQLStatement = new SQLStatement();
			stmt.sqlConnection = sqlConnection;
			stmt.text = 'UPDATE USER SET CELL = @CELL, ID = @ID, NAME = @NAMEWHERE ID = ?;';
			setParameters( stmt, [ {name:"CELL", value:rowItem.CELL}, {name:"ID", value:rowItem.ID}, {name:"NAME", value:rowItem.NAME} ] );
			stmt.addEventListener( SQLEvent.RESULT,
			function ( event:SQLEvent ):void {
				if ( resultHandler != null ) resultHandler.call( this, rowItem );
			});
			stmt.addEventListener( SQLErrorEvent.ERROR, faultHandler == null ? sqlErrorHandler : faultHandler );
			stmt.execute();
		}
		
		public function insertRow( rowItem:USERVO, resultHandler:Function = null, faultHandler:Function = null ):void {
			var stmt:SQLStatement = new SQLStatement();
			stmt.sqlConnection = sqlConnection;
			stmt.text = 'INSERT INTO USER( CELL, ID, NAME ) VALUES ( @CELL,@ID,@NAME );';
			var params:Array = [ {name:"CELL", value:rowItem.CELL}, {name:"ID", value:rowItem.ID}, {name:"NAME", value:rowItem.NAME} ];
			setParameters( stmt, params );
			stmt.addEventListener( SQLEvent.RESULT,
			function ( event:SQLEvent ):void {
				if (resultHandler != null) resultHandler.call(this, rowItem);
			});
			stmt.addEventListener( SQLErrorEvent.ERROR, faultHandler == null ? sqlErrorHandler : faultHandler );
			stmt.execute();
		}
		
		public function deleteRow( rowItem:USERVO, resultHandler:Function = null, faultHandler:Function = null ):void {
			var stmt:SQLStatement = new SQLStatement();
			stmt.sqlConnection = sqlConnection;
			stmt.text = 'DELETE FROM USER WHERE USER.ID = @ID;';
			var params:Array = [ {name:"ID", value:rowItem.ID} ];
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
