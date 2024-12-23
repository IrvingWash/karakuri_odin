package entity

import "../components"

next_id: uint

Entity :: struct {
	id:                  uint,
	transform_component: components.TransformComponent,
	shape_component:     Maybe(components.ShapeComponent),
	behavior_component:  Maybe(components.BehaviorComponent),
}
