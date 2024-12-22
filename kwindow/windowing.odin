package kwindow

import "core:strings"
import rl "vendor:raylib"
import "../kmath"

init_window :: proc(width: uint, height: uint, title: string, fullscreen: bool = true) {
	using strings

	rl.InitWindow(i32(width), i32(height), clone_to_cstring(title))

    if fullscreen {
        rl.ToggleFullscreen()
    }
}

get_size :: proc() -> kmath.Vector2 {
    return kmath.Vector2{
        f64(rl.GetScreenWidth()),
        f64(rl.GetScreenHeight()),
    }
}

close_window :: proc() {
    rl.CloseWindow()
}
