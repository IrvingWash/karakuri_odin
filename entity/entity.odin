package entity

import "../components"

next_id: uint

Entity :: struct {
	id:                  uint,
	transform_component: components.TransformComponent,
	shape_component:     Maybe(components.ShapeComponent),
}

entity_new :: proc(
	transform: components.TransformComponent,
	shape: Maybe(components.ShapeComponent),
) -> Entity {
	result := Entity{next_id, transform, shape}

    next_id += 1

    return result
}
