package Data
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.controls.dataGridClasses.DataGridColumn;
	import mx.controls.DateField;
	import mx.controls.TextInput;
	import mx.core.Application;
	import mx.events.ValidationResultEvent;
	import mx.formatters.CurrencyFormatter;
	import mx.formatters.DateFormatter;
	import mx.formatters.NumberFormatter;
	import mx.validators.NumberValidator;
	
	public class Globales
	{
		[Embed(source="assets/images/Info.png")]
		public var iInfo:Class; 
		[Embed(source="assets/images/Error.png")]
		public var iError:Class; 
		[Embed(source="assets/images/Alerta.png")]
		public var iAlert:Class;  
		[Embed(source="assets/images/Question.png")]
		public var iQuest:Class; 
		
		public var idEmpresa:String;
		public var meses:Array = ['ENERO','FEBRERO','MARZO','ABRIL','MAYO','JUNIO','JULIO','AGOSTO','SEPTIEMBRE','OCTUBRE','NOVIEMBRE','DICIEMBRE'] ;
		public var dias:Array = ['D','L','M','M','J','V','S'];
		public var tipoCred:ArrayCollection = new ArrayCollection([{id:"", desc:"--Seleccionar--"},{id:"G", desc:"Grupal"},{id:"I", desc:"Individual"}]);
 
 		public var urlServ:String;
 		public var urlServCap:String;
		public var urlExp:String;
		public var urlExpTxt:String;
		public var urlExpXls:String;
		public var urlExpXlsJson:String;
		public var urlJavaExp:String;
		public var urlPdf:String;
		public var urlFtp:String;
		public var urlIntr:String;
		public var urlInf:String;
		public var urlIncI:String;
		public var xmlResult:XML = new XML();
		private var vResult:ValidationResultEvent;
				
		public function Globales(){
			var xmlServ:XMLList = new XMLList();
			var xmlServCap:XMLList = new XMLList();
			var xmlExp:XMLList = new XMLList();
			var xmlExpTxt:XMLList = new XMLList();
			var xmlExpXls:XMLList = new XMLList();
			var xmlExpXlsJson:XMLList = new XMLList();
			var xmlJavaExp:XMLList = new XMLList();
			var xmlPdf:XMLList = new XMLList();
			var xmlFtp:XMLList = new XMLList();
			var xmlIntr:XMLList = new XMLList();
			var xmlInf:XMLList = new XMLList();
			var xmlIncI:XMLList = new XMLList();
			xmlResult = Application.application.wsStr;
			
			xmlServ = xmlResult.child("wsdlServ");
			xmlServCap = xmlResult.child("wsdlServCap");
			xmlExp = xmlResult.child("wsdlExp");
			xmlExpTxt = xmlResult.child("wsdlExpTxt");
			xmlExpXls = xmlResult.child("wsdlExpXls");
			xmlExpXlsJson = xmlResult.child("wsdlExpXlsJson");
			xmlJavaExp = xmlResult.child("javaExpXls");
			xmlPdf = xmlResult.child("wsdlPdf");
			xmlFtp = xmlResult.child("wsdlFtp");
			xmlIntr = xmlResult.child("urlIntranet");
			xmlInf = xmlResult.child("wsdlInf");
			xmlIncI = xmlResult.child("wsdlIncI");

			this.idEmpresa = "1";
			this.urlServ = xmlServ.toString();
			this.urlServCap = xmlServCap.toString();
			this.urlExp = xmlExp.toString();
			this.urlExpTxt = xmlExpTxt.toString();
			this.urlExpXls = xmlExpXls.toString();
			this.urlExpXlsJson = xmlExpXlsJson.toString();
			this.urlJavaExp = xmlJavaExp.toString();
			this.urlPdf = xmlPdf.toString();
			this.urlFtp = xmlFtp.toString();
			this.urlIntr = xmlIntr.toString();
			this.urlInf = xmlInf.toString();
			this.urlIncI = xmlIncI.toString();
		}
		
		public function bloquear():void{
			Application.application.bloquear();
		}
		
        public function calculaEdad(nacimiento:Date, today:Date):int{     
			var age:uint = today.getFullYear() - nacimiento.getFullYear();
           	nacimiento.setFullYear(today.getFullYear());
           
           	if(nacimiento.getTime() > today.getTime()){ 
				age--; 
         	}
           	return age;
        }

		public function clone(value:ArrayCollection):ArrayCollection{
    		var newCollection:ArrayCollection = new ArrayCollection(value.toArray());
		    return newCollection;
		}
		
		public function convCadenaFecha(fecha:String):Date {
        	return DateField.stringToDate(fecha, "DD/MM/YYYY");     	
        }
        
        public function desbloquear():void{
        	Application.application.desbloquear();
        }
        
        public function formateaAnio(anios:ArrayCollection=null):ArrayCollection{
			var anio:int = 2018;
			var oItem:Object;
			var item:Array = new Array();
			var anioObj:ArrayCollection;
			
			oItem = new Object();
			oItem.id = "----";	
			item.push(oItem);
			
			if(anios == null){
				for(var i:int = 0; i < 20; i++){
					oItem = new Object();
					oItem.id = anio.toString();	
					item.push(oItem);
					anio++;	
				}
				anioObj = new ArrayCollection(item);
				return anioObj;
			}
			else{
				anios.addItemAt(oItem, 0);
				return anios;					
			}
		}
		
		public function formateaMes(meses:ArrayCollection=null):ArrayCollection{
			var oItem:Object;
			var item:Array = new Array();
			var mesObj:ArrayCollection;
			
			oItem = new Object();
			oItem.id = "0";	
			oItem.nombre = "-Seleccionar-";
			item.push(oItem);
			
			if(meses == null){
				oItem = new Object();
				oItem.id = "1";	
				oItem.nombre = "Enero";
				item.push(oItem);
				
				oItem = new Object();
				oItem.id = "2";	
				oItem.nombre = "Febrero";
				item.push(oItem);
				
				oItem = new Object();
				oItem.id = "3";	
				oItem.nombre = "Marzo";
				item.push(oItem);
				
				oItem = new Object();
				oItem.id = "4";	
				oItem.nombre = "Abril";
				item.push(oItem);
				
				oItem = new Object();
				oItem.id = "5";	
				oItem.nombre = "Mayo";
				item.push(oItem);
				
				oItem = new Object();
				oItem.id = "6";	
				oItem.nombre = "Junio";
				item.push(oItem);
				
				oItem = new Object();
				oItem.id = "7";	
				oItem.nombre = "Julio";
				item.push(oItem);
				
				oItem = new Object();
				oItem.id = "8";	
				oItem.nombre = "Agosto";
				item.push(oItem);
				
				oItem = new Object();
				oItem.id = "9";	
				oItem.nombre = "Septiembre";
				item.push(oItem);
				
				oItem = new Object();
				oItem.id = "10";	
				oItem.nombre = "Octubre";
				item.push(oItem);
				
				oItem = new Object();
				oItem.id = "11";	
				oItem.nombre = "Noviembre";
				item.push(oItem);
				
				oItem = new Object();
				oItem.id = "12";	
				oItem.nombre = "Diciembre";
				item.push(oItem);
				
				mesObj = new ArrayCollection(item);
				return mesObj;
			}
			else{
				meses.addItemAt(oItem, 0);
				return meses;	
			}
		}
		
		public function formatoFecha(fecha:Date, formato:String = "DD/MM/YYYY"):String {
        	 var d:DateFormatter = new DateFormatter();
			 d.formatString = formato;
			 return d.format(fecha);	 
     	}
		
		public function formatoFechaExcel(dias:Number):String{
			var fec:Date = new Date(1900, 0, dias - 1);
			return formatoFecha(fec);
		}
		
		public function formatoFechaSep(aDate:Date, sep:String = null):String{
        	var SEPARATOR:String;
        	
        	if(sep == null) 
        		SEPARATOR = "/";
        	else if(sep != null)
        		SEPARATOR = sep;
    
        	var dd:String = aDate.date.toString();
         	if (dd.length < 2) dd = "0" + dd;
         
         	var mm:String = (aDate.month + 1).toString();
        	if (mm.length < 2) mm = "0" + mm;
        
         	var yyyy:String = aDate.fullYear.toString();
         	return dd + SEPARATOR + mm + SEPARATOR + yyyy;
     	}
     		
     	public function formatoFechaYYYYMMDD(aDate:Date):String{
        	var SEPARATOR:String = "/";
    
        	var dd:String = aDate.date.toString();
         	if (dd.length < 2) dd = "0" + dd;
         
         	var mm:String = (aDate.month + 1).toString();
        	if (mm.length < 2) mm = "0" + mm;
        
         	var yyyy:String = aDate.fullYear.toString();
         	return yyyy + SEPARATOR + mm + SEPARATOR + dd;
     	}
     	
     	public function formatoDecimalSinSep(numero:String):String{
     		numero = numero.replace("$","");
			numero = numero.replace(",","");
     		var formato:NumberFormatter = new NumberFormatter();
			formato.decimalSeparatorFrom = ".";
			formato.decimalSeparatorTo = ".";
			formato.precision = "2";
			formato.useThousandsSeparator = false;
			return formato.format(Number(numero));	
     	}
     	
     	public function formatoDecimal(numero:String):String{
			var formato:NumberFormatter = new NumberFormatter();
			formato.decimalSeparatorFrom = ".";
			formato.decimalSeparatorTo = ".";
			formato.precision = "2";
			formato.useThousandsSeparator = true;
			formato.useNegativeSign = true;
			return formato.format(Number(numero));
		}
		
		public function formatoEntero(numero:String):String{
			var formato:NumberFormatter = new NumberFormatter();
			formato.useThousandsSeparator = "true";
			formato.useNegativeSign = "true";
			return formato.format(Number(numero));
		}
		
		public function formatoMoneda(numero:String):String{
			var formato:CurrencyFormatter = new CurrencyFormatter();
			formato.currencySymbol = "$";
			formato.alignSymbol = "left";
			formato.decimalSeparatorFrom = ".";
			formato.decimalSeparatorTo = ".";
			formato.precision = "2";
			formato.rounding = "nearest";
			formato.useThousandsSeparator = "true";
			formato.useNegativeSign = "true";
			return formato.format(Number(numero));
		}
	
		public function formatoNumerico(numero:String):String{
			var formato:CurrencyFormatter = new CurrencyFormatter();
			formato.currencySymbol = "";
			formato.useThousandsSeparator = false;
			numero = formato.format(numero);
			return numero;			
		}
		
		public function formatoNumericoMiles(numero:String):String{
			var formato:CurrencyFormatter = new CurrencyFormatter();
			formato.currencySymbol = "";
			formato.useThousandsSeparator = true;
			formato.thousandsSeparatorFrom = ",";
			numero = formato.format(numero);
			return numero;			
		}
		
		public function formatoMonedaGrid(item:Object, column:DataGridColumn):String{
			var formato:CurrencyFormatter = new CurrencyFormatter();
			formato.decimalSeparatorFrom = ".";
			formato.decimalSeparatorTo = ".";
			formato.useThousandsSeparator = "true";
			formato.useNegativeSign = "true";
			return formato.format(Number(item[column.dataField]));
		}
    	
		public function insertaCaracter(cadena:String, caracter:String, cant:int, dir:int):String{
        	//dir = 1 inserta caracter a la izquierda de la cadena
        	//dir = 2 inserta caracter a la derecha de la cadena
        	var res:String = "";
        	
        	for (var i:int = 0; i < cant; i++){
            	res += caracter;
        	}
        	if(dir == 1)
        		res = res + cadena;
        	else if(dir == 2)
        		res = cadena + res;
        	
        	return res;
    	}
    	
    	//Funcion encargada de modificar el texto y colocar la primer letra como mayusculas y el resto como
    	//minusculas
		public function modificaLetraIni(texto:String):String{
		    texto = texto.substr(0,1).toUpperCase() + texto.substr(1,texto.length - 1).toLowerCase();
			return texto; 	
		}
    	
    	//Funcion encargada de modificar el texto si se trata de una fecha expresada como nombre  
    	//(utilizada para respetar el dato de nombres de grupos, colonias, localidades, etc)
		public function modificaTextoFecha(texto:String):String{
			for(var i:int = 0; i < meses.length; i++){
				if(texto.indexOf(meses[i],0) >= 0)
					return "'" + texto;
			}
			return texto; 	
		}
		
		public function obtenerFechaSistema():Date{
			return Application.application._Current_Fecha;
		}
		
		public function obtenerNombreUsuario():String{
        	return Application.application.NOM_U;
        }
        
        public function obtenerUsuario():String{
        	return Application.application.U_ID;
        }
		
		//funcion que permite obtener el indice del valor que se esta buscando en la coleccion
		public function obtieneIndice(array:ArrayCollection, prop:String, valor:String):Number{
            for (var i:Number = 0; i < array.length; i++){
                var obj:Object = Object(array[i])
                if (obj[prop] == valor)
                    return i;
            }
            return -1;
        }
        
        //funcion que permite obtener la fecha de inicio del mes anterior
        public function obtieneInicioMesAnt(fecha:Date):Date{
        	var fec:Date;
        	var mes:int
        	var anio:int;
        	
        	if(fecha.getMonth() == 1){
        		mes = 12;
        		anio = fecha.getFullYear() - 1;
        	}  
        	else{
        		mes = fecha.month - 1;	
        		anio = fecha.getFullYear();
        	}
        	
        	fec = new Date(anio,mes,1);
        	return fec;
        }
        
        public function permisosConsBuroProsp(perfil:Array):Boolean{
			for(var i:int = 0; i < perfil.length; i++){
				if(perfil[i].toString() == "ADMIN" || perfil[i].toString() == "ADOF"){
					return true;	
				}
			}
			return false;
		}
		
		public function permisosModProsp(perfil:Array):Boolean{
			for(var i:int = 0; i < perfil.length; i++){
				if(perfil[i].toString() == "ADMIN" || perfil[i].toString() == "ADOF")
					return true;	
			}
			return false;
		}
        
		public function reemplazaVocAcentos(cadena:String):String{
			var myPattern:RegExp = /á/g;
			cadena = cadena.replace(myPattern, "a");
			myPattern = /é/g;
			cadena = cadena.replace(myPattern, "e");
			myPattern = /í/g;
			cadena = cadena.replace(myPattern, "i");
			myPattern = /ó/g;
			cadena = cadena.replace(myPattern, "o");
			myPattern = /ú/g;
			cadena = cadena.replace(myPattern, "u");
			myPattern = /Á/g;
			cadena = cadena.replace(myPattern, "a");
			myPattern = /É/g;
			cadena = cadena.replace(myPattern, "e");
			myPattern = /Í/g;
			cadena = cadena.replace(myPattern, "i");
			myPattern = /Ó/g;
			cadena = cadena.replace(myPattern, "o");
			myPattern = /Ú/g;
			cadena = cadena.replace(myPattern, "u");
			return cadena;
		}
		
		public function reemplazaLetraEsp(cadena:String):String{
			var myPattern:RegExp = /ñ/g;
			cadena = cadena.replace(myPattern, "n");
			myPattern = /Ñ/g;
			cadena = cadena.replace(myPattern, "n");
			return cadena;
		}
		
		public function seleccionaDiaHabil(aDate:Date):Date{
			var periodo:Number = 0; 
			//Condicion que indica que el dia anterior al actual corresponde a Sabado 
			if(aDate.getDay() == 6)
				periodo = 1;
			//Condicion que indica que el dia anterior al actual corresponde al Domingo
			else if(aDate.getDay() == 0)
				periodo = 2;
			return new Date(aDate.getFullYear(),aDate.getMonth(),(aDate.getDate() - periodo)); 
		}		
		
		//Funcion que permite seleccionar el dia habil posterior a la fecha de parametro
		public function seleccionaDiaHabilPost(aDate:Date):Date{
			var periodo:Number = 0; 
			//Condicion que indica que el dia corresponde a Sabado 
			if(aDate.getDay() == 6)
				periodo = 2;
			//Condicion que indica que el dia corresponde al Domingo
			else if(aDate.getDay() == 0)
				periodo = 1;
			return new Date(aDate.getFullYear(),aDate.getMonth(),(aDate.getDate() + periodo)); 
		}			 	
		
		public function validaFecha(inicial:Date, fin:Date, titulo:String):Date{
			if(inicial > fin){
				Alert.show("La fecha inicial debe ser menor o igual a la fecha final.",titulo,4,null,null,iAlert);
				return fin;
			}
			return inicial;
		}
		
		public function validaMonto(event:Event):void{
			var numVal:NumberValidator = new NumberValidator;
			numVal.property = "text"; 
			numVal.precision = "2";
        	numVal.allowNegative = true; 
        	numVal.domain = "real"; 
        	numVal.decimalSeparator = "."; 
        	numVal.thousandsSeparator = ","; 
        	numVal.required = false;
			numVal.source = TextInput(event.currentTarget);
				vResult = numVal.validate();

			if (vResult.type!=ValidationResultEvent.VALID)
            	TextInput(event.currentTarget).text = "";
		}
	}
}