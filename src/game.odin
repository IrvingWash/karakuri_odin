package karakuri

import "core"

Game :: struct {
	title:         string,
	window_width:  i32,
	window_height: i32,
	fullscreen:    bool,
	renderer:      core.Renderer,
}

game_new :: proc(
	title: string,
	window_width: i32,
	window_height: i32,
	color: core.Color,
	fullscreen: bool,
) -> Game {
	return Game{title, window_width, window_height, fullscreen, core.renderer_new(color)}
}

game_start :: proc(game: Game) {
	core.open_window(game.window_width, game.window_height, game.title, game.fullscreen)
}

game_close :: proc(game: Game) {
    core.close_window()
}
