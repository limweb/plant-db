package th.co.servit.util
{
	import mx.collections.ArrayCollection;
	import mx.core.FlexGlobals;

	public class MonthArrayUtil
	{
		public function MonthArrayUtil()
		{
		}
		
		public function color2array(c:String):Array {
			var returnAr:Array = new Array();
			var aC:ArrayCollection = FlexGlobals.topLevelApplication.AcColor; 
			for(var i:int=0;i<aC.length;i++){
				   if(c.indexOf(aC[i].name) != -1){
					   returnAr.push(aC[i].color);
				   }
			}
			return returnAr;
		}
		
		
		public function m2array(m:String):Array {
			var returnAr:Array = new Array();
			if(m == null) {
					returnAr.push('N');				
					returnAr.push('N');				
					returnAr.push('N');				
					returnAr.push('N');				
					returnAr.push('N');				
					returnAr.push('N');				
					returnAr.push('N');				
					returnAr.push('N');				
					returnAr.push('N');				
					returnAr.push('N');				
					returnAr.push('N');				
					returnAr.push('N');				
			} else {
				if( m.indexOf("มกราคม")!= -1 ){
					returnAr.push('Y');				
				} else {
					returnAr.push('N');
				}
				if( m.indexOf("กุมภาพันธ์") != -1) {
					returnAr.push('Y');				
				} else {
					returnAr.push('N');
				}
				if(  m.indexOf("มีนาคม") != -1 ){
					returnAr.push('Y');				
				} else {
					returnAr.push('N');
				} 
				if(  m.indexOf("เมษายน") != -1 ){
					returnAr.push('Y');				
				} else {
					returnAr.push('N');
				}
				if(  m.indexOf("พฤษภาคม") != -1 ){
					returnAr.push('Y');				
				} else {
					returnAr.push('N');
				} 
				if(  m.indexOf("มิถุนายน") != -1 ){
					returnAr.push('Y');				
				} else {
					returnAr.push('N');
				}
				if(  m.indexOf("กรกฎาคม") != -1 ){
					returnAr.push('Y');				
				} else {
					returnAr.push('N');
				} 
				if(  m.indexOf("สิงหาคม") != -1 ){
					returnAr.push('Y');				
				} else {
					returnAr.push('N');
				}
				if(  m.indexOf("กันยายน") != -1 ){
					returnAr.push('Y');				
				} else {
					returnAr.push('N');
				}
				if(  m.indexOf("ตุลาคม") != -1 ){
					returnAr.push('Y');				
				} else {
					returnAr.push('N');
				} 
				if(  m.indexOf("พฤศจิกายน") != -1 ){
					returnAr.push('Y');				
				} else {
					returnAr.push('N');
				}
				if(  m.indexOf("ธันวาคม") != -1 ){
					returnAr.push('Y');				
				} else {
					returnAr.push('N');
				}
			}
			return returnAr;
		}
	}
}