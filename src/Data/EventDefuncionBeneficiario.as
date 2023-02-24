package Data
{
	import flash.events.Event;
	
	public class EventDefuncionBeneficiario extends Event
	{
		public var customProp:DatosDefuncionBeneficiario;
		
		public function EventDefuncionBeneficiario(type:String, dataToStore:DatosDefuncionBeneficiario)
		{
			super(type);
			this.customProp = dataToStore;
		}
		
		override public function clone():Event 
		{
			return new EventDefuncionBeneficiario(type, customProp);
		}

	}
}