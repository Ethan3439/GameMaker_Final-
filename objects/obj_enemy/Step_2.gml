/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0F8AD56E
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "move_y > 0 || move_y < 0 "
/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 0BB0B63A
/// @DnDDisabled : 1
/// @DnDParent : 0F8AD56E
/// @DnDArgument : "spriteind" "spr_player_jump"
/// @DnDSaveInfo : "spriteind" "spr_player_jump"

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 183857A7
/// @DnDComment : are you in the air
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_floor"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "obj_floor"
var l183857A7_0 = instance_place(x + 0, y + 2, [obj_floor]);
if (!(l183857A7_0 > 0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0EF95AA9
	/// @DnDParent : 183857A7
	sprite_index = noone;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7A32266E
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7DCF461E
	/// @DnDComment : if moving left
	/// @DnDParent : 7A32266E
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 71C230A9
		/// @DnDParent : 7DCF461E
		sprite_index = noone;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 715D9987
		/// @DnDParent : 7DCF461E
		/// @DnDArgument : "xscale" "abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = abs(image_xscale);
		image_yscale = image_yscale;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48563DA4
	/// @DnDComment : if moving right
	/// @DnDParent : 7A32266E
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(move_x >= 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 66B16398
		/// @DnDParent : 48563DA4
		/// @DnDArgument : "imageind_relative" "1"
		sprite_index = noone;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 4C7E9725
		/// @DnDParent : 48563DA4
		/// @DnDArgument : "xscale" "-1 * abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = -1 * abs(image_xscale);
		image_yscale = image_yscale;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5EE86985
	/// @DnDParent : 7A32266E
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 575B2628
		/// @DnDParent : 5EE86985
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy"
		/// @DnDSaveInfo : "spriteind" "spr_enemy"
		sprite_index = spr_enemy;
		image_index += 0;
	}
}