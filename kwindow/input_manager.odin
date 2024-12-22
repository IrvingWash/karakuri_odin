package kwindow

import rl "vendor:raylib"

should_close_window :: proc() -> bool {
    return rl.WindowShouldClose()
}
