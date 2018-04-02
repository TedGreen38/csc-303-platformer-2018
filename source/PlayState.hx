package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;
import flixel.math.FlxRandom;


class PlayState extends FlxState
{
	override public function create():Void
	{
		super.create();
		
		var RNG:FlxRandom = new FlxRandom();
	
		var k = 0;
		while (k <= 100) {
			
			var ranX:Float = RNG.float(0, 640);
			var ranY:Float = RNG.float(0, 480);
			var thing:FlxSprite = new FlxSprite(ranX, ranY);	
			add(thing);
			k++;
		}
		
		var thing1:FlxSprite = new FlxSprite(30, 30);
		thing1.makeGraphic(580, 70, FlxColor.CYAN);
		add(thing1);
		
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
