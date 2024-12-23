package canary

import "kec"
import "kgame"
import "kmath"
import "kutils"
import "kwindow"

main :: proc() {
	game := kgame.game_new("Canary", 800, 600, false, kutils.COLOR_BLACK, 60)

	kgame.game_add_entity(
		&game,
		kec.ComponentBundle {
			transform = kec.transform_component_new(kmath.Vector2{500, 300}),
			shape = kec.shape_component_new(kmath.Vector2{100, 100}, kutils.COLOR_BLUE),
			behavior = kec.BehaviorComponent{on_start, on_update, on_destroy},
		},
	)

	kgame.game_start(game)

	kgame.game_close(game)
}

// Box
speed :: 50
on_start: kec.OnStart : proc() {}

on_update: kec.OnUpdate : proc(entity: ^kec.Entity, dt: f64, commands: kec.Commands) {
	using commands

	disposition := speed * dt

	if is_key_down(kutils.KeyboardKey.W) {
		entity.transform_component.position.y -= disposition
	}
	if is_key_down(kutils.KeyboardKey.S) {
		entity.transform_component.position.y += disposition
	}
	if is_key_down(kutils.KeyboardKey.A) {
		entity.transform_component.position.x -= disposition
	}
	if is_key_down(kutils.KeyboardKey.D) {
		entity.transform_component.position.x += disposition
	}
}

on_destroy: kec.OnDestroy : proc() {}
