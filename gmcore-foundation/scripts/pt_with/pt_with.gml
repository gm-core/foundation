/// @desc Set the current particle context, call this before any other pt_ function
/// @param partType
function pt_with(partType) {
	/* @example
	 * var part = part_type_create();
	 * pt_with(part);
	 * pt_direction(100);
	 * pt_speed(2);
	 * ...
	 */
	gml_pragma("forceinline");
	global.__part_gen_type = partType;
}
