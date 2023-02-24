package Data
{
	import flash.display.Shape;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	public class ExcelExportDispatcherJson extends EventDispatcher {
	    public var global:Globales;
	    private var savedIndex:int;
	    private var dg:*;
	    private var dgTot:*;
	    public var datos:Array;
	    public var strEnc:String;
	    public var str:String;
	    private static var enterFrameDispatcher:Shape = new Shape();
	    
	 	/* Determina cuantos ciclos se entrara antes de ejecutar 
	 	el siguiente ENTER_FRAME event */
		private static const MAX_ITERATIONS:int = 2000;
	    
	    public function ExcelExportDispatcherJson(dg:*, dgTot:* = null):void{
	     	this.dg = dg;
	        this.dgTot = dgTot;
	    }
		 		
		private function formateaCadena():void{
			str = '{tabla:[' + str + ']}';
			
	    	//ExternalInterface.call("console.log", "Return.savedIndex:"+savedIndex+" | Return: str.lenght ="+ str.length );
		    enterFrameDispatcher.removeEventListener(Event.ENTER_FRAME, loopHandler, false);
			dispatchEvent(new Event(Event.COMPLETE));
		} 		
		 		
	 	public function run():void{
	 		savedIndex = 0;
	 		global = new Globales();
	 		strEnc = "";	
	 		str = ""; 	
	 			
	 		strEnc += '{tabla:['; 			
	 		for(var i:int = 0; i <dg.columns.length; i++){
	 			if(dg.columns[i].headerText != undefined) 
	    			strEnc += '{enc:"'+dg.columns[i].headerText+'"},';
	    		else 
	    			strEnc += '{enc:"'+dg.columns[i].dataField+'"},';
			}
			strEnc = strEnc.substr(0, strEnc.length - 1);
			strEnc += ']}';
			
			enterFrameDispatcher.addEventListener(Event.ENTER_FRAME, loopHandler, false, 0, true);
			// call the first iteration immediately
			loopHandler(null);
	 	}
	 
	 	// ENTER_FRAME loop for asynchronous processing
		private function loopHandler(event:Event):void {
			var texto:String;
			var textoFila:String;
	    	var ind:int;
	    	var index:int;  
	    		
			for(var j:int = savedIndex; j < dg.dataProvider.length; j++) {
	    		index = j;		
	    		if (j - savedIndex >= MAX_ITERATIONS){
					savedIndex = j;
					//ExternalInterface.call("console.log", "index guardado en posicion:"+savedIndex+" | total datos llenados: str.lenght ="+ str.length );
					return;
				}			
	    		str = str + ((str != '') ? ',': '') + '{';
	    		textoFila = '';
	    		
	    		for(var k:int = 0; k < dg.columns.length; k++) {
	    			ind = 0;
	    			texto = '';
	    			textoFila = textoFila + ((textoFila != '') ? ',': '');
	    			
	    			if(dg.dataProvider.getItemAt(j) != undefined && dg.dataProvider.getItemAt(j) != null && dg.columns[k].visible == true) {
	    				if(dg.columns[k].labelFunction != undefined && dg.columns[k].labelFunction != null && dg.columns[k].visible == true) {
	    					texto = dg.columns[k].labelFunction(dg.dataProvider[j],dg.columns[k]).toString();
	    					texto = global.modificaTextoFecha(texto);
	    				 	if(texto.indexOf('"',0) > 0){
	    				 		do{
    				 				ind = texto.indexOf('"',ind);
	    				 			texto = texto.replace('"',"\\'");
	    				 			ind += 2;
	    				 		}while(texto.indexOf('"',ind) > 0)
	    				 		trace(texto);
	    				 	}
	    					if(texto.substr(0,1) == "0" && texto.length > 1 && texto.substr(1,1) != "." && (texto.substr(2,1) != "/" && texto.substr(5,1) != "/"))
	    						textoFila += 'col'+k.toString()+':"\''+texto+'"';
	    					else if(texto.substr(0,1) == "'")
	    						textoFila += 'col'+k.toString()+':"\''+texto.substr(1,texto.length-1)+'"';
	    					else
	    						textoFila += 'col'+k.toString()+':"'+texto+'"';
	    				} else {
	    					if(dg.dataProvider.getItemAt(j)[dg.columns[k].dataField] != undefined){
	    						texto = dg.dataProvider.getItemAt(j)[dg.columns[k].dataField].toString();
	    						texto = global.modificaTextoFecha(texto);
	    						if(texto.indexOf('"',0) > 0){
	    				 			do{
	    				 				ind = texto.indexOf('"',ind);
		    				 			texto = texto.replace('"',"\\'");
		    				 			ind += 2;
		    				 		}while(texto.indexOf('"',ind) > 0)
		    				 		trace(texto);
		    				 	}
	    						if(texto.substr(0,1) == "0" && texto.length > 1 && texto.substr(1,1) != "." && (texto.substr(2,1) != "/" && texto.substr(5,1) != "/"))
	    							textoFila += 'col'+k.toString()+':"\''+texto+'"';
	    						else if(texto.substr(0,1) == "'")
	    							textoFila += 'col'+k.toString()+':"\''+texto.substr(1,texto.length-1)+'"';
	    						else
	    							textoFila += 'col'+k.toString()+':"'+texto+'"';
	    					}
	    					else
	    						textoFila += 'col'+k.toString()+':""';
	    				}
	    			}
	    		}
	    		str += textoFila; 
	    		str += '}';
    		}
	    	formateaCadena();
		}	   
	}
}
