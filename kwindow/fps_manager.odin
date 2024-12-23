package kwindow

import rl "vendor:raylib"

set_target_fps :: proc(fps: uint) {
	rl.SetTargetFPS(i32(fps))
}

get_delta_time :: proc() -> f64 {
	return f64(rl.GetFrameTime())
}

get_time_from_start :: proc() -> f64 {
	return rl.GetTime()
}
