package components

OnStart :: distinct proc()
OnUpdate :: distinct proc(dt: f64)
OnDestroy :: distinct proc()

BehaviorComponent :: struct {
	on_start:   OnStart,
	on_update:  OnUpdate,
	on_destroy: OnDestroy,
}
