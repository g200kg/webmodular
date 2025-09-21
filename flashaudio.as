package {
	import flash.display.*;
	import flash.events.*;
	import flash.media.*;
	import flash.external.ExternalInterface;
	import mx.controls.*;
	public class flashaudio extends Sprite {
		public function flashaudio() {
			Alert.show("Start");
			var mySound:Sound = new Sound(); 
			mySound.addEventListener(SampleDataEvent.SAMPLE_DATA, getSamples); 
			mySound.play(); 
		
		}
		public function astest():void {
			if (ExternalInterface.available) {
				try {
					ExternalInterface.call("FlashGetData");
				} catch(e: Error) {
					Alert.show("error:"+e);
				}
			}
		}
		public function setCallbackFunction():void {
			if(ExternalInterface.available) {
				try {
					
				} catch(e:Error) {
				
				}
			}
		}
		
		
		public function getSamples(event:SampleDataEvent):void {
			var dat:Array = ExternalInterface.call("FlashGetData");
			for(var i:int=0;i<8192;++i) {
		//		var n:Number = Math.sin((i + event.position) / Math.PI / 4); 
				var n:Number=dat[i];
		        event.data.writeFloat(n); 
		        event.data.writeFloat(n); 
		    } 
		}
	}
}	
