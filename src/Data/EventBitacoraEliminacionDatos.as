package Data
{
	import flash.events.Event;
	
	public class EventBitacoraEliminacionDatos extends Event
	{
		public var customProp:DatosBitacoraEliminacionDatos;
		
		public function EventBitacoraEliminacionDatos(type:String, dataToStore:DatosBitacoraEliminacionDatos)
		{
			super(type);
			this.customProp = dataToStore;
		}
		
		override public function clone():Event 
		{
			return new EventBitacoraEliminacionDatos(type, customProp);
		}

	}
}