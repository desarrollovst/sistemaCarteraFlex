package Data
{
	import flash.events.Event;
	
	public class EventAseguradora extends Event
	{
		public var customProp:DatosAseguradora;
		
		public function EventAseguradora(type:String, dataToStore:DatosAseguradora)
		{
			super(type);
			this.customProp = dataToStore;
		}
		
		override public function clone():Event 
		{
			return new EventAseguradora(type, customProp);
		}

	}
}