/// @desc Shorthand for part_type_death
/// @param deathPart
/// @param optionalDeathCount
function pt_death() {

	var deathPart = argument[0];
	var deathCount = 1;

	if (argument_count > 1) {
		deathCount = argument[1];
	}

	part_type_death(global.__part_gen_type, deathCount, deathPart);
}
