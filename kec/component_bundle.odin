package kec

ComponentBundle :: struct {
	transform: TransformComponent,
	shape:     Maybe(ShapeComponent),
	behavior:  Maybe(BehaviorComponent),
}
