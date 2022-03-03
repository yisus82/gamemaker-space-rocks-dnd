/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2629DC61
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 3
/// @DnDArgument : "funcName" "create_bullet"
/// @DnDArgument : "arg" "bulletDirection"
/// @DnDArgument : "arg_1" "bulletSpeed"
/// @DnDArgument : "arg_2" "weapontType=-1"
function create_bullet(bulletDirection, bulletSpeed, weapontType=-1) 
{
	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 2A1D987D
	/// @DnDParent : 2629DC61
	/// @DnDArgument : "expr" "weapontType"
	var l2A1D987D_0 = weapontType;
	switch(l2A1D987D_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 1D1F40D5
		/// @DnDParent : 2A1D987D
		case 0:
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 3E5278C3
			/// @DnDParent : 1D1F40D5
			/// @DnDArgument : "soundid" "snd_zap"
			/// @DnDSaveInfo : "soundid" "snd_zap"
			audio_play_sound(snd_zap, 0, 0);
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 70137D16
			/// @DnDParent : 1D1F40D5
			/// @DnDArgument : "var" "sep"
			/// @DnDArgument : "value" "12"
			var sep = 12;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 04E498FA
			/// @DnDParent : 1D1F40D5
			/// @DnDArgument : "xpos" "lengthdir_x(sep, bulletDirection - 90)"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "lengthdir_x(sep, bulletDirection - 90)"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newBullet"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDSaveInfo : "objectid" "obj_bullet"
			var newBullet = instance_create_layer(x + lengthdir_x(sep, bulletDirection - 90), y + lengthdir_x(sep, bulletDirection - 90), "Instances", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 1581DFE9
			/// @DnDInput : 6
			/// @DnDParent : 1D1F40D5
			/// @DnDArgument : "script" "initialize_bullet"
			/// @DnDArgument : "arg" "bulletDirection"
			/// @DnDArgument : "arg_1" "bulletSpeed"
			/// @DnDArgument : "arg_2" "faction"
			/// @DnDArgument : "arg_3" "image_blend"
			/// @DnDArgument : "arg_4" "id"
			/// @DnDArgument : "arg_5" "newBullet"
			/// @DnDSaveInfo : "script" "initialize_bullet"
			script_execute(initialize_bullet, bulletDirection, bulletSpeed, faction, image_blend, id, newBullet);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6699C72E
			/// @DnDParent : 1D1F40D5
			/// @DnDArgument : "xpos" "lengthdir_x(sep, bulletDirection + 90)"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "lengthdir_y(sep, bulletDirection + 90)"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newBullet"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDSaveInfo : "objectid" "obj_bullet"
			var newBullet = instance_create_layer(x + lengthdir_x(sep, bulletDirection + 90), y + lengthdir_y(sep, bulletDirection + 90), "Instances", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 5708D29A
			/// @DnDInput : 6
			/// @DnDParent : 1D1F40D5
			/// @DnDArgument : "script" "initialize_bullet"
			/// @DnDArgument : "arg" "bulletDirection"
			/// @DnDArgument : "arg_1" "bulletSpeed"
			/// @DnDArgument : "arg_2" "faction"
			/// @DnDArgument : "arg_3" "image_blend"
			/// @DnDArgument : "arg_4" "id"
			/// @DnDArgument : "arg_5" "newBullet"
			/// @DnDSaveInfo : "script" "initialize_bullet"
			script_execute(initialize_bullet, bulletDirection, bulletSpeed, faction, image_blend, id, newBullet);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 58E2BB75
		/// @DnDParent : 2A1D987D
		/// @DnDArgument : "const" "1"
		case 1:
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 54D72648
			/// @DnDParent : 58E2BB75
			/// @DnDArgument : "soundid" "snd_zap"
			/// @DnDSaveInfo : "soundid" "snd_zap"
			audio_play_sound(snd_zap, 0, 0);
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 681228E9
			/// @DnDParent : 58E2BB75
			/// @DnDArgument : "var" "sep"
			/// @DnDArgument : "value" "12"
			var sep = 12;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 07B09F6B
			/// @DnDParent : 58E2BB75
			/// @DnDArgument : "xpos" "lengthdir_x(sep, bulletDirection - 90)"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "lengthdir_x(sep, bulletDirection - 90)"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newBullet"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDSaveInfo : "objectid" "obj_bullet"
			var newBullet = instance_create_layer(x + lengthdir_x(sep, bulletDirection - 90), y + lengthdir_x(sep, bulletDirection - 90), "Instances", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 02185CEF
			/// @DnDInput : 6
			/// @DnDParent : 58E2BB75
			/// @DnDArgument : "script" "initialize_bullet"
			/// @DnDArgument : "arg" "bulletDirection"
			/// @DnDArgument : "arg_1" "bulletSpeed"
			/// @DnDArgument : "arg_2" "faction"
			/// @DnDArgument : "arg_3" "image_blend"
			/// @DnDArgument : "arg_4" "id"
			/// @DnDArgument : "arg_5" "newBullet"
			/// @DnDSaveInfo : "script" "initialize_bullet"
			script_execute(initialize_bullet, bulletDirection, bulletSpeed, faction, image_blend, id, newBullet);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6F514461
			/// @DnDParent : 58E2BB75
			/// @DnDArgument : "xpos" "lengthdir_x(sep, bulletDirection + 90)"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "lengthdir_y(sep, bulletDirection + 90)"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newBullet"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDSaveInfo : "objectid" "obj_bullet"
			var newBullet = instance_create_layer(x + lengthdir_x(sep, bulletDirection + 90), y + lengthdir_y(sep, bulletDirection + 90), "Instances", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 6E89A09C
			/// @DnDInput : 6
			/// @DnDParent : 58E2BB75
			/// @DnDArgument : "script" "initialize_bullet"
			/// @DnDArgument : "arg" "bulletDirection"
			/// @DnDArgument : "arg_1" "bulletSpeed"
			/// @DnDArgument : "arg_2" "faction"
			/// @DnDArgument : "arg_3" "image_blend"
			/// @DnDArgument : "arg_4" "id"
			/// @DnDArgument : "arg_5" "newBullet"
			/// @DnDSaveInfo : "script" "initialize_bullet"
			script_execute(initialize_bullet, bulletDirection, bulletSpeed, faction, image_blend, id, newBullet);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1975DC12
			/// @DnDParent : 58E2BB75
			/// @DnDArgument : "xpos" "lengthdir_x(sep, bulletDirection)"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "lengthdir_y(sep, bulletDirection)"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newBullet"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDSaveInfo : "objectid" "obj_bullet"
			var newBullet = instance_create_layer(x + lengthdir_x(sep, bulletDirection), y + lengthdir_y(sep, bulletDirection), "Instances", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 71F7589F
			/// @DnDInput : 6
			/// @DnDParent : 58E2BB75
			/// @DnDArgument : "script" "initialize_bullet"
			/// @DnDArgument : "arg" "bulletDirection"
			/// @DnDArgument : "arg_1" "bulletSpeed"
			/// @DnDArgument : "arg_2" "faction"
			/// @DnDArgument : "arg_3" "image_blend"
			/// @DnDArgument : "arg_4" "id"
			/// @DnDArgument : "arg_5" "newBullet"
			/// @DnDSaveInfo : "script" "initialize_bullet"
			script_execute(initialize_bullet, bulletDirection, bulletSpeed, faction, image_blend, id, newBullet);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 5D3749E7
		/// @DnDParent : 2A1D987D
		/// @DnDArgument : "const" "2"
		case 2:
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 700CC987
			/// @DnDParent : 5D3749E7
			/// @DnDArgument : "soundid" "snd_zap"
			/// @DnDSaveInfo : "soundid" "snd_zap"
			audio_play_sound(snd_zap, 0, 0);
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 07ED87BC
			/// @DnDParent : 5D3749E7
			/// @DnDArgument : "var" "sep"
			/// @DnDArgument : "value" "7"
			var sep = 7;
		
			/// @DnDAction : YoYo Games.Loops.For_Loop
			/// @DnDVersion : 1
			/// @DnDHash : 58A5307E
			/// @DnDParent : 5D3749E7
			/// @DnDArgument : "init_temp" "1"
			/// @DnDArgument : "cond" "i < 4"
			for(var i = 0; i < 4; i += 1) {
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3921219A
				/// @DnDParent : 58A5307E
				/// @DnDArgument : "var" "bulletAngle"
				/// @DnDArgument : "value" "bulletDirection + i * 90"
				var bulletAngle = bulletDirection + i * 90;
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 38523A6D
				/// @DnDParent : 58A5307E
				/// @DnDArgument : "xpos" "lengthdir_x(sep, bulletAngle)"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "lengthdir_x(sep, bulletAngle)"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "newBullet"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "objectid" "obj_bullet"
				/// @DnDSaveInfo : "objectid" "obj_bullet"
				var newBullet = instance_create_layer(x + lengthdir_x(sep, bulletAngle), y + lengthdir_x(sep, bulletAngle), "Instances", obj_bullet);
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 1B9A4851
				/// @DnDInput : 6
				/// @DnDParent : 58A5307E
				/// @DnDArgument : "script" "initialize_bullet"
				/// @DnDArgument : "arg" "bulletAngle"
				/// @DnDArgument : "arg_1" "bulletSpeed"
				/// @DnDArgument : "arg_2" "faction"
				/// @DnDArgument : "arg_3" "image_blend"
				/// @DnDArgument : "arg_4" "id"
				/// @DnDArgument : "arg_5" "newBullet"
				/// @DnDSaveInfo : "script" "initialize_bullet"
				script_execute(initialize_bullet, bulletAngle, bulletSpeed, faction, image_blend, id, newBullet);
			}
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 72869DE4
		/// @DnDParent : 2A1D987D
		/// @DnDArgument : "const" "3"
		case 3:
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 34A02196
			/// @DnDParent : 72869DE4
			/// @DnDArgument : "soundid" "snd_zap"
			/// @DnDSaveInfo : "soundid" "snd_zap"
			audio_play_sound(snd_zap, 0, 0);
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5375B391
			/// @DnDParent : 72869DE4
			/// @DnDArgument : "var" "sep"
			/// @DnDArgument : "value" "7"
			var sep = 7;
		
			/// @DnDAction : YoYo Games.Loops.For_Loop
			/// @DnDVersion : 1
			/// @DnDHash : 1BC89ADA
			/// @DnDParent : 72869DE4
			/// @DnDArgument : "init_temp" "1"
			/// @DnDArgument : "cond" "i < 8"
			for(var i = 0; i < 8; i += 1) {
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 49803FD6
				/// @DnDParent : 1BC89ADA
				/// @DnDArgument : "var" "bulletAngle"
				/// @DnDArgument : "value" "bulletDirection + i * 45"
				var bulletAngle = bulletDirection + i * 45;
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 1F91BA20
				/// @DnDParent : 1BC89ADA
				/// @DnDArgument : "xpos" "lengthdir_x(sep, bulletAngle)"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "lengthdir_x(sep, bulletAngle)"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "newBullet"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "objectid" "obj_bullet"
				/// @DnDSaveInfo : "objectid" "obj_bullet"
				var newBullet = instance_create_layer(x + lengthdir_x(sep, bulletAngle), y + lengthdir_x(sep, bulletAngle), "Instances", obj_bullet);
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 6CA2FFCF
				/// @DnDInput : 6
				/// @DnDParent : 1BC89ADA
				/// @DnDArgument : "script" "initialize_bullet"
				/// @DnDArgument : "arg" "bulletAngle"
				/// @DnDArgument : "arg_1" "bulletSpeed"
				/// @DnDArgument : "arg_2" "faction"
				/// @DnDArgument : "arg_3" "image_blend"
				/// @DnDArgument : "arg_4" "id"
				/// @DnDArgument : "arg_5" "newBullet"
				/// @DnDSaveInfo : "script" "initialize_bullet"
				script_execute(initialize_bullet, bulletAngle, bulletSpeed, faction, image_blend, id, newBullet);
			}
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 27D4E182
		/// @DnDParent : 2A1D987D
		/// @DnDArgument : "const" "4"
		case 4:
		
			break;
	
		/// @DnDAction : YoYo Games.Switch.Default
		/// @DnDVersion : 1
		/// @DnDHash : 6072669F
		/// @DnDParent : 2A1D987D
		default:
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 2B4E7927
			/// @DnDParent : 6072669F
			/// @DnDArgument : "soundid" "snd_zap"
			/// @DnDSaveInfo : "soundid" "snd_zap"
			audio_play_sound(snd_zap, 0, 0);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 67C0959D
			/// @DnDParent : 6072669F
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newBullet"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDSaveInfo : "objectid" "obj_bullet"
			var newBullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 33A05485
			/// @DnDInput : 6
			/// @DnDParent : 6072669F
			/// @DnDArgument : "script" "initialize_bullet"
			/// @DnDArgument : "arg" "bulletDirection"
			/// @DnDArgument : "arg_1" "bulletSpeed"
			/// @DnDArgument : "arg_2" "faction"
			/// @DnDArgument : "arg_3" "image_blend"
			/// @DnDArgument : "arg_4" "id"
			/// @DnDArgument : "arg_5" "newBullet"
			/// @DnDSaveInfo : "script" "initialize_bullet"
			script_execute(initialize_bullet, bulletDirection, bulletSpeed, faction, image_blend, id, newBullet);
			break;
	}
}