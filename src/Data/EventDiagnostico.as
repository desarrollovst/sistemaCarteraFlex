package Data
{
	import flash.events.Event;
	
	public class EventDiagnostico extends Event
	{
		public var customProp:DatosDiagnostico;
		
		public function EventDiagnostico(type:String, dataToStore:DatosDiagnostico)
		{
			super(type);
			this.customProp = dataToStore;
		}
		
		override public function clone():Event 
		{
			return new EventDiagnostico(type, customProp);
		}

	}
}