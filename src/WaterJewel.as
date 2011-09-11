package
{
	import tbd.Jewel;

	import flash.display.Sprite;
	
	[SWF(backgroundColor="#000000", frameRate="60", width="200", height="200")]
	public class WaterJewel extends Sprite
	{
		public function WaterJewel()
		{
			var child:Jewel = Jewel.generate(Jewel.WATER);
			child.x = 100;
			child.y = 100;
			addChild(child);
		}
	}
}
