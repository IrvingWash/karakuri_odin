package kwindow

import "../kutils"
import rl "vendor:raylib"

should_close_window :: proc() -> bool {
	return rl.WindowShouldClose()
}

is_key_down :: proc(key: kutils.KeyboardKey) -> bool {
	return rl.IsKeyDown(key)
}
