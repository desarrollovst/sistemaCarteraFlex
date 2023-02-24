package Data
{
	import flash.events.Event;
	
	public class EventBitacoraEliminacion extends Event
	{
		public var customProp:DatosBitacoraEliminacion;
		
		public function EventBitacoraEliminacion(type:String, dataToStore:DatosBitacoraEliminacion)
		{
			super(type);
			this.customProp = dataToStore;
		}
		
		override public function clone():Event 
		{
			return new EventBitacoraEliminacion(type, customProp);
		}

	}
}