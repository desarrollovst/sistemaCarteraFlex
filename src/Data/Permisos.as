package Data
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.controls.DateField;
	import mx.controls.TextInput;
	import mx.controls.dataGridClasses.DataGridColumn;
	import mx.core.Application;
	import mx.events.ValidationResultEvent;
	import mx.formatters.CurrencyFormatter;
	import mx.formatters.DateFormatter;
	import mx.formatters.NumberFormatter;
	import mx.validators.NumberValidator;
	
	public class Permisos
	{			
		public function Permisos(){
			
		}
		
		public function permisosBusqAcred(perfil:Array):Boolean{
			for(var i:int = 0; i < perfil.length; i++){
				if(perfil[i].toString() == "ADMIN"){
					return true;	
				}
			}
			return false;
		}
		
		public function permisosConsBuro(perfil:Array):Boolean{
			for(var i:int = 0; i < perfil.length; i++){
				if(perfil[i].toString() == "AUTC" || perfil[i].toString() == "ADMIN" || perfil[i].toString() == "ANSUC"){
					return true;	
				}
			}
			return false;
		}
	
		public function permisosDesautoriza(perfil:Array):Boolean{
			for(var i:int = 0; i < perfil.length; i++){
				if(perfil[i].toString() == "OIM" || perfil[i].toString() == "ADMIN")
					return true;
			}	
			return false;
		}
		
		public function permisosListaNegra(perfil:Array):Boolean{
			for(var i:int = 0; i < perfil.length; i++){
				if(perfil[i].toString() == "ADMIN" || perfil[i].toString() == "AUTC" || perfil[i].toString() == "ANSUC")
					return true;
			}	
			return false;
		}
		
		public function permisosMarcaEnano(perfil:Array):Boolean{
			for(var i:int = 0; i < perfil.length; i++){
				if(perfil[i].toString() == "ADMIN" || perfil[i].toString() == "AUTC" || perfil[i].toString() == "ANSUC")
					return true;
			}	
			return false;
		}
		
		public function permisosModCtaDes(perfil:Array):Boolean{
			for(var i:int = 0; i < perfil.length; i++){
				if(perfil[i].toString() == "ADMIN")
					return true;
			}	
			return false;
		}
		
		public function permisosModFecDes(perfil:Array):Boolean{
			for(var i:int = 0; i < perfil.length; i++){
				if(perfil[i].toString() == "OIM" || perfil[i].toString() == "ADMIN" || perfil[i].toString() == "AUTC")
					return true;
			}	
			return false;
		}
		
		public function permisosModGrupos(perfil:Array):Boolean{
			for(var i:int = 0; i < perfil.length; i++){
				if(perfil[i].toString() == "AMOCA" || perfil[i].toString() == "AUTC" || perfil[i].toString() == "GTOCA" 
				|| perfil[i].toString() == "ADMIN" || perfil[i].toString() == "CMOCA" || perfil[i].toString() == "OIM"
				|| perfil[i].toString() == "ANSUC")
					return true;
			}	
			return false;
		}
		
		public function permisosModAcred(perfil:Array):Boolean{
			for(var i:int = 0; i < perfil.length; i++){
				if(perfil[i].toString() == "AUTC" || perfil[i].toString() == "ADMIN" || perfil[i].toString() == "OIM")
					return true;	
			}
			/*if(perfil == "AUTC" || perfil == "ADMIN" || perfil == "OIM")
				return true;	
			else*/
				return false;
		}
		
		public function permisosModAcredInd(perfil:Array):Boolean{
			for(var i:int = 0; i < perfil.length; i++){
				if(perfil[i].toString() == "AUTC" || perfil[i].toString() == "ADMIN")
					return true;	
			}
			return false;
		}
		
		public function permisosModVigencia(perfil:Array):Boolean{
			for(var i:int = 0; i < perfil.length; i++){
				if(perfil[i].toString() == "AUTC" || perfil[i].toString() == "ADMIN" || perfil[i].toString() == "ANSUC")
					return true;	
			}
			return false;
		}
		
		public function permisosEvSolic(perfil:Array):Boolean{
			for(var i:int = 0; i < perfil.length; i++){
				if(perfil[i].toString() == "OIM" || perfil[i].toString() == "AUTC" || perfil[i].toString() == "ADMIN" || 
				perfil[i].toString() == "COMIT" || perfil[i].toString() == "ANSUC")
					return true;
			}	
			return false;
		}
		
		public function permisosLocalidades(perfil:Array):Boolean{
			for(var i:int = 0; i < perfil.length; i++){
				if(perfil[i].toString() == "ADMIN" || perfil[i].toString() == "OIM")
					return true;
			}	
			return false;
		}
		
		public function permisosRegionales(perfil:Array):Boolean{
			for(var i:int = 0; i < perfil.length; i++){
				if(perfil[i].toString() == "ADMIN" || perfil[i].toString() == "OIM")
					return true;
			}	
			return false;
		}
		
		public function permisosSelecCuenta(perfil:Array):Boolean{
			for(var i:int = 0; i < perfil.length; i++){
				if(perfil[i].toString() == "ADMIN"){
					return true;	
				}
			}
			return false;
		}
		
		public function permisosModSolic(perfil:Array):Boolean{
			for(var i:int = 0; i < perfil.length; i++){
				if(perfil[i].toString() == "AMOCA" || perfil[i].toString() == "ADMIN" || perfil[i].toString() == "CMOCA" 
				|| perfil[i].toString() == "GTOCA")
					return true;
			}	
			return false;
		}
		
		//funcion que permite a los perfiles de usuario especificos
		//modificar el registro de acreditados aunque cuenten con un prestamo vigente 
		public function permisosModRegAcred(perfil:Array):Boolean{
			for(var i:int = 0; i < perfil.length; i++){
				if(perfil[i].toString() == "ADMIN")
					return true;
			}	
			return false;
		}
	}
}