import flash.external.ExternalInterface;
import mx.controls.*;

public function Start():void {
	var enable:Number=ExternalInterface.call("FlashGetEnable");
	if(enable!=0) {
		var snd:Sound = new Sound(); 
		snd.addEventListener(SampleDataEvent.SAMPLE_DATA, getSamples); 
		snd.play(); 
	}
}
public function getSamples(event:SampleDataEvent):void {
	var dat:Array = ExternalInterface.call("FlashGetData");
	for(var i:int=0;i<4096;++i) {
		var n:Number=dat[i];
        event.data.writeFloat(n); 
        event.data.writeFloat(n); 
    } 
}

