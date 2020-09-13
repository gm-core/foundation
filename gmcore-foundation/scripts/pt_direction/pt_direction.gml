/// @desc Shorthand for part_type_direction
/// Note: Pass in PT.Any as the first argument for a default set of 0, 364, 0, 0
/// @param minDir
/// @param optionalMaxDir
/// @param optionalIncr
/// @param optionalWiggle
function pt_direction() {

	var minDir = 0;
	var maxDir = 364;
	var incr = 0;
	var wiggle = 0;

	if (argument[0] != PT.Any) {
	    minDir = argument[0];
	    maxDir = minDir;

		if (argument_count > 1) {
			maxDir = argument[1];
		}
	
	    if (argument_count > 2) {
	        incr = argument[2];
	    }
	    if (argument_count > 3) {
	        wiggle = argument[3];
	    }
	}

	part_type_direction(global.__part_gen_type, minDir, maxDir, incr, wiggle);
}
