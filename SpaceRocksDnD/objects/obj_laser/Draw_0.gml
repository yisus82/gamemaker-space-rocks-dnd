/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 2214A64A
/// @DnDArgument : "obj" "creator"
var l2214A64A_0 = false;
l2214A64A_0 = instance_exists(creator);
if(l2214A64A_0)
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45E06065
	/// @DnDInput : 3
	/// @DnDParent : 2214A64A
	/// @DnDArgument : "var" "length"
	/// @DnDArgument : "value" "500"
	/// @DnDArgument : "var_1" "x2"
	/// @DnDArgument : "value_1" "lengthdir_x(length, direction)"
	/// @DnDArgument : "var_2" "y2"
	/// @DnDArgument : "value_2" "lengthdir_y(length, direction)"
	var length = 500;
	var x2 = lengthdir_x(length, direction);
	var y2 = lengthdir_y(length, direction);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 4A4C451B
	/// @DnDParent : 2214A64A
	/// @DnDArgument : "color" "image_blend"
	draw_set_colour(image_blend & $ffffff);
	var l4A4C451B_0=(image_blend >> 24);
	draw_set_alpha(l4A4C451B_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Line
	/// @DnDVersion : 1
	/// @DnDHash : 659D5CFC
	/// @DnDParent : 2214A64A
	/// @DnDArgument : "x1_relative" "1"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "x2"
	/// @DnDArgument : "x2_relative" "1"
	/// @DnDArgument : "y2" "y2"
	/// @DnDArgument : "y2_relative" "1"
	draw_line(x + 0, y + 0, x + x2, y + y2);

	/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
	/// @DnDVersion : 1.1
	/// @DnDHash : 443835EE
	/// @DnDParent : 2214A64A
	/// @DnDArgument : "x1_relative" "1"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "x2"
	/// @DnDArgument : "x2_relative" "1"
	/// @DnDArgument : "y2" "y2"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "target" "collisionList"
	/// @DnDArgument : "target_temp" "1"
	/// @DnDArgument : "obj" "obj_faction"
	/// @DnDArgument : "aslist" "1"
	/// @DnDSaveInfo : "obj" "obj_faction"
	var l443835EE_0 = ds_list_create();
	var l443835EE_1 = collision_line_list(x + 0, y + 0, x + x2, y + y2, obj_faction, true, 1, l443835EE_0, true);
	var collisionList = l443835EE_0;
	if((l443835EE_1 > 0))
	{
		/// @DnDAction : YoYo Games.Data Structures.List_Count
		/// @DnDVersion : 1
		/// @DnDHash : 3B7218E5
		/// @DnDParent : 443835EE
		/// @DnDArgument : "assignee" "itemCount"
		/// @DnDArgument : "var" "collisionList"
		itemCount = ds_list_size(collisionList);
	
		/// @DnDAction : YoYo Games.Loops.For_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 1250A4BE
		/// @DnDParent : 443835EE
		/// @DnDArgument : "init_temp" "1"
		/// @DnDArgument : "cond" "i < itemCount"
		for(var i = 0; i < itemCount; i += 1) {
			/// @DnDAction : YoYo Games.Data Structures.List_Get_At
			/// @DnDVersion : 1
			/// @DnDHash : 7F286ED3
			/// @DnDParent : 1250A4BE
			/// @DnDArgument : "assignee" "item"
			/// @DnDArgument : "assignee_temp" "1"
			/// @DnDArgument : "var" "collisionList"
			/// @DnDArgument : "index" "i"
			var item = ds_list_find_value(collisionList, i);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1A7488E9
			/// @DnDParent : 1250A4BE
			/// @DnDArgument : "var" "item.immuneToLaser"
			/// @DnDArgument : "value" "false"
			if(item.immuneToLaser == false)
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4A1BCA15
				/// @DnDParent : 1A7488E9
				/// @DnDArgument : "var" "item.faction"
				/// @DnDArgument : "not" "1"
				/// @DnDArgument : "value" "creator.faction"
				if(!(item.faction == creator.faction))
				{
					/// @DnDAction : YoYo Games.Instances.Call_User_Event
					/// @DnDVersion : 1
					/// @DnDHash : 24F6848E
					/// @DnDApplyTo : item
					/// @DnDParent : 4A1BCA15
					with(item) {
					event_user(0);
					}
				}
			}
		}
	}
}