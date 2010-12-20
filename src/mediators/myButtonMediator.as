package mediators
{
	import components.myButton;
	
	import flash.events.MouseEvent;
	
	import org.osflash.signals.Signal;
	import org.robotlegs.mvcs.Mediator;
	
	import signals.ButtonSignal;
	
	public class myButtonMediator extends Mediator
	{
		[Inject]
		public var view:myButton;
		
		[Inject]
		public var alarm:ButtonSignal;
		
		public function myButtonMediator()
		{
			super();
		}
		
		override public function onRegister():void
		{
			
			view.addEventListener(MouseEvent.CLICK,clicked);
		}
		
		protected function clicked(event:MouseEvent):void
		{
			alarm.dispatch(view.label,Math.round(359*Math.random()));
		}
		
	}
}