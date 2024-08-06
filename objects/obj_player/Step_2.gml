/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 77920D65
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "move_y > 0 || move_y < 0 "
/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 557E1787
/// @DnDDisabled : 1
/// @DnDParent : 77920D65
/// @DnDArgument : "spriteind" "spr_player_jump"
/// @DnDSaveInfo : "spriteind" "spr_player_jump"

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 46F5AB82
/// @DnDComment : are you in the air 
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_floor"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "obj_floor"
var l46F5AB82_0 = instance_place(x + 0, y + 2, [obj_floor]);
if (!(l46F5AB82_0 > 0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6407FA20
	/// @DnDParent : 46F5AB82
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_player_jump"
	/// @DnDSaveInfo : "spriteind" "spr_player_jump"
	sprite_index = spr_player_jump;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 65F6E581
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1BF4BF6C
	/// @DnDComment : if moving left 
	/// @DnDParent : 65F6E581
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 00A12A23
		/// @DnDParent : 1BF4BF6C
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_player_walk"
		/// @DnDSaveInfo : "spriteind" "spr_player_walk"
		sprite_index = spr_player_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 7299108A
		/// @DnDComment : flip 
		/// @DnDParent : 1BF4BF6C
		/// @DnDArgument : "xscale" "-1 * abs(image_xscale) "
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = -1 * abs(image_xscale) ;
		image_yscale = image_yscale;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63609529
	/// @DnDComment : if moving right  
	/// @DnDParent : 65F6E581
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(move_x >= 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0A5FC9A5
		/// @DnDParent : 63609529
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_player_walk"
		/// @DnDSaveInfo : "spriteind" "spr_player_walk"
		sprite_index = spr_player_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 58DF958A
		/// @DnDParent : 63609529
		/// @DnDArgument : "xscale" "abs(image_xscale) "
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = abs(image_xscale) ;
		image_yscale = image_yscale;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48F3B567
	/// @DnDParent : 65F6E581
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 4F0ED7E4
		/// @DnDParent : 48F3B567
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_player_idle"
		/// @DnDSaveInfo : "spriteind" "spr_player_idle"
		sprite_index = spr_player_idle;
		image_index += 0;
	}
}