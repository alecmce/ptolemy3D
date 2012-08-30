package
{
	//--------------------------------------------------------------------------
	//
	//  Imports
	//
	//--------------------------------------------------------------------------
	import com.godpaper.as3.views.components.jewels.Jewel;
	
	import starling.core.Starling;
	import starling.display.Sprite;
	import starling.events.Event;

	/**
	 * JewelsStarling.as class.   	
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 11.2+
	 * @airVersion 3.2+
	 * Created Aug 30, 2012 10:33:18 AM
	 */   	 
	public class JewelsStarling extends Sprite
	{		
		//--------------------------------------------------------------------------
		//
		//  Variables
		//
		//--------------------------------------------------------------------------
		
		//----------------------------------
		//  CONSTANTS
		//----------------------------------
		
		//--------------------------------------------------------------------------
		//
		//  Public properties
		//
		//-------------------------------------------------------------------------- 
		
		//--------------------------------------------------------------------------
		//
		//  Protected properties
		//
		//-------------------------------------------------------------------------- 
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		public function JewelsStarling()
		{
			super();
			//
			this.addEventListener(Event.ADDED_TO_STAGE,addToStageHandler);
			this.addEventListener(Event.REMOVED_FROM_STAGE,removeFromStageHandler);
		}     	
		//--------------------------------------------------------------------------
		//
		//  Public methods
		//
		//--------------------------------------------------------------------------
		//
		override public function dispose():void
		{
			this.removeEventListener(Event.REMOVED_FROM_STAGE,removeFromStageHandler);
			this.removeEventListener(Event.ADDED_TO_STAGE,addToStageHandler);
			super.dispose();
		}
		//--------------------------------------------------------------------------
		//
		//  Protected methods
		//
		//--------------------------------------------------------------------------
		protected function addToStageHandler(event:Event):void
		{
			//alecmce/ptolemy3D testing.
		//			Jewel.holder = FlexGlobals.topLevelApplication;//Define parent holder refer here.
//		var airChild:Jewel  = Jewel.generate(Jewel.AIR);
//		airChild.x = 100;
//		airChild.y = 100;
//		this.addChild(airChild);
//		var earchChild:Jewel  = Jewel.generate(Jewel.EARTH);
//		earchChild.x = 200;
//		earchChild.y = 100;
//		this.addChild(earchChild);
//		var fireChild:Jewel  = Jewel.generate(Jewel.FIRE);
//		fireChild.x = 100;
//		fireChild.y = 200;
//		this.addChild(fireChild);
		var waterChild:Jewel  = Jewel.generate(Jewel.WATER);
		waterChild.x = 200;
		waterChild.y = 200;
		this.addChild(waterChild);
		}
		//
		protected function removeFromStageHandler(event:Event):void
		{
		}
		//--------------------------------------------------------------------------
		//
		//  Private methods
		//
		//--------------------------------------------------------------------------
	}
	
}