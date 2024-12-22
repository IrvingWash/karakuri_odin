package kgame

import "../kutils"
import "../kwindow"

Game :: struct {
	title:    string,
	renderer: kwindow.Renderer,
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

	return Game{title, kwindow.renderer_new(clear_color)}
}

game_start :: proc(game: Game) {
    for !kwindow.should_close_window() {
        kwindow.start_drawing(game.renderer)

        kwindow.finish_drawing(game.renderer)
    }
}

game_close :: proc(game: Game) {
    kwindow.close_window()
}
