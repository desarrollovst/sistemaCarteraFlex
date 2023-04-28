package Data
{
   	import Data.Globales;
   	import Data.Utils;
   	
   	import as3xls.xls.Cell;
   	import as3xls.xls.ExcelFile;
   	import as3xls.xls.Sheet;
   	
   	import flash.display.Shape;
   	import flash.errors.ScriptTimeoutError;
   	import flash.events.Event;
   	import flash.events.EventDispatcher;
   	import flash.external.ExternalInterface;
   	import flash.utils.ByteArray;
   	
   	import mx.collections.ArrayCollection;
   	import mx.controls.DataGrid;
   	import mx.controls.Label;
	    
	public class CargaArchivoEstimClass extends EventDispatcher{
		private static var enterFrameDispatcher:Shape = new Shape();
		private var savedIndex:int;
		private var global:Globales;
		private static const MAX_ITERATIONS:int = 4000;
		private var fileData:ByteArray;		
		private var infoObj:ArrayCollection;	 
		private var dgInfo:DataGrid;
		private var lblResul:Label;
		private var du:Utils;
		public var totalElementos:int;
		
		public function CargaArchivoEstimClass( fileData:ByteArray, infoObj:ArrayCollection, dgInfo:DataGrid, lblResul:Label){
			this.fileData = fileData;
			this.infoObj = infoObj;
			this.dgInfo = dgInfo;
			this.lblResul = lblResul;
				 		 
		}
		
		public function setDuUtils(du:Utils):void {
			this.du = du;
		}
		
		public function run():void{
			savedIndex = 1;
			global = new Globales();
			dgInfo.dataProvider = null;
	        infoObj.removeAll();
	        infoObj.refresh();
			// set up ENTER_FRAME loop
			enterFrameDispatcher.addEventListener(Event.ENTER_FRAME, loopHandler, false, 0, true);
			// call the first iteration immediately
			loopHandler(null);
			
		}
		
		// ENTER_FRAME loop for asynchronous processing
		private function loopHandler(event:Event):void {
			
			try{
            	ExternalInterface.call("console.log", "Entra a < loopHandler >" );
	    		// btnCargar.visible = true;
	           	// btnExportar.visible = false;
	            
	            var excelFile:ExcelFile = new ExcelFile();
	            var noOfRows:int;
		        var noOfColumns:int;
	            
	            if(fileData!=null && fileData.length > 0){
	            	excelFile.loadFromByteArray(fileData);
	                var sheet:Sheet = excelFile.sheets[0];
	                if(sheet!=null){
	            	    noOfRows = sheet.rows;
	            	    this.totalElementos = noOfRows;	
	                    noOfColumns = sheet.cols;
	                    for(var row:int = savedIndex; row<noOfRows;row++){	     
	                    	if (row - savedIndex >= MAX_ITERATIONS){
								savedIndex = row;
								lblResul.text = "Preparando " + infoObj.length + " Registros de " + noOfRows + " Encontrados, espere un momento...";
								ExternalInterface.call("console.log", "index guardado en posicion:"+savedIndex+" | total datos llenados: infoObj.length ="+ infoObj.length );
								return;
	                    	}
	                    	
	                	    var cellObject:Object ={};
	                        for(var col:int=0;col<noOfColumns;col++){
	                    	    var cell:Cell = new Cell();
	                            var cellValue:String = new String();
	                            cell = sheet.getCell(row,col);
	                            if(cell!=null){
	                            	cellValue =(cell.value).toString();
	                            	if(cellValue!=""){
	                                	addProperty(cellObject,col,cellValue);
	                             	}
	                            }
	                     	}  
	                        infoObj.addItem(cellObject);
	                        dgInfo.dataProvider = infoObj;
	                    }
	                }    
	            }
	            //global.desbloquear(); 	           
	            dgInfo.includeInLayout = true;
	            dgInfo.visible = true;
	            //du.rCursor();
	            enterFrameDispatcher.removeEventListener(Event.ENTER_FRAME, loopHandler, false);
				dispatchEvent(new Event(Event.COMPLETE));
            }
            catch(err:ScriptTimeoutError){
				ExternalInterface.call("console.log", "Error timeout Class="+err.message );
			}
		}
		 
		private function addProperty(cellObject:Object,index:int,cellValue:String):void{
        	if(cellValue != ""){
	            if(index == 0)
	                cellObject.SALDINSOL = cellValue;
	            else if(index == 1)
	                cellObject.SALDCAP = cellValue;
	            else if(index == 2)
	                cellObject.RGOATRPNFM = cellValue;
	            else if(index == 3)
	            	//se utiliza la funcion formatoFechaExcel para transformar el valor numerico de fecha
	                cellObject.EPRCPRNFM = cellValue;//= global.formatoFechaExcel(Number(cellValue));
	            else if(index == 4)
	                cellObject.NSCICLOCL = cellValue;
	            else if(index == 5)
	                cellObject.EPRCMESANT = cellValue;
	            else if(index == 6)
	                cellObject.EPRCACUM = cellValue; 
	            else if(index == 7)
	                cellObject.EPRCGENERA = cellValue;
	        }               
        }
	}
}