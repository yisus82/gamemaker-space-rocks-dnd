/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 080D73A3
/// @DnDArgument : "soundid" "snd_hurt"
/// @DnDSaveInfo : "soundid" "snd_hurt"
audio_play_sound(snd_hurt, 0, 0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 04FCB778
instance_destroy();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4CDAC72F
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_asteroid_huge"
if(sprite_index == spr_asteroid_huge)
{
	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 7E10A5A5
	/// @DnDParent : 4CDAC72F
	/// @DnDArgument : "times" "2"
	repeat(2)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 26598A32
		/// @DnDParent : 7E10A5A5
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "newAsteroid"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_asteroid"
		/// @DnDSaveInfo : "objectid" "obj_asteroid"
		var newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 780E33D1
		/// @DnDParent : 7E10A5A5
		/// @DnDArgument : "expr" "spr_asteroid_medium"
		/// @DnDArgument : "var" "newAsteroid.sprite_index"
		newAsteroid.sprite_index = spr_asteroid_medium;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 33F89058
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_asteroid_medium"
if(sprite_index == spr_asteroid_medium)
{
	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 4F9AA7AA
	/// @DnDParent : 33F89058
	/// @DnDArgument : "times" "2"
	repeat(2)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 52E7F6C6
		/// @DnDParent : 4F9AA7AA
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "newAsteroid"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_asteroid"
		/// @DnDSaveInfo : "objectid" "obj_asteroid"
		var newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 38A2C8B8
		/// @DnDParent : 4F9AA7AA
		/// @DnDArgument : "expr" "spr_asteroid_small"
		/// @DnDArgument : "var" "newAsteroid.sprite_index"
		newAsteroid.sprite_index = spr_asteroid_small;
	}
}

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 0BC1DA6C
/// @DnDArgument : "times" "10"
repeat(10)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 47DD22E7
	/// @DnDParent : 0BC1DA6C
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_debris"
	/// @DnDSaveInfo : "objectid" "obj_debris"
	instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 7BC2E43C
/// @DnDApplyTo : {obj_game}
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 2F448EB0
	/// @DnDParent : 7BC2E43C
	/// @DnDArgument : "score" "10"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(10);
}