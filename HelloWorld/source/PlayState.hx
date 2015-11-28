package;

import flixel.util.FlxPoint;
import flixel.system.debug.Log;
import flixel.addons.display.FlxBackdrop;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;

/**
 * A FlxState which can be used for the actual gameplay.
 */
class PlayState extends FlxState
{
	var _bg:FlxBackdrop;
	var debugText:FlxText;
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		var _btnBack = new FlxButton(0, 0, "Back", clickBack);
		add(_btnBack);

		debugText = new FlxText(0,0,100, "wjat");
		debugText.scrollFactor.x = 0;
		debugText.scrollFactor.y = 0;

		_bg = new FlxBackdrop("assets/images/endless_gras.png",1,0,true,false);
		_bg.setPosition(0, FlxG.height - _bg.cachedGraphics.bitmap.height);
		add(_bg);
		add(debugText);
		super.create();
	}


	function clickBack():Void
	{
		FlxG.switchState(new MenuState());
	}
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		FlxG.camera.scroll.x += 5;


		super.update();
	}	
}