package Data
{
	import flash.events.Event;
	
	public class EventParamMarcFNProd extends Event
	{
		public var customProp:DatosParamMarcFNProd;
		
		public function EventParamMarcFNProd(type:String, dataToStore:DatosParamMarcFNProd)
		{
			super(type);
			this.customProp = dataToStore;
		}
		
		override public function clone():Event 
		{
			return new EventParamMarcFNProd(type, customProp);
		}

	}
}