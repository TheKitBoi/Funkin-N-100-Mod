import flixel.FlxG;
import flixel.input.FlxInput;
import flixel.input.actions.FlxAction;
import flixel.input.actions.FlxActionInput;
import flixel.input.actions.FlxActionInputDigital;
import flixel.input.actions.FlxActionManager;
import flixel.input.actions.FlxActionSet;
import flixel.input.gamepad.FlxGamepadButton;
import flixel.input.gamepad.FlxGamepadInputID;
import flixel.input.keyboard.FlxKey;

class KeyBinds
{

    public static function resetBinds():Void{

        FlxG.save.data.upBind = "W";
        FlxG.save.data.downBind = "S";
        FlxG.save.data.leftBind = "A";
        FlxG.save.data.rightBind = "D";
        FlxG.save.data.killBind = "R";
        // killbind = instant game over
        PlayerSettings.player1.controls.loadKeyBinds();

	}

    public static function keyCheck():Void
    {
        if(FlxG.save.data.upBind == null){
            FlxG.save.data.upBind = "W";
            trace("null");
            // null is no bind / applies to every bind, including killbind
        }
        if(FlxG.save.data.downBind == null){
            FlxG.save.data.downBind = "S";
            trace("null");
        }
        if(FlxG.save.data.leftBind == null){
            FlxG.save.data.leftBind = "A";
            trace("null");
        }
        if(FlxG.save.data.rightBind == null){
            FlxG.save.data.rightBind = "D";
            trace("null");
        }
        if(FlxG.save.data.killBind == null){
            FlxG.save.data.killBind = "R";
            trace("null");
        }
    }

}