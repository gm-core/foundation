/// @desc Shorthand for part_type_alpha
/// @param alpha1
/// @param optionalAlpha2
/// @param optionalAlpha3
function pt_alpha() {

	if (argument_count == 1) {
	    part_type_alpha1(global.__part_gen_type, argument[0]);
	} else if (argument_count == 2) {
	    part_type_alpha2(global.__part_gen_type, argument[0], argument[1]);
	} else if (argument_count == 3) {
	    part_type_alpha3(global.__part_gen_type, argument[0], argument[1], argument[2]);
	}


}
