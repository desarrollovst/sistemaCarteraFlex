package Data
{
	import flash.events.Event;
	
	public class EventDiagnosticoBeneficiario extends Event
	{
		public var customProp:DatosDiagnosticoBeneficiario;
		
		public function EventDiagnosticoBeneficiario(type:String, dataToStore:DatosDiagnosticoBeneficiario)
		{
			super(type);
			this.customProp = dataToStore;
		}
		
		override public function clone():Event 
		{
			return new EventDiagnosticoBeneficiario(type, customProp);
		}

	}
}