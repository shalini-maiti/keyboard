package src.components
{

	public class TouchKeyData
	{
		public var NUM_OF_KEYS:int=41;
		public var TOUCH_KEYS_ARR:Array;
		public function TouchKeyData()
		{
			// constructor code
			//keyType= alphanum or function
			TOUCH_KEYS_ARR=new Array(NUM_OF_KEYS);
			TOUCH_KEYS_ARR[0]={type:"alphanum",label1:"q",label2:"Q",label3:"1",code:0};
			TOUCH_KEYS_ARR[1]={type:"alphanum",label1:"w",label2:"W",label3:"2",code:0};
			TOUCH_KEYS_ARR[2]={type:"alphanum",label1:"e",label2:"E",label3:"3",code:0};
			TOUCH_KEYS_ARR[3]={type:"alphanum",label1:"r",label2:"R",label3:"4",code:0};
			TOUCH_KEYS_ARR[4]={type:"alphanum",label1:"t",label2:"T",label3:"5",code:0};
			TOUCH_KEYS_ARR[5]={type:"alphanum",label1:"y",label2:"Y",label3:"6",code:0};
			TOUCH_KEYS_ARR[6]={type:"alphanum",label1:"u",label2:"U",label3:"7",code:0};
			TOUCH_KEYS_ARR[7]={type:"alphanum",label1:"i",label2:"I",label3:"8",code:0};
			TOUCH_KEYS_ARR[8]={type:"alphanum",label1:"o",label2:"O",label3:"9",code:0};
			TOUCH_KEYS_ARR[9]={type:"alphanum",label1:"p",label2:"P",label3:"0",code:0};
			TOUCH_KEYS_ARR[10]={type:"function",label1:"backspace",code:0};
			TOUCH_KEYS_ARR[11]={type:"alphanum",label1:"a",label2:"A",label3:"!",code:0};
			TOUCH_KEYS_ARR[12]={type:"alphanum",label1:"s",label2:"S",label3:"#",code:0};
			TOUCH_KEYS_ARR[13]={type:"alphanum",label1:"d",label2:"D",label3:"$",code:0};
			TOUCH_KEYS_ARR[14]={type:"alphanum",label1:"f",label2:"F",label3:"%",code:0};
			TOUCH_KEYS_ARR[15]={type:"alphanum",label1:"g",label2:"G",label3:"&",code:0};
			TOUCH_KEYS_ARR[16]={type:"alphanum",label1:"h",label2:"H",label3:"*",code:0};
			TOUCH_KEYS_ARR[17]={type:"alphanum",label1:"j",label2:"J",label3:"'",code:0};
			TOUCH_KEYS_ARR[18]={type:"alphanum",label1:"k",label2:"K",label3:"\"",code:0};
			TOUCH_KEYS_ARR[19]={type:"alphanum",label1:"l",label2:"L",label3:"?",code:0};
			TOUCH_KEYS_ARR[20]={type:"function",label1:"shift",code:0};
			TOUCH_KEYS_ARR[21]={type:"alphanum",label1:"z",label2:"Z",label3:"(",code:0};
			TOUCH_KEYS_ARR[22]={type:"alphanum",label1:"x",label2:"X",label3:")",code:0};
			TOUCH_KEYS_ARR[23]={type:"alphanum",label1:"c",label2:"C",label3:"<",code:0};
			TOUCH_KEYS_ARR[24]={type:"alphanum",label1:"v",label2:"V",label3:">",code:0};
			TOUCH_KEYS_ARR[25]={type:"alphanum",label1:"b",label2:"B",label3:"/",code:0};
			TOUCH_KEYS_ARR[26]={type:"alphanum",label1:"n",label2:"N",label3:"\\",code:0};
			TOUCH_KEYS_ARR[27]={type:"alphanum",label1:"m",label2:"M",label3:"|",code:0};
			TOUCH_KEYS_ARR[28]={type:"alphanum",label1:",",label2:",",label3:":",code:0};
			TOUCH_KEYS_ARR[29]={type:"alphanum",label1:".",label2:".",label3:";",code:0};
			TOUCH_KEYS_ARR[30]={type:"function",label1:"up",code:0};
			TOUCH_KEYS_ARR[31]={type:"function",label1:"char",code:0};
			TOUCH_KEYS_ARR[32]={type:"function",label1:"space",code:0};
			TOUCH_KEYS_ARR[33]={type:"alphanum",label1:"@",label2:"@",label3:"@",code:0};
			TOUCH_KEYS_ARR[34]={type:"function",label1:"left",code:0};
			TOUCH_KEYS_ARR[35]={type:"function",label1:"down",code:0};
			TOUCH_KEYS_ARR[36]={type:"function",label1:"right",code:0};
			TOUCH_KEYS_ARR[37]={type:"function",label1:"enter",code:0};
			TOUCH_KEYS_ARR[38]={type:"function",label1:"com",code:0};
			TOUCH_KEYS_ARR[39]={type:"alphanum",label1:"_",label2:"_",label3:"-",code:0};
			TOUCH_KEYS_ARR[40]={type:"alphanum",label1:"=",label2:"=",label3:"+",code:0};
		}

	}

}