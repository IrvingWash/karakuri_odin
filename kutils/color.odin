package kutils

import rl "vendor:raylib"

Color :: struct {
	r: u8,
	g: u8,
	b: u8,
	a: u8,
}

COLOR_RED :: Color{255, 0, 0, 255}
COLOR_GREEN :: Color{0, 255, 0, 255}
COLOR_BLUE :: Color{0, 0, 255, 255}
COLOR_BLACK :: Color{0, 0, 0, 255}
COLOR_WHITE :: Color{255, 255, 255, 255}

color_new :: proc(r: u8, g: u8, b: u8, a: u8 = 255) -> Color {
	return Color{r, g, b, a}
}
