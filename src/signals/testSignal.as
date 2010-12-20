package signals
{
	import org.osflash.signals.Signal;
	
	public class testSignal extends Signal
	{
		public function testSignal(...parameters)
		{
			super(Nome as String);
			trace("testSignal.testSignal(parameters)");
		}
	}
}