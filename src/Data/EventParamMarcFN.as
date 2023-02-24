package Data
{
	import flash.events.Event;
	
	public class EventParamMarcFN extends Event
	{
		public var customProp:DatosParamMarcFN;
		
		public function EventParamMarcFN(type:String, dataToStore:DatosParamMarcFN)
		{
			super(type);
			this.customProp = dataToStore;
		}
		
		override public function clone():Event 
		{
			return new EventParamMarcFN(type, customProp);
		}

	}
}