/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 622C8D6D
/// @DnDArgument : "soundid" "snd_die"
/// @DnDSaveInfo : "soundid" "snd_die"
audio_play_sound(snd_die, 0, 0);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 18576F10
/// @DnDArgument : "expr" "object_index"
var l18576F10_0 = object_index;
switch(l18576F10_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 03D82717
	/// @DnDParent : 18576F10
	/// @DnDArgument : "const" "obj_raider"
	case obj_raider:
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 2B868F5D
		/// @DnDApplyTo : {obj_game}
		/// @DnDParent : 03D82717
		/// @DnDArgument : "score" "15"
		/// @DnDArgument : "score_relative" "1"
		with(obj_game) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(15);
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6587FA6B
	/// @DnDParent : 18576F10
	/// @DnDArgument : "const" "obj_hunter"
	case obj_hunter:
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 0D0116D4
		/// @DnDApplyTo : {obj_game}
		/// @DnDParent : 6587FA6B
		/// @DnDArgument : "score" "30"
		/// @DnDArgument : "score_relative" "1"
		with(obj_game) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(30);
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7E799D20
	/// @DnDParent : 18576F10
	/// @DnDArgument : "const" "obj_brute"
	case obj_brute:
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 50EE7E11
		/// @DnDApplyTo : {obj_game}
		/// @DnDParent : 7E799D20
		/// @DnDArgument : "score" "50"
		/// @DnDArgument : "score_relative" "1"
		with(obj_game) {
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		__dnd_score += real(50);
		}
		break;
}

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 2D0A3589
/// @DnDArgument : "times" "10"
repeat(10)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0655D286
	/// @DnDParent : 2D0A3589
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_debris"
	/// @DnDSaveInfo : "objectid" "obj_debris"
	instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
}