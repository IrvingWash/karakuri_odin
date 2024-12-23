package components

import "../kmath"

TransformComponent :: struct {
	position: kmath.Vector2,
	scale:    kmath.Vector2,
	rotation: f64,
}

transform_component_new :: proc(
	position: kmath.Vector2 = kmath.Vector2{0, 0},
	scale: kmath.Vector2 = kmath.Vector2{1, 1},
	rotation: f64 = 0,
) -> TransformComponent {
	return TransformComponent{position, scale, rotation}
}
