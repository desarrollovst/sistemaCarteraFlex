package Data
{
	import flash.events.Event;
	
	public class EventOrigen extends Event
	{
		public var customProp:DatosOrigen;
		
		public function EventOrigen(type:String, dataToStore:DatosOrigen)
		{
			super(type);
			this.customProp = dataToStore;
		}
		
		override public function clone():Event 
		{
			return new EventOrigen(type, customProp);
		}

	}
}