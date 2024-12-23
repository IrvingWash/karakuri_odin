package kec

Entity :: struct {
	id:                  uint,
	transform_component: TransformComponent,
	shape_component:     Maybe(ShapeComponent),
	behavior_component:  Maybe(BehaviorComponent),
}
