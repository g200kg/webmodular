package {
    import flash.display.Sprite;
    import flash.events.Event;
    public class Dock3 extends Sprite {
        private var icon : Sprite = new Sprite();
        public function Dock3(){
            icon.graphics.beginFill(0xFF6600);
            icon.graphics.drawCircle(0,0,15);
            icon.graphics.endFill();
            addChild(icon);
            icon.x = 100;
            icon.y = 100;
            addEventListener(Event.ENTER_FRAME, IconMove);
        }
        private function IconMove(event:Event) : void {
            icon.scaleY = 1 + mouseX/100;
        }
    }
}