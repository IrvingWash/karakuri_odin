package kec

import "../kutils"

Commands :: struct {
	is_key_down: proc(key: kutils.KeyboardKey) -> bool,
}

OnStart :: distinct proc()
OnUpdate :: distinct proc(entity: ^Entity, dt: f64, commands: Commands)
OnDestroy :: distinct proc()

BehaviorComponent :: struct {
	on_start:   OnStart,
	on_update:  OnUpdate,
	on_destroy: OnDestroy,
}
