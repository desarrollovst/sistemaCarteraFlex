package Data
{
	import flash.events.Event;
	
	public class EventProdMicro extends Event
	{
		public var customProp:DatosProdMicro;
		
		public function EventProdMicro(type:String, dataToStore:DatosProdMicro)
		{
			super(type);
			this.customProp = dataToStore;
		}
		
		override public function clone():Event 
		{
			return new EventProdMicro(type, customProp);
		}

	}
}