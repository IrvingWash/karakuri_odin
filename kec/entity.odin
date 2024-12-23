package kec

next_id: uint

Entity :: struct {
	id:                  uint,
	transform_component: TransformComponent,
	shape_component:     Maybe(ShapeComponent),
	behavior_component:  Maybe(BehaviorComponent),
}
