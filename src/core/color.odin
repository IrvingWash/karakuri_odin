package core

Color :: struct {
	r: u8,
	g: u8,
	b: u8,
	a: u8,
}

RED :: Color{255, 0, 0, 255}
GREEN :: Color{0, 255, 0, 255}
BLUE :: Color{0, 0, 255, 255}
BLACK :: Color{0, 0, 0, 255}
WHITE :: Color{255, 255, 255, 255}

color_new :: proc(r: u8, g: u8, b: u8, a: u8 = 255) -> Color {
	return Color{r, g, b, a}
}
