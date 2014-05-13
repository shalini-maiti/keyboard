package src.components
{
	import flash.display.MovieClip;
	import flash.events.TouchEvent;
	import flash.events.MouseEvent;
	import flash.events.Event;

	public class TouchKey extends MovieClip
	{
		public var keyData:Object;
		public var activeLabelIndex:int;
		public function TouchKey()
		{
			// constructor code
		}
		public function init(td:Object):void
		{
			activeLabelIndex=1;
			keyData=new Object();
			keyData=td;
			if(keyData.type=="alphanum")
			{
				mainKeyLabel_txt.text=keyData.label1;
				subKeyLabel_txt.text=keyData.label3;
			}
			this.addEventListener(MouseEvent.MOUSE_DOWN,keyPressedDown);
			this.addEventListener(MouseEvent.MOUSE_UP,keyReleasedUp);
		}
		private function keyPressedDown(e:Event):void
		{
			//trace("keypressed");
			back_mc.gotoAndStop(2);
			e.stopImmediatePropagation();
			dispatchEvent(new Event("KEY_PRESSED"));
		}
		private function keyReleasedUp(e:Event):void
		{
			//trace("keyreleased");
			back_mc.gotoAndStop(1);
			e.stopImmediatePropagation();
			dispatchEvent(new Event("KEY_RELEASED"));
		}
	}

}