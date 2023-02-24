package Data
{
	import flash.events.Event;
	
	public class EventParamMarcABC extends Event
	{
		public var customProp:DatosParamMarcABC;
		
		public function EventParamMarcABC(type:String, dataToStore:DatosParamMarcABC)
		{
			super(type);
			this.customProp = dataToStore;
		}
		
		override public function clone():Event 
		{
			return new EventParamMarcABC(type, customProp);
		}

	}
}