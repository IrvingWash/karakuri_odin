package kwindow

import "../kutils"
import rl "vendor:raylib"

Renderer :: struct {
	clear_color: rl.Color,
}

renderer_new :: proc(clear_color: kutils.Color) -> Renderer {
	return Renderer{color_to_rl(clear_color)}
}

start_drawing :: proc(renderer: Renderer) {
	rl.BeginDrawing()
	rl.ClearBackground(renderer.clear_color)
}

finish_drawing :: proc(renderer: Renderer) {
	rl.EndDrawing()
}

color_to_rl :: proc(color: kutils.Color) -> rl.Color {
	using color

	return rl.Color{r, g, b, a}
}
