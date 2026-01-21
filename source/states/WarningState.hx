package states;

import flixel.FlxState;
import flixel.FlxG;
import objects.Alphabet;
import flixel.util.FlxTimer;
import flixel.tweens.FlxTween 

class WarningState extends FlxState
{
  override function create()
  {
    super.create();
    var warningtext:Alphabet = new Alphabet(0, 0, "This mod uses the Psych Engine code");
    warningtext.screenCenter();
    add(warningtext);
    new FlxTimer().start(3, function(timer:FlxTimer)
                         {
                           remove(warningtext);
                         });
  }
}
