package Data
{
	import mx.messaging.channels.StreamingAMFChannel;
	
	public class DatosProsp
	{
		/*variables que hacen referencia a los datos personales del prospecto*/
		public var codigo:String;
		public var nombre:String;
		public var segNombre:String;
		public var aPaterno:String;
		public var aMaterno:String;
		public var sexo:String;
		public var cdgco:String;
		public var fecha:String;
		public var cdgPais:String;
		public var cdgPaisNac:String;
		public var cdgEntFed:String;
		public var cdgEntFedNac:String;
		public var cdgNac:String;
		public var rfc:String;
		public var curp:String;
		public var ife:String;
		public var guardaDatos:Boolean;
		
		/*Variables que hacen referencia a la dirección del Prospecto*/
		public var calle:String;
		public var entreCalles:String;
		public var noExt:String;
		public var noInt:String;
		public var telefono:String;
		public var codPostal:String;
		public var cdgDirEntFed:String;
		public var dirEntFed:String;
		public var cdgMun:String;
		public var municipio:String;
		public var cdgLoc:String;
		public var localidad:String;
		public var cdgCol:String;
		public var colonia:String;
		public var guardaDir:Boolean;	
		
		/*Variables que hacen referencia a otros datos del Prospecto*/
		public var edoCivil:String;
		public var nivelEsc:String;
		public var depend:Number;
		public var guardaOtros:Boolean;
		
		/*Variables que hacen referencia al asesor de crédito*/
		public var cdgPr:String;
		public var promotor:String;
		public var cdgRec:String;
		public var recuperador:String;
		public var guardaOficial:Boolean;
		
		public function DatosProsp()
		{
		}
	}
}