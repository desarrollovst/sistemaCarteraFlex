package Data
{
	import flash.events.Event;
	
	public class EventParamMarcABCProd extends Event
	{
		public var customProp:DatosParamMarcABCProd;
		
		public function EventParamMarcABCProd(type:String, dataToStore:DatosParamMarcABCProd)
		{
			super(type);
			this.customProp = dataToStore;
		}
		
		override public function clone():Event 
		{
			return new EventParamMarcABCProd(type, customProp);
		}

	}
}