package core

import "../math"
import rl "vendor:raylib"

Renderer :: struct {
	clear_color: rl.Color,
}

renderer_new :: proc(clear_color: Color) -> Renderer {
	return Renderer{color_to_rl(clear_color)}
}

start_drawing :: proc(renderer: Renderer) {
	rl.BeginDrawing()
	rl.ClearBackground(renderer.clear_color)
}

finish_drawing :: proc(renderer: Renderer) {
	rl.EndDrawing()
}

draw_rectangle :: proc(position: math.Vector2, size: math.Vector2, color: Color) {
	rl.DrawRectangle(
		cast(i32)position.x,
		cast(i32)position.y,
		cast(i32)size.x,
		cast(i32)size.y,
		color_to_rl(color),
	)
}

@(private)
color_to_rl :: proc(color: Color) -> rl.Color {
	return rl.Color{color.r, color.g, color.b, color.a}
}
