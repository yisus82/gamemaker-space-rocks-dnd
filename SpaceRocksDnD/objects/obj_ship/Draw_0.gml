/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 35C10C84
draw_self();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3DBA2A55
/// @DnDArgument : "var" "invincible"
/// @DnDArgument : "value" "true"
if(invincible == true)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1FE30835
	/// @DnDParent : 3DBA2A55
	/// @DnDArgument : "expr" "alarm[0] > 60 or floor(alarm[0]/10) mod 2 == 0"
	if(alarm[0] > 60 or floor(alarm[0]/10) mod 2 == 0)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 0CF9D3F1
		/// @DnDParent : 1FE30835
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "rot_relative" "1"
		/// @DnDArgument : "sprite" "spr_ship_powerups_strip6"
		/// @DnDArgument : "frame" "5"
		/// @DnDArgument : "col" "image_blend"
		/// @DnDSaveInfo : "sprite" "spr_ship_powerups_strip6"
		draw_sprite_ext(spr_ship_powerups_strip6, 5, x + 0, y + 0, 1, 1, image_angle + 0, image_blend & $ffffff, 1);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3730FF9F
/// @DnDArgument : "var" "weapon"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "-1"
if(!(weapon == -1))
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 3E4876AC
	/// @DnDParent : 3730FF9F
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "rot_relative" "1"
	/// @DnDArgument : "sprite" "spr_ship_powerups_strip6"
	/// @DnDArgument : "frame" "weapon"
	/// @DnDArgument : "col" "image_blend"
	/// @DnDSaveInfo : "sprite" "spr_ship_powerups_strip6"
	draw_sprite_ext(spr_ship_powerups_strip6, weapon, x + 0, y + 0, 1, 1, image_angle + 0, image_blend & $ffffff, 1);
}