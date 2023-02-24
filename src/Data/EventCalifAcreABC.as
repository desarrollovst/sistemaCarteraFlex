package Data
{
	import flash.events.Event;
	
	public class EventCalifAcreABC extends Event
	{
		public var customProp:DatosCalifAcreABC;
		
		public function EventCalifAcreABC(type:String, dataToStore:DatosCalifAcreABC)
		{
			super(type);
			this.customProp = dataToStore;
		}
		
		override public function clone():Event 
		{
			return new EventCalifAcreABC(type, customProp);
		}

	}
}