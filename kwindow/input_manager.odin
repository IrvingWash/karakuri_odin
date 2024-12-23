package kwindow

import rl "vendor:raylib"
import "../kutils"

should_close_window :: proc() -> bool {
	return rl.WindowShouldClose()
}

is_key_down :: proc(key: kutils.KeyboardKey) -> bool {
	return rl.IsKeyDown(key)
}
