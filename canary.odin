package canary

import "core"
import "karakuri"

main :: proc() {
	my_game := karakuri.game_new(
		title = "Canary",
		window_width = 800,
		window_height = 600,
		color = core.BLACK,
		fullscreen = false,
	)

    karakuri.game_start(my_game)

    karakuri.game_close(my_game)
}
