package core

import rl "vendor:raylib"

set_target_fps :: proc(fps: i32) {
    rl.SetTargetFPS(fps)
}

get_delta_time :: proc() -> f32 {
    return rl.GetFrameTime()
}

get_time_from_start :: proc() -> f64 {
    return rl.GetTime()
}
