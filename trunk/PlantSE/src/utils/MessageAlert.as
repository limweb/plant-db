package utils {
	
	import mx.controls.Alert;
	import mx.core.FlexGlobals;
	import mx.resources.ResourceManager;
	

	public class MessageAlert {
		private static var alert:Alert;
		private static var title:String;
		
		public static function getSuccessAlert(textMsg:String):void {
			title = "Success";
			alert = Alert.show(textMsg, title);
			alert.buttonMode = true;
			alert.titleIcon = FlexGlobals.topLevelApplication.ICON_SUCCESS;
		}
		
		public static function getSuccessAlertListener(textMsg:String, myFunction:Function):void {
			title = "Success";
			alert = Alert.show(textMsg, title, Alert.OK, null, myFunction);
			alert.buttonMode = true;
			alert.titleIcon = FlexGlobals.topLevelApplication.ICON_SUCCESS;
		}
		
		public static function getWarningAlert(textMsg:String):void {
			title = "Warning";
			alert = Alert.show(textMsg, title);
			alert.buttonMode = true;
			alert.titleIcon = FlexGlobals.topLevelApplication.ICON_WARNING;
		}
		
		public static function getErrorAlert(textMsg:String):void {
			if ( textMsg != "SESSTION_TIME_OUT" ) {
				title = "Error";
				alert = Alert.show(textMsg, title);
				alert.buttonMode = true;
				alert.titleIcon = FlexGlobals.topLevelApplication.ICON_ERROR;
			} else {
				getErrorAlertListener(textMsg, FlexGlobals.topLevelApplication.sessionTimeOut);
			}
		}
		
		public static function getErrorAlertListener(textMsg:String, myFunction:Function):void {
			title = "Error";
			alert = Alert.show(textMsg, title, Alert.OK, null, myFunction);
			alert.buttonMode = true;
			alert.titleIcon = FlexGlobals.topLevelApplication.ICON_ERROR;
		}
		
		public static function getConfirmAlertListener(textMsg:String, myFunction:Function):void {
			title = "Confirm";
			alert = Alert.show(textMsg, title, Alert.YES|Alert.NO, null, myFunction );
			alert.buttonMode = true;
			alert.titleIcon = FlexGlobals.topLevelApplication.ICON_CONFIRM;
		}
	}
}