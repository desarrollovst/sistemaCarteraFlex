 package Data
{
    import flash.external.ExternalInterface;
		
	public class Cookie{
		//Metodo que permite crear una cookie en el navegador
		public function crearCookie(usuario:String, nomUsuario:String):void{
	    	ExternalInterface.call("crearCookie",usuario,nomUsuario);
		}  	
	}
}