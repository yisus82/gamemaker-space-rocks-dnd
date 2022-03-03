/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 65289DEA
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 6
/// @DnDArgument : "funcName" "initialize_bullet"
/// @DnDArgument : "arg" "bulletDirection"
/// @DnDArgument : "arg_1" "bulletSpeed"
/// @DnDArgument : "arg_2" "bulletFaction"
/// @DnDArgument : "arg_3" "bullet_image_blend"
/// @DnDArgument : "arg_4" "bulletCreator"
/// @DnDArgument : "arg_5" "newBullet"
function initialize_bullet(bulletDirection, bulletSpeed, bulletFaction, bullet_image_blend, bulletCreator, newBullet) 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 64D511E7
	/// @DnDInput : 5
	/// @DnDApplyTo : newBullet
	/// @DnDParent : 65289DEA
	/// @DnDArgument : "expr" "bulletDirection"
	/// @DnDArgument : "expr_1" "bulletSpeed"
	/// @DnDArgument : "expr_2" "bulletFaction"
	/// @DnDArgument : "expr_3" "bullet_image_blend"
	/// @DnDArgument : "expr_4" "bulletCreator"
	/// @DnDArgument : "var" "direction"
	/// @DnDArgument : "var_1" "speed"
	/// @DnDArgument : "var_2" "faction"
	/// @DnDArgument : "var_3" "image_blend"
	/// @DnDArgument : "var_4" "creator"
	with(newBullet) {
	direction = bulletDirection;
	speed = bulletSpeed;
	faction = bulletFaction;
	image_blend = bullet_image_blend;
	creator = bulletCreator;
	
	}
}