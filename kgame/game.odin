package kgame

import "../kec"
import "../kutils"
import "../kwindow"
import "../scene"

Game :: struct {
	title:    string,
	renderer: kwindow.Renderer,
	scene:    scene.Scene,
}

game_new :: proc(
	title: string,
	window_width: uint,
	window_height: uint,
	fullscreen: bool,
	clear_color: kutils.Color,
	fps: uint,
) -> Game {
	kwindow.init_window(window_width, window_height, title, fullscreen)
	kwindow.set_target_fps(fps)

	return Game{title, kwindow.renderer_new(clear_color), scene.scene_new()}
}

game_start :: proc(game: Game) {
	for !kwindow.should_close_window() {
		update(game)
		render(game)
	}
}

game_close :: proc(game: Game) {
	kwindow.close_window()
}

game_add_entity :: proc(game: ^Game, bundle: kec.ComponentBundle) {
	scene.scene_create_entity(&game.scene, bundle)
}

@(private)
update :: proc(game: Game) {
	dt := kwindow.get_delta_time() * 10

	commands := kec.Commands{kwindow.is_key_down}

	for &e in game.scene.entities {
		behavior, ok := e.behavior_component.?
		if !ok do continue

		behavior.on_update(&e, dt, commands)
	}
}

@(private)
render :: proc(game: Game) {
	kwindow.start_drawing(game.renderer)

	for &e in game.scene.entities {
		shape, ok := e.shape_component.?
		if !ok do continue

		kwindow.draw_rectangle(
			game.renderer,
			e.transform_component.position,
			shape.size,
			shape.color,
		)
	}

	kwindow.finish_drawing(game.renderer)
}
