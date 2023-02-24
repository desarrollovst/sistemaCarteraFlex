package Data
{
	import flash.events.Event;
	
	public class EventTipoPers extends Event
	{
		public var customProp:DatosTipoPers;
		
		public function EventTipoPers(type:String, dataToStore:DatosTipoPers)
		{
			super(type);
			this.customProp = dataToStore;
		}
		
		override public function clone():Event 
		{
			return new EventTipoPers(type, customProp);
		}

	}
}