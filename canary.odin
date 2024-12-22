package canary

import "kgame"
import "kutils"

main :: proc() {
    game := kgame.game_new("Canary", 800, 600, false, kutils.COLOR_BLACK, 60)

    kgame.game_start(game)
    kgame.game_close(game)
}
