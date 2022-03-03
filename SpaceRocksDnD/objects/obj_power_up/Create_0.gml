/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 12544A3D
/// @DnDArgument : "var" "powerup"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "5"
var powerup = floor(random_range(0, 5 + 1));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 58CCF644
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "var" "image_index"
image_index = 3;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 2264047E
/// @DnDArgument : "speed" "0"
image_speed = 0;

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 11D81632
/// @DnDArgument : "colour" "$FF00FF00"
image_blend = $FF00FF00 & $ffffff;
image_alpha = ($FF00FF00 >> 24) / $ff;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0EEFFC3D
/// @DnDArgument : "steps" "60 * 5"
alarm_set(0, 60 * 5);