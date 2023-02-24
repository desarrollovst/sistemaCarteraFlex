package Data
{
	import flash.events.Event;
	
	public class EventEntidad extends Event
	{
		public var customProp:DatosEntidad;
		
		public function EventEntidad(type:String, dataToStore:DatosEntidad)
		{
			super(type);
			this.customProp = dataToStore;
		}
		
		override public function clone():Event 
		{
			return new EventEntidad(type, customProp);
		}

	}
}