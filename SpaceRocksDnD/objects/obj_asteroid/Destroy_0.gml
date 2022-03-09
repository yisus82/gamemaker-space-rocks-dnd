/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 66E88C23
/// @DnDArgument : "var" "chance"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "5"
var chance = floor(random_range(0, 5 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 34A232CD
/// @DnDArgument : "var" "chance"
if(chance == 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6126559E
	/// @DnDParent : 34A232CD
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_power_up"
	/// @DnDSaveInfo : "objectid" "obj_power_up"
	instance_create_layer(x + 0, y + 0, "Instances", obj_power_up);
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 18C7E907
/// @DnDArgument : "soundid" "snd_hurt"
/// @DnDSaveInfo : "soundid" "snd_hurt"
audio_play_sound(snd_hurt, 0, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0A05CD3F
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_asteroid_huge"
if(sprite_index == spr_asteroid_huge)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 297ADB02
	/// @DnDApplyTo : {obj_camera}
	/// @DnDParent : 0A05CD3F
	/// @DnDArgument : "var" "cameraShake"
	/// @DnDArgument : "op" "3"
	with(obj_camera) var l297ADB02_0 = cameraShake <= 0;
	if(l297ADB02_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 15DA4191
		/// @DnDApplyTo : {obj_camera}
		/// @DnDParent : 297ADB02
		/// @DnDArgument : "expr" "4"
		/// @DnDArgument : "var" "cameraShake"
		with(obj_camera) {
		cameraShake = 4;
		
		}
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 334F4945
	/// @DnDParent : 0A05CD3F
	/// @DnDArgument : "times" "2"
	repeat(2)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4A066FE3
		/// @DnDParent : 334F4945
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "newAsteroid"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_asteroid"
		/// @DnDSaveInfo : "objectid" "obj_asteroid"
		var newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6522A846
		/// @DnDParent : 334F4945
		/// @DnDArgument : "expr" "spr_asteroid_medium"
		/// @DnDArgument : "var" "newAsteroid.sprite_index"
		newAsteroid.sprite_index = spr_asteroid_medium;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 03C8EADC
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_asteroid_medium"
if(sprite_index == spr_asteroid_medium)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1F1F1A64
	/// @DnDApplyTo : {obj_camera}
	/// @DnDParent : 03C8EADC
	/// @DnDArgument : "var" "cameraShake"
	/// @DnDArgument : "op" "3"
	with(obj_camera) var l1F1F1A64_0 = cameraShake <= 0;
	if(l1F1F1A64_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 16060300
		/// @DnDApplyTo : {obj_camera}
		/// @DnDParent : 1F1F1A64
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "cameraShake"
		with(obj_camera) {
		cameraShake = 2;
		
		}
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 415AD206
	/// @DnDParent : 03C8EADC
	/// @DnDArgument : "times" "2"
	repeat(2)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4B78F276
		/// @DnDParent : 415AD206
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "newAsteroid"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_asteroid"
		/// @DnDSaveInfo : "objectid" "obj_asteroid"
		var newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7C7E7743
		/// @DnDParent : 415AD206
		/// @DnDArgument : "expr" "spr_asteroid_small"
		/// @DnDArgument : "var" "newAsteroid.sprite_index"
		newAsteroid.sprite_index = spr_asteroid_small;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3BAB009E
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 47FB8ACB
	/// @DnDApplyTo : {obj_camera}
	/// @DnDParent : 3BAB009E
	/// @DnDArgument : "var" "cameraShake"
	/// @DnDArgument : "op" "3"
	with(obj_camera) var l47FB8ACB_0 = cameraShake <= 0;
	if(l47FB8ACB_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0ED9315A
		/// @DnDApplyTo : {obj_camera}
		/// @DnDParent : 47FB8ACB
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "cameraShake"
		with(obj_camera) {
		cameraShake = 1;
		
		}
	}
}

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 623E50A3
/// @DnDArgument : "times" "10"
repeat(10)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3E9AB788
	/// @DnDParent : 623E50A3
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_debris"
	/// @DnDSaveInfo : "objectid" "obj_debris"
	instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 617D30DD
/// @DnDApplyTo : {obj_game}
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 0AD37F8D
	/// @DnDParent : 617D30DD
	/// @DnDArgument : "score" "10"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(10);
}