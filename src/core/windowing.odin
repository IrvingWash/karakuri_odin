package core

import "core:strings"
import rl "vendor:raylib"

open_window :: proc(width: i32, height: i32, title: string, fullscreen: bool = true) {
	rl.InitWindow(width, height, strings.clone_to_cstring(title))

    if fullscreen {
        rl.ToggleFullscreen()
    }
}

close_window :: proc() {
    rl.CloseWindow()
}
