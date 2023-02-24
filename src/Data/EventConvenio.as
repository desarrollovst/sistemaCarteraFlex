package Data
{
	import flash.events.Event;
	
	public class EventConvenio extends Event
	{
		public var customProp:DatosConvenio;
		
		public function EventConvenio(type:String, dataToStore:DatosConvenio)
		{
			super(type);
			this.customProp = dataToStore;
		}
		
		override public function clone():Event 
		{
			return new EventConvenio(type, customProp);
		}

	}
}