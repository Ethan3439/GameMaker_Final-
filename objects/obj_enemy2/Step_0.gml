/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 73A2FC1A
/// @DnDComment : if we are on the ground
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_floor2"
/// @DnDSaveInfo : "object" "obj_floor2"
var l73A2FC1A_0 = instance_place(x + 0, y + 2, [obj_floor2]);
if ((l73A2FC1A_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E3313E8
	/// @DnDComment : reset falling speed on movement Y$(13_10)when you landed on the ground
	/// @DnDParent : 73A2FC1A
	/// @DnDArgument : "var" "move_y "
	move_y  = 0;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 339356AA
	/// @DnDComment : Is there a floor next to the enemy)$(13_10)Then jump over it!$(13_10)$(13_10)Use the sign of move_x (-1 or 1) $(13_10)to check the direction we are $(13_10)currently moving in (accounts for $(13_10)left as -1 or right as 1)
	/// @DnDParent : 73A2FC1A
	/// @DnDArgument : "x" "x + (25 * sign(move_x))"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_floor2"
	/// @DnDSaveInfo : "object" "obj_floor2"
	var l339356AA_0 = instance_place(x + (25 * sign(move_x)), y + 0, [obj_floor2]);
	if ((l339356AA_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 280FF8F2
		/// @DnDComment : jump
		/// @DnDParent : 339356AA
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 3EEBD321
	/// @DnDComment : Is there a floor next to the enemy)$(13_10)Then jump over it!$(13_10)$(13_10)Use the sign of move_x (-1 or 1) $(13_10)to check the direction we are $(13_10)currently moving in (accounts for $(13_10)left as -1 or right as 1)
	/// @DnDParent : 73A2FC1A
	/// @DnDArgument : "x" "x + (30 * sign(move_x))"
	/// @DnDArgument : "y" "y + 50 "
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_floor2"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_floor2"
	var l3EEBD321_0 = instance_place(x + (30 * sign(move_x)), y + y + 50 , [obj_floor2]);
	if (!(l3EEBD321_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6E3461E0
		/// @DnDComment : jump
		/// @DnDParent : 3EEBD321
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7E95B2F8
		/// @DnDComment : flips movement
		/// @DnDParent : 3EEBD321
		/// @DnDArgument : "expr" "move_x * -1"
		/// @DnDArgument : "var" "move_x"
		move_x = move_x * -1;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 572A5982
/// @DnDComment : if your not on the ground
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5709EB53
	/// @DnDComment : if we are falling after a jump
	/// @DnDParent : 572A5982
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5FAB7577
		/// @DnDComment : and gravity
		/// @DnDParent : 5709EB53
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 1758D3CB
/// @DnDComment : 1st object is $(13_10)object to avoid
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "obj_floor2"
/// @DnDSaveInfo : "object" "obj_floor2"
move_and_collide(move_x, move_y, obj_floor2,4,0,0,walk_speed,jump_speed);