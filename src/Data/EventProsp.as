package Data
{
	import flash.events.Event;
	 
	public class EventProsp extends Event
	{
		public var customProp:DatosProsp;
		
		public function EventProsp(type:String, dataToStore:DatosProsp)
		{
			super(type);
			this.customProp = dataToStore;
		}
		
		override public function clone():Event 
		{
			return new EventProsp(type, customProp);
		}

	}
}