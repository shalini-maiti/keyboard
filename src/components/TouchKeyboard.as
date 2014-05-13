package src.components 
{
	import flash.events.Event;
	import flash.text.TextField;
	import flash.display.Sprite;
	public class TouchKeyboard extends Sprite
	{
		private var touchKeyData:TouchKeyData;
		private var touchKeys_arr:Array;
		private var capsOn:Boolean;
		private var alphaNumOn:Boolean;
		public var activeTextField:TextField;
		private var keyHelper:KeyHelper;
		public function TouchKeyboard():void
		{

		}
		public function init(txt:TextField):void
		{
			activeTextField=txt;
			capsOn = false;
			alphaNumOn = false;
			keyHelper=new KeyHelper();
			addChild(keyHelper);
			keyHelper.visible = false;
			touchKeyData=new TouchKeyData();
			for (var i=0; i<touchKeyData.NUM_OF_KEYS; i++)
			{
				this["key" + i].init(touchKeyData.TOUCH_KEYS_ARR[i]);
				this["key" + i].addEventListener("KEY_PRESSED",touchKeyPressed);
				this["key" + i].addEventListener("KEY_RELEASED",touchKeyReleased);
			}
		}
		private function touchKeyPressed(e:Event):void
		{
			var key = e.target as TouchKey;
			//trace(key.keyData.type);
			if (key.keyData.type == "alphanum")
			{
				keyHelper.y = key.y;
				keyHelper.x = key.x + key.width / 2;
				keyHelper.visible = true;
				keyHelper.key_txt.text = key.keyData["label" + key.activeLabelIndex];
			}
		}
		private function touchKeyReleased(e:Event):void
		{
			var key = e.target as TouchKey;
			
			if (key.keyData.type == "alphanum")
			{
				var str = activeTextField.text;
				str +=  key.keyData["label" + key.activeLabelIndex];
				activeTextField.text = str;
				trace(activeTextField.text);
				keyHelper.visible = false;
			}
			else if (key.keyData.type=="function")
			{
				if (key.keyData.label1 == "shift")
				{
					capsOn = ! capsOn;
					changeKeyLabels();
				}
				else if (key.keyData.label1=="char")
				{
					alphaNumOn = ! alphaNumOn;
					changeKeyLabels();
				}
				else if (key.keyData.label1=="backspace")
				{
					var str:String = activeTextField.text;
					activeTextField.text = str.substr(0,str.length - 1);
				}
				else if (key.keyData.label1=="space")
				{
					var str = activeTextField.text;
					str +=  " ";
					activeTextField.text = str;
				}
				else if (key.keyData.label1=="com")
				{
					var str = activeTextField.text;
					str +=  ".com";
					activeTextField.text = str;
				}
				else if (key.keyData.label1=="enter")
				{
					var str = activeTextField.text;
					str +=  "\n";
					activeTextField.text = str;
				}
			}
		}
		private function changeKeyLabels():void
		{
			for (var i=0; i<touchKeyData.NUM_OF_KEYS; i++)
			{
				if (touchKeyData.TOUCH_KEYS_ARR[i].type == "alphanum")
				{
					if (alphaNumOn)
					{
						this["key" + i].activeLabelIndex=3;
						this["key" + i].mainKeyLabel_txt.text = touchKeyData.TOUCH_KEYS_ARR[i].label3;
						this["key" + i].subKeyLabel_txt.text = touchKeyData.TOUCH_KEYS_ARR[i].label1;

					}
					else
					{
						
						//this["key" + i].mainKeyLabel_txt.text = touchKeyData.TOUCH_KEYS_ARR[i].label1;
						this["key" + i].subKeyLabel_txt.text = touchKeyData.TOUCH_KEYS_ARR[i].label3;
						if (capsOn)
						{
							this["key" + i].activeLabelIndex=2;
							this["key" + i].mainKeyLabel_txt.text = touchKeyData.TOUCH_KEYS_ARR[i].label2;
						}
						else
						{
							this["key" + i].activeLabelIndex=1;
							this["key" + i].mainKeyLabel_txt.text = touchKeyData.TOUCH_KEYS_ARR[i].label1;
						}
					}
				}
			}
		}
		public function disable():void
		{
			
		}
		public function setActiveTextField(txt:TextField):void
		{
			activeTextField=txt;
		}
	}
}