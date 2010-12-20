package commands
{
	import org.robotlegs.mvcs.Command;
	
	public class MyCommand extends Command
	{
		[Inject]
		public var type:String;
		
		[Inject]
		public var numero:int;
		
		public function MyCommand()
		{
			super();
		}
		
		override public function execute():void
		{
			trace("fired "+type+":"+numero);
		}
		
	}
}