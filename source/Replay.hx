// source/Replay.hx
package;

import haxe.Json;
import flixel.input.keyboard.FlxKey;

typedef ReplayJSON = {
    var songName:String;
    var notes:Array<ReplayNote>;
    var events:Array<Dynamic>;
    var noteSpeed:Float;
    var playerKeyCount:Int;
    var timestamp:Date;
}

typedef ReplayNote = {
    var strumTime:Float;
    var noteData:Int;
    var sustainLength:Float;
    var mustPress:Bool;
}

class Replay
{
    public static var version:String = "1.0";
    
    public var path:String = "";
    public var replay:ReplayJSON;
    
    public function new(path:String)
    {
        this.path = path;
    }
    
    public static function LoadReplay(path:String):Replay
    {
        var replay:Replay = new Replay(path);
        replay.replay = Json.parse(sys.io.File.getContent(path));
        return replay;
    }
    
    public function Save():Void
    {
        var data:String = Json.stringify(replay, null, "    ");
        sys.io.File.saveContent(path, data);
    }
}
