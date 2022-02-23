/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2629DC61
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 2
/// @DnDArgument : "funcName" "create_bullet"
/// @DnDArgument : "arg" "bulletDirection"
/// @DnDArgument : "arg_1" "bulletSpeed"
function create_bullet(bulletDirection, bulletSpeed) 
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 2B4E7927
	/// @DnDParent : 2629DC61
	/// @DnDArgument : "soundid" "snd_zap"
	/// @DnDSaveInfo : "soundid" "snd_zap"
	audio_play_sound(snd_zap, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 67C0959D
	/// @DnDParent : 2629DC61
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "newBullet"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_bullet"
	/// @DnDSaveInfo : "objectid" "obj_bullet"
	var newBullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B582410
	/// @DnDInput : 5
	/// @DnDParent : 2629DC61
	/// @DnDArgument : "expr" "bulletDirection"
	/// @DnDArgument : "expr_1" "bulletSpeed"
	/// @DnDArgument : "expr_2" "faction"
	/// @DnDArgument : "expr_3" "image_blend"
	/// @DnDArgument : "expr_4" "id"
	/// @DnDArgument : "var" "newBullet.direction"
	/// @DnDArgument : "var_1" "newBullet.speed"
	/// @DnDArgument : "var_2" "newBullet.faction"
	/// @DnDArgument : "var_3" "newBullet.image_blend"
	/// @DnDArgument : "var_4" "newBullet.creator"
	newBullet.direction = bulletDirection;
	newBullet.speed = bulletSpeed;
	newBullet.faction = faction;
	newBullet.image_blend = image_blend;
	newBullet.creator = id;
}