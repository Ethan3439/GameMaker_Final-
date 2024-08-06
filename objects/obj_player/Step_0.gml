/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3220846F
/// @DnDComment : 1 would be pressing right $(13_10)-1 would be pressing left $(13_10)0 would be no input  
/// @DnDArgument : "expr" "keyboard_check(vk_right)- keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"
move_x = keyboard_check(vk_right)- keyboard_check(vk_left);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3D5EEA60
/// @DnDArgument : "expr" "move_x * walk_speed "
/// @DnDArgument : "var" "move_x"
move_x = move_x * walk_speed ;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 63CCA177
/// @DnDComment : if we are on the ground 
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_floor"
/// @DnDSaveInfo : "object" "obj_floor"
var l63CCA177_0 = instance_place(x + 0, y + 2, [obj_floor]);
if ((l63CCA177_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 17292F56
	/// @DnDComment : reset falling speed on movement Y$(13_10)when you landed on the ground  
	/// @DnDParent : 63CCA177
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 51919A35
	/// @DnDParent : 63CCA177
	var l51919A35_0;
	l51919A35_0 = keyboard_check(vk_space);
	if (l51919A35_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4A69A99A
		/// @DnDComment : jump 
		/// @DnDParent : 51919A35
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 26C89C51
/// @DnDComment : if you're not $(13_10)on the ground 
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1467FD79
	/// @DnDComment : if we are falling after a jump 
	/// @DnDParent : 26C89C51
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4F8E4D09
		/// @DnDComment : and gravity 
		/// @DnDParent : 1467FD79
		/// @DnDArgument : "expr" "1 "
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1 ;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 46447AC7
/// @DnDComment : 1st object is $(13_10)object to avoid 
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "obj_floor"
/// @DnDSaveInfo : "object" "obj_floor"
move_and_collide(move_x, move_y, obj_floor,4,0,0,walk_speed,jump_speed);