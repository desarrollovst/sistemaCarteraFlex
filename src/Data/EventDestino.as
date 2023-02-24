package Data
{
	import flash.events.Event;
	
	public class EventDestino extends Event
	{
		public var customProp:DatosDestino;
		
		public function EventDestino(type:String, dataToStore:DatosDestino)
		{
			super(type);
			this.customProp = dataToStore;
		}
		
		override public function clone():Event 
		{
			return new EventDestino(type, customProp);
		}

	}
}