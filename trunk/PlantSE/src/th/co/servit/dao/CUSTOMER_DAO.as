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
	
	import th.co.servit.vo.CUSTOMERVO;
	
	public class CUSTOMER_DAO
	{
	
		
		private static var instance:CUSTOMER_DAO;
		public static function getInstance():CUSTOMER_DAO {
			if( instance == null )
				instance = new CUSTOMER_DAO( new SingletonLock );
			return instance;
		}
		
	
		public function CUSTOMER_DAO( lock: SingletonLock) {
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
			stmt.text = 'CREATE TABLE IF NOT EXISTS CUSTOMER (DESCRIPTION TEXT, ID INTEGER PRIMARY KEY, IMAGE BLOB);';
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
			stmt.text = 'SELECT * FROM CUSTOMER;';
			stmt.itemClass = CUSTOMERVO;
			stmt.addEventListener( SQLEvent.RESULT,
			function ( event:SQLEvent ):void {
				resultHandler.call( this, new ArrayCollection( stmt.getResult().data ) );
			});
			stmt.addEventListener( SQLErrorEvent.ERROR, faultHandler == null ? sqlErrorHandler : faultHandler );
			stmt.execute();
		}
		
		public function updateRow( rowItem:CUSTOMERVO, resultHandler:Function = null, faultHandler:Function = null ):void {
			var stmt:SQLStatement = new SQLStatement();
			stmt.sqlConnection = sqlConnection;
			stmt.text = 'UPDATE CUSTOMER SET DESCRIPTION = @DESCRIPTION, ID = @ID, IMAGE = @IMAGEWHERE ID = ?;';
			setParameters( stmt, [ {name:"DESCRIPTION", value:rowItem.DESCRIPTION}, {name:"ID", value:rowItem.ID}, {name:"IMAGE", value:rowItem.IMAGE} ] );
			stmt.addEventListener( SQLEvent.RESULT,
			function ( event:SQLEvent ):void {
				if ( resultHandler != null ) resultHandler.call( this, rowItem );
			});
			stmt.addEventListener( SQLErrorEvent.ERROR, faultHandler == null ? sqlErrorHandler : faultHandler );
			stmt.execute();
		}
		
		public function insertRow( rowItem:CUSTOMERVO, resultHandler:Function = null, faultHandler:Function = null ):void {
			var stmt:SQLStatement = new SQLStatement();
			stmt.sqlConnection = sqlConnection;
			stmt.text = 'INSERT INTO CUSTOMER( DESCRIPTION, ID, IMAGE ) VALUES ( @DESCRIPTION,@ID,@IMAGE );';
			var params:Array = [ {name:"DESCRIPTION", value:rowItem.DESCRIPTION}, {name:"ID", value:rowItem.ID}, {name:"IMAGE", value:rowItem.IMAGE} ];
			setParameters( stmt, params );
			stmt.addEventListener( SQLEvent.RESULT,
			function ( event:SQLEvent ):void {
				if (resultHandler != null) resultHandler.call(this, rowItem);
			});
			stmt.addEventListener( SQLErrorEvent.ERROR, faultHandler == null ? sqlErrorHandler : faultHandler );
			stmt.execute();
		}
		
		public function deleteRow( rowItem:CUSTOMERVO, resultHandler:Function = null, faultHandler:Function = null ):void {
			var stmt:SQLStatement = new SQLStatement();
			stmt.sqlConnection = sqlConnection;
			stmt.text = 'DELETE FROM CUSTOMER WHERE CUSTOMER.ID = @ID;';
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
