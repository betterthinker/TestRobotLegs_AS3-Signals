package
{
	import com.adobe.serialization.json.JSONDecoder;
	
	import commands.MyCommand;
	
	import components.ciccio;
	import components.myButton;
	
	import flash.display.DisplayObjectContainer;
	import flash.display.StageDisplayState;
	
	import mediators.myButtonMediator;
	import mediators.pippoMediator;
	
	import mx.rpc.http.SerializationFilter;
	
	import org.robotlegs.mvcs.SignalContext;
	
	import signals.ButtonSignal;
	
	public class MainSignalContext extends SignalContext
	{
		public function MainSignalContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
		{
			super(contextView, autoStartup);
		}
		
		override public function startup():void
		{
			//Mediators
			mediatorMap.mapView(ciccio, pippoMediator);
			mediatorMap.mapView(myButton,myButtonMediator);
			
			//SignalCommands
			signalCommandMap.mapSignalClass(ButtonSignal,MyCommand);	

			//Services
			
			//Startup
			contextView.stage.displayState=StageDisplayState.FULL_SCREEN_INTERACTIVE;
		}
	}
}