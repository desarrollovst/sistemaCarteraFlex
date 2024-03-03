package Data
{	
	import mx.controls.Alert;
	import mx.core.Application;
	import mx.managers.CursorManager;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.soap.WebService;
	
	public class Utils
	{
		public var strWsdl:String;
		public var strWsdlAdmin:String;
		public var strWsMS:String;
		public var strWsCat:String;
		public var strWsCatCap:String;
		public var strWsCC:String;
		public var strWsRep:String;
		public var strWsRepCont:String;
		public var strWsAdCred:String;
		public var xmlResult:XML = new XML();
				
		[Embed(source='assets/images/Error.png')]
		public var iError:Class;
	
		public function Utils(){
			var xmlL:XMLList = new XMLList();
			var xmlAdmin:XMLList = new XMLList();
			var xmlMS:XMLList = new XMLList();
			var xmlCat:XMLList = new XMLList();
			var xmlCatCap:XMLList = new XMLList();
			var xmlCC:XMLList = new XMLList();
			var xmlRep:XMLList = new XMLList();
			var xmlRepCont:XMLList = new XMLList();
			var xmlAdCred:XMLList = new XMLList();
			xmlResult = Application.application.wsStr;
			xmlL = xmlResult.child("wsdl");
			xmlAdmin = xmlResult.child("wsdlAdmin");
			xmlMS = xmlResult.child("wsdlReg");
			xmlCat = xmlResult.child("wsdlCat");
			xmlCatCap = xmlResult.child("wsdlCatCap");
			xmlCC = xmlResult.child("wsdlCC");
			xmlRep = xmlResult.child("wsdlRep");
			xmlRepCont = xmlResult.child("wsdlRepCont");
			xmlAdCred = xmlAdCred.child("wsdlAdCred");
			
			strWsdl = xmlL.toString();
			strWsdlAdmin = xmlAdmin.toString();
			strWsMS = xmlMS.toString();
			strWsCat = xmlCat.toString();
			strWsCatCap = xmlCatCap.toString();
			strWsCC = xmlCC.toString();
			strWsRep = xmlRep.toString();
			strWsRepCont = xmlRepCont.toString();
			strWsAdCred = xmlAdCred.toString();
		}
		
		public function initWs(ws:WebService):WebService{			
			ws.wsdl = this.strWsdl;
			ws.loadWSDL();	
			ws.addEventListener(FaultEvent.FAULT, wsFault);						
			return ws;		
		}
		
		public function initWsAdmin(ws:WebService):WebService{
			ws.wsdl = this.strWsdlAdmin;
			ws.loadWSDL();	
			ws.addEventListener(FaultEvent.FAULT, wsFault);						
			return ws;
		}
		
		public function initWsMS(ws:WebService):WebService{			
			ws.wsdl = this.strWsMS;
			ws.loadWSDL();	
			ws.addEventListener(FaultEvent.FAULT, wsFault);						
			return ws;		
		}
		
		public function initWsCat(ws:WebService):WebService{			
			ws.wsdl = this.strWsCat;
			ws.loadWSDL();	
			ws.addEventListener(FaultEvent.FAULT, wsFault);						
			return ws;		
		}
		
		public function initWsCatCap(ws:WebService):WebService{			
			ws.wsdl = this.strWsCatCap;
			ws.loadWSDL();	
			ws.addEventListener(FaultEvent.FAULT, wsFault);						
			return ws;		
		}
		
		public function initWsCC(ws:WebService):WebService{
			ws.wsdl = this.strWsCC;
			ws.loadWSDL();	
			ws.addEventListener(FaultEvent.FAULT, wsFault);						
			return ws;
		}
		
		public function initWsRep(ws:WebService):WebService{			
			ws.wsdl = this.strWsRep;
			ws.loadWSDL();	
			ws.addEventListener(FaultEvent.FAULT, wsFault);						
			return ws;		
		}
		
		public function ejecutaWsMethod(ws:WebService, callback:Function):WebService{												
			var listener:Function = function(event:ResultEvent):void{								
				ws.removeEventListener(ResultEvent.RESULT,listener);
				try{
					callback(event);
				}catch(err:Error){
					Alert.okLabel = "Aceptar";
					Alert.show(err.toString());
				}		
			};
			ws.addEventListener(ResultEvent.RESULT,listener);															
			return ws;						
		}
		
		public function closeWs(ws:WebService):WebService{
			ws.logout();
			ws.disconnect();
			ws.removeEventListener(FaultEvent.FAULT, wsFault);
			return ws;			
		}
		
		public function wsFault(event:FaultEvent):void{			
			CursorManager.removeAllCursors();								
			Alert.show("Ocurrio un error de comunicación con el Webservice","Conexión",4,null,null,iError);						
		}
		
		public function sCursor():void{
			CursorManager.removeAllCursors();
			CursorManager.setBusyCursor();
		}	
		
		public function rCursor():void{
			CursorManager.removeAllCursors();
			CursorManager.removeBusyCursor();
		}
	}
}