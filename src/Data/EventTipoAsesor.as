package Data
{
	import flash.events.Event;
	
	public class EventTipoAsesor extends Event
	{
		public var customProp:DatosTipoAsesor;
		
		public function EventTipoAsesor(type:String, dataToStore:DatosTipoAsesor)
		{
			super(type);
			this.customProp = dataToStore;
		}
		
		override public function clone():Event 
		{
			return new EventTipoAsesor(type, customProp);
		}

	}
}