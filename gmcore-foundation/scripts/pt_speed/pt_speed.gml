/// @desc Shorthand for part_type_speed
/// @param minSpeed
/// @param optionalMaxSpeed
/// @param optionalIncr
/// @param optionalWiggle
function pt_speed() {

	var minSpeed = argument[0];
	var maxSpeed = minSpeed;
	var incr = 0;
	var wiggle = 0;

	if (argument_count > 1) {
		maxSpeed = argument[1];
	}

	if (argument_count > 2) {
	    incr = argument[2];
	}

	if (argument_count > 3) {
	    wiggle = argument[3];
	}

	part_type_speed(global.__part_gen_type, minSpeed, maxSpeed, incr, wiggle);
}
