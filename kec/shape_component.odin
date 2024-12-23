package kec

import "../kmath"
import "../kutils"

ShapeComponent :: struct {
	size:  kmath.Vector2,
	color: kutils.Color,
}

shape_component_new :: proc(size: kmath.Vector2, color: kutils.Color) -> ShapeComponent {
	return ShapeComponent{size, color}
}
