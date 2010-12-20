package utility
{
	import components.myButton;
	
	import mx.core.IVisualElement;
	
	public class Componentfactory extends Object
	{
		public function Componentfactory()
		{
			super();
		}

		public function createElement(type:String):IVisualElement
		{
			var aButton:myButton=new myButton();
			aButton.label=type;
			return aButton as IVisualElement;
		}
	}
}