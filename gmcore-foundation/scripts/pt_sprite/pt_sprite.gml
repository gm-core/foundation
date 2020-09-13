/// @desc shorthand for part_type_sprite
/// @param sprite
/// @param optionalAnimate
/// @param optionalStretch
/// @param optionalRandom
function pt_sprite() {

	var animate = false;
	var stretch = false;
	var rand = false;

	if (argument_count > 1) {
	    animate = argument[1];
	}

	if (argument_count > 2) {
	    stretch = argument[2];
	}

	if (argument_count > 3) {
	    rand = argument[3];
	}

	part_type_sprite(global.__part_gen_type, argument[0], animate, stretch, rand);
}
