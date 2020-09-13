/// @desc Shorthand for part_type_step
/// @param stepPart
/// @param optionalStepCount
function pt_step() {

	var stepPart = argument[0];
	var stepCount = 1;

	if (argument_count > 1) {
		stepCount = argument[1];
	}

	part_type_step(global.__part_gen_type, stepCount, stepPart);
}
