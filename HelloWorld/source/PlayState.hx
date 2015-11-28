package;

import flash.Vector;
import flixel.FlxObject;
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
	var _sky:FlxBackdrop;
	var _ui:GameScoreUI;

	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		var _btnBack = new FlxButton(0, 0, "Back", clickBack);

		add(_btnBack);

		_bg = new FlxBackdrop("assets/images/endless_gras.png",1,0,true,false);
		_sky = new FlxBackdrop("assets/images/sky.png",1,0,true,false);
		_ui = new GameScoreUI();

		_sky.setPosition(0,FlxG.height - _sky.cachedGraphics.bitmap.height);
		_bg.setPosition(0, FlxG.height - _bg.cachedGraphics.bitmap.height);

		var layers = [_sky,_bg,_ui];

		for(o in layers)
		{
			add(o);
		}

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
//		FlxG.camera.scroll.x += 5;

		super.update();
	}	
}