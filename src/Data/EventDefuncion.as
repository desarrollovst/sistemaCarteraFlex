package Data
{
	import flash.events.Event;
	
	public class EventDefuncion extends Event
	{
		public var customProp:DatosDefuncion;
		
		public function EventDefuncion(type:String, dataToStore:DatosDefuncion)
		{
			super(type);
			this.customProp = dataToStore;
		}
		
		override public function clone():Event 
		{
			return new EventDefuncion(type, customProp);
		}

	}
}