package Data
{
	import flash.events.Event;
	
	public class EventCteAnt extends Event
	{
		public var customProp:DatosCteAnt;
		
		public function EventCteAnt(type:String, dataToStore:DatosCteAnt)
		{
			super(type);
			this.customProp = dataToStore;
		}
		
		override public function clone():Event 
		{
			return new EventCteAnt(type, customProp);
		}

	}
}