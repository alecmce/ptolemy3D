package
{
	import ptolemy.geom3D.core.Eye;
	import ptolemy.geom3D.core.Scene;
	import ptolemy.geom3D.core.SpatialVector;
	import ptolemy.geom3D.unfolding.Dodecahedron;

	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	
	[SWF(backgroundColor="#FFFFFF", frameRate="60", width="500", height="400")]
	public class UnfoldingOctahedron extends Sprite
	{
		
		private static const COLORS:Array = [0xFF0000FF,0xFF8800FF,0xFFEE00FF,0x00FF00FF,0x1E90FFFF,0x0000CDFF,0x9900FFFF];
		
		private var container:Shape;
		
		private var _solid:Dodecahedron;
		private var _scene:Scene;
		private var _eye:Eye;
		private var _dangle:Number;
		private var _ddihedral:Number;
		
		public function UnfoldingOctahedron()
		{
			container = new Shape();
			container.x = 250;
			container.y = 200;
			addChild(container);
			
			_solid = new Dodecahedron(50, 1);
			_solid.about = new SpatialVector(0.2, 1, 0.2);
			_solid.colors = COLORS;
			_solid.outlineWidth = -1;

			_eye = new Eye();
			_eye.width = 0;
			_eye.height = 0;
			
			_ddihedral = -1 / 60;

			_dangle = Math.PI / 45;

			_scene = new Scene(_eye, _solid);
			
			addEventListener(Event.ENTER_FRAME, iterate);
		}

		private function iterate(event:Event):void
		{
			_solid.angle += _dangle;
			_solid.proportion += _ddihedral;
			if (_ddihedral > 0)
			{
				if (_solid.proportion > 1)
				{
					_solid.proportion = 1;
					_ddihedral *= -1;
				}
			}
			else
			{
				if (_solid.proportion < -1)
				{
					_solid.proportion = -1;
					_ddihedral *= -1;
				}
			}

			container.graphics.clear();
			_scene.calculate();
			_scene.draw(container.graphics);
		}
		
	}
}
