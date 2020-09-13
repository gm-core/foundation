/// @desc Shorthand for part_type_color
/// @param color1
/// @param optionalColor2
/// @param optionalColor3
function pt_color() {
	if (argument_count == 1) {
	    part_type_color1(global.__part_gen_type, argument[0]);
	} else if (argument_count == 2) {
	    part_type_color2(global.__part_gen_type, argument[0], argument[1]);
	} else if (argument_count == 3) {
	    part_type_color3(global.__part_gen_type, argument[0], argument[1], argument[2]);
	}
}
