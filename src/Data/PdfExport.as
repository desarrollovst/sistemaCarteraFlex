 package Data
{
    import flash.net.URLRequest;
    import flash.net.URLRequestMethod;
    import flash.net.navigateToURL;	
		
	public class PdfExport{
	    public var global:Globales;
 		public var urlPdfExport:String;
			
		//Funcion que permite cargar un documento PDF en una nueva ventana
		public function cargaPdf(cadParam:String):void {
	        global = new Globales();
	        urlPdfExport = cadParam;
 
			var u:URLRequest = new URLRequest(urlPdfExport);
			u.method = URLRequestMethod.GET;
 
			navigateToURL(u,"_new");
		}  	
	}
}