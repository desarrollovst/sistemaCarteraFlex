package Data
{
	import mx.controls.TabBar;
	import mx.core.ClassFactory;
	import mx.core.mx_internal;
	use namespace mx_internal;
	
	public class MultiLineTabBar extends TabBar{
		
		public function MultiLineTabBar(){
	 		super ();
	 		navItemFactory = new ClassFactory(MultiLineTab);
	 	}
	}
}
