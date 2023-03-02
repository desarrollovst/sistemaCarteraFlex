package Data
{
	public class DatosAcred
	{
		/*variables que hacen referencia a los datos personales del acreditado*/
		public var codigo:String;
		public var nombre:String;
		public var segNombre:String;
		public var aPaterno:String;
		public var aMaterno:String;
		public var sexo:String;
		public var cdgco:String;
		public var fecha:String;
		public var cdgPaisNac:String;
		public var cdgEntFedNac:String;
		public var cdgNac:String;
		public var rfc:String;
		public var curp:String;
		public var valCurp:String;
		public var ife:String;
		public var guardaDatos:Boolean;
		
		/*Variables que hacen referencia a la dirección del Acreditado*/
		public var calle:String;
		public var entreCalles:String;
		public var noExt:String;
		public var noInt:String;
		public var telefono:String;
		public var codPostal:String;
		public var pais:String;
		public var cdgDirEntFed:String;
		public var dirEntFed:String;
		public var cdgMun:String;
		public var municipio:String;
		public var cdgLoc:String;
		public var localidad:String;
		public var cdgCol:String;
		public var colonia:String;
		public var tipoVivienda:String;
		public var guardaDir:Boolean;	
		
		/*Variables que hacen referencia a otros datos del Acreditado*/
		public var edoCivil:String;
		public var nivelEsc:String;
		public var depend:Number;
		public var nivelRiesgo:String;
		public var marca:Number;
		public var causa:String;
		public var enano:Number;
		public var cantEnano:Number;
		public var guardaOtros:Boolean;
		
		/*Variables que hacen referencia al asesor de crédito*/
		public var cdgPr:String;
		public var promotor:String;
		public var cdgRec:String;
		public var recuperador:String;
		public var guardaOficial:Boolean;
		
		/*Variables que hacen referencia a informacion de Prevención de Lavado de Dinero*/
		public var tipoPers:String;
		public var origen:String;
		public var destino:String;
		public var guardaPLD:Boolean; 
		
		/*Variables que hacen referencia a informacion de Dirección de Negocio*/
		public var calleNeg:String;
		public var entreCallesNeg:String;
		public var cdgDirEntFedNeg:String;
		public var cdgMunNeg:String;
		public var cdgLocNeg:String;
	 	public var dirEntFedNeg:String;
		public var municipioNeg:String;
		public var localidadNeg:String;
		public var poblacionNeg:String
		public var coloniaNeg:String;
		public var codPostalNeg:String;
		public var telefonoNeg:String;
		public var noExtNeg:String;
		public var noIntNeg:String;
		public var tipoDomNeg:String;
		public var guardaDirNeg:Boolean;
		
		public var banco:String;
		public var clabe:String;
		public var cuenta:String;
		public var guardaBanco:Boolean;	
		
		public function DatosAcred()
		{
		}
	}
}