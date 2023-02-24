package Data
{
	import flash.events.Event;
	
	public class EventFormatosMicroseguro extends Event
	{
		public var customProp:DatosFormatosMicroseguro;
		
		public function EventFormatosMicroseguro(type:String, dataToStore:DatosFormatosMicroseguro)
		{
			super(type);
			this.customProp = dataToStore;
		}
		
		override public function clone():Event 
		{
			return new EventFormatosMicroseguro(type, customProp);
		}

	}
}