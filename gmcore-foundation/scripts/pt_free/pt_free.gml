/// @desc Shorthand for part_type_destroy()
/// @param {Particle} The particle type to destroy
function pt_free(part) {
	gml_pragma("forceinline");
	part_type_destroy(part);
}
