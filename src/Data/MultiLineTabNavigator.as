package Data
{
 	import flash.display.DisplayObject;
 	import mx.containers.TabNavigator;
 	
 	public class MultiLineTabNavigator extends TabNavigator {
		
		public function MultiLineTabNavigator(){
	 		super();
	 	}	
	 	
	 	override protected function createChildren():void{
			if (!tabBar){
				tabBar = new MultiLineTabBar();
				tabBar.name = "tabBar";
			 	tabBar.focusEnabled = false;
			 	tabBar.styleName = this;
			 	tabBar.setStyle("borderStyle", "none");
			 	tabBar.setStyle("paddingTop", 0);
			 	tabBar.setStyle("paddingBottom", 0);
			 	rawChildren.addChild(tabBar);
		 	}
		 	super.createChildren();
		}
		
		override protected function updateDisplayList(unscaledWidth:Number,unscaledHeight:Number):void{
			super.updateDisplayList(unscaledWidth,unscaledHeight);
		}
	}
}