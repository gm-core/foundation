/// @desc Shorthand for part_type_life
/// @param minLife
/// @param optionalMaxLife
function pt_life() {

	var minLife = argument[0];
	var maxLife = argument[0];

	if (argument_count > 1) {
	    maxLife = argument[1];
	}

	part_type_life(global.__part_gen_type, minLife, maxLife);
}
