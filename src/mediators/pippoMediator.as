package mediators
{
	import components.ciccio;
	import components.myButton;
	
	import org.robotlegs.mvcs.Mediator;
	
	import signals.ButtonSignal;
	
	import utility.Componentfactory;
	
	public class pippoMediator extends Mediator
	{
		[Inject]
		public var view:ciccio;
		
		[Inject]
		public var alarm:ButtonSignal;
		
		public function pippoMediator()
		{
			super();
		}
		override public function onRegister():void
		{
			trace("Registered");
			var aComponentfactory:Componentfactory = new Componentfactory();	
			view.addElement(aComponentfactory.createElement("pippo"));
			view.addElement(aComponentfactory.createElement("ciccio"));
			alarm.add(fire);
		}
		
		private function fire(nome:String,numero:int):void
		{
			view.labelTxt.text=nome+" : "+numero.toString();
		}
		
	}
}