/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0815860D
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 2
/// @DnDArgument : "funcName" "spawn_off_camera"
/// @DnDArgument : "arg" "obj"
/// @DnDArgument : "arg_1" "number=1"
function spawn_off_camera(obj, number=1) 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 759DCFD7
	/// @DnDParent : 0815860D
	/// @DnDArgument : "var" "padding"
	/// @DnDArgument : "value" "64"
	var padding = 64;

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 552D96A1
	/// @DnDParent : 0815860D
	/// @DnDArgument : "times" "number"
	repeat(number)
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4872D9C9
		/// @DnDParent : 552D96A1
		/// @DnDArgument : "var" "boundCheck"
		/// @DnDArgument : "value" "true"
		var boundCheck = true;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 202823C0
		/// @DnDParent : 552D96A1
		/// @DnDArgument : "var" "boundCheck"
		/// @DnDArgument : "value" "true"
		while ((boundCheck == true)) {
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 100FF38F
			/// @DnDParent : 202823C0
			/// @DnDArgument : "var" "posX"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_width"
			var posX = floor(random_range(0, room_width + 1));
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 29709ED1
			/// @DnDParent : 202823C0
			/// @DnDArgument : "var" "posY"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_height"
			var posY = floor(random_range(0, room_height + 1));
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 641BA779
			/// @DnDInput : 6
			/// @DnDApplyTo : {obj_camera}
			/// @DnDParent : 202823C0
			/// @DnDArgument : "var" "boundCheck"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "function" "point_in_rectangle"
			/// @DnDArgument : "arg" "posX"
			/// @DnDArgument : "arg_1" "posY"
			/// @DnDArgument : "arg_2" "cameraX - padding"
			/// @DnDArgument : "arg_3" "cameraY - padding"
			/// @DnDArgument : "arg_4" "cameraX + cameraWidth + padding"
			/// @DnDArgument : "arg_5" "cameraY + cameraHeight + padding"
			with(obj_camera) {
				var boundCheck = point_in_rectangle(posX, posY, cameraX - padding, cameraY - padding, cameraX + cameraWidth + padding, cameraY + cameraHeight + padding);
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 50DE5286
		/// @DnDParent : 552D96A1
		/// @DnDArgument : "xpos" "posX"
		/// @DnDArgument : "ypos" "posY"
		/// @DnDArgument : "objectid" "obj"
		instance_create_layer(posX, posY, "Instances", obj);
	}
}