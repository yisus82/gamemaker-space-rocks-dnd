/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 27AA11E8
/// @DnDArgument : "var" "room"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "rm_game"
if(!(room == rm_game))
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 2ACF9BBF
	/// @DnDParent : 27AA11E8
	exit;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2988107C
/// @DnDArgument : "steps" "room_speed*4"
alarm_set(0, room_speed*4);

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 60B98790
/// @DnDInput : 2
/// @DnDArgument : "var" "choice"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option_1" "1"
var choice = choose(0, 1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 64DC029F
/// @DnDArgument : "var" "choice"
if(choice == 0)
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 6A785DA6
	/// @DnDInput : 2
	/// @DnDParent : 64DC029F
	/// @DnDArgument : "var" "pos_x"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option_1" "room_width"
	var pos_x = choose(0, room_width);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 432B9327
	/// @DnDParent : 64DC029F
	/// @DnDArgument : "var" "pos_y"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "room_height"
	var pos_y = floor(random_range(0, room_height + 1));
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 79C5D169
else
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 60C5DD8E
	/// @DnDInput : 2
	/// @DnDParent : 79C5D169
	/// @DnDArgument : "var" "pos_y"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option_1" "room_height"
	var pos_y = choose(0, room_height);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 5DC6860B
	/// @DnDParent : 79C5D169
	/// @DnDArgument : "var" "pos_x"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "room_width"
	var pos_x = floor(random_range(0, room_width + 1));
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 39E8278D
/// @DnDArgument : "xpos" "pos_x"
/// @DnDArgument : "ypos" "pos_y"
/// @DnDArgument : "objectid" "obj_asteroid"
/// @DnDSaveInfo : "objectid" "obj_asteroid"
instance_create_layer(pos_x, pos_y, "Instances", obj_asteroid);