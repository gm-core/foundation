/// @desc Shorthand for part_type_orientation
/// Note: Pass in PT.Any for a default set of 0, 364, 0, 0, false
/// Note: Pass in PT.Relative to set relative to direction
/// @param minDir
/// @param maxDir
/// @param optionalIncr
/// @param optionalWiggle
function pt_orientation() {

	var minDir = 0;
	var maxDir = 364;
	var incr = 0;
	var wiggle = 0;
	var relative = false;

	if (argument[0] != PT.Any && argument[0] != PT.Relative) {
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

	if (argument[0] == PT.Relative) {
	    relative = true;
	}

	part_type_orientation(global.__part_gen_type, minDir, maxDir, incr, wiggle, relative);
}
