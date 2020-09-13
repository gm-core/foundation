/// @desc shorthand for part_type_shape
/// @param {Constant} shape  The particle shape to use
function pt_shape(shape) {
	gml_pragma("forceinline");
	part_type_shape(global.__part_gen_type, shape);
}
