package Data
{
	import flash.events.Event;
	
	public class EventMeta extends Event
	{
		public var customProp:DatosMeta;
		
		public function EventMeta(type:String, dataToStore:DatosMeta)
		{
			super(type);
			this.customProp = dataToStore;
		}
		
		override public function clone():Event 
		{
			return new EventMeta(type, customProp);
		}

	}
}