package canary

import "kgame"
import "kutils"
import "components"
import "kmath"

main :: proc() {
    game := kgame.game_new("Canary", 800, 600, false, kutils.COLOR_BLACK, 60)

    kgame.game_start(game)
    kgame.game_add_entity(&game,components.ComponentBundle{
        transform = components.transform_component_new(kmath.Vector2{500, 300}),
        shape = components.shape_component_new(kmath.Vector2{100, 100}, kutils.COLOR_BLUE),
        behavior = components.BehaviorComponent{
            on_start,
            on_update,
            on_destroy,
        }
    })
    kgame.game_close(game)
}

// Box
on_start :: proc() {}
on_update :: proc(dt: f64) {}
on_destroy :: proc() {}
