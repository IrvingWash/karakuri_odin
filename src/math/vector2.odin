package math

Vector2 :: struct {
	x: f64,
	y: f64,
}

vector2_add :: proc {
	vector2_add_modifying,
	vector2_to_added,
}

vector2_subtract :: proc {
    vector2_subtract_modifying,
    vector2_to_subtracted,
}

vector2_scale :: proc {
    vector2_scale_modifying,
    vector2_to_scaled,
    vector2_scale_modifying_by_vector2,
    vector2_to_scaled_by_vector2,
}

vector2_divide :: proc {
    vector2_divide_modifying,
    vector2_to_divided,
    vector2_divide_modifying_by_vector2,
    vector2_to_divided_by_vector2,
}

@(private)
vector2_add_modifying :: proc(self: ^Vector2, rhs: Vector2) {
	self.x += rhs.x
	self.y += rhs.y
}

@(private)
vector2_to_added :: proc(self: Vector2, rhs: Vector2) -> Vector2 {
	return Vector2{self.x + rhs.x, self.y + rhs.y}
}

@(private)
vector2_subtract_modifying :: proc(self: ^Vector2, rhs: Vector2) {
    self.x -= rhs.x
    self.y -= rhs.y
}

@(private)
vector2_to_subtracted :: proc(self: Vector2, rhs: Vector2) -> Vector2 {
    return Vector2{self.x - rhs.x, self.y - rhs.y}
}

@(private)
vector2_scale_modifying :: proc(self: ^Vector2, rhs: f64) {
    self.x *= rhs
    self.y *= rhs
}

@(private)
vector2_to_scaled :: proc(self: Vector2, rhs: f64) -> Vector2 {
    return Vector2{self.x * rhs, self.y * rhs}
}

@(private)
vector2_scale_modifying_by_vector2 :: proc(self: ^Vector2, rhs: Vector2) {
    self.x *= rhs.x
    self.y *= rhs.y
}

@(private)
vector2_to_scaled_by_vector2 :: proc(self: Vector2, rhs: Vector2) -> Vector2 {
    return Vector2{self.x * rhs.x, self.y * rhs.y}
}

@(private)
vector2_divide_modifying :: proc(self: ^Vector2, rhs: f64) {
    self.x /= rhs
    self.y /= rhs
}

@(private)
vector2_to_divided :: proc(self: Vector2, rhs: f64) -> Vector2 {
    return Vector2{self.x / rhs, self.y / rhs}
}

@(private)
vector2_divide_modifying_by_vector2 :: proc(self: ^Vector2, rhs: Vector2) {
    self.x /= rhs.x
    self.y /= rhs.y
}

@(private)
vector2_to_divided_by_vector2 :: proc(self: Vector2, rhs: Vector2) -> Vector2 {
    return Vector2{self.x / rhs.x, self.y / rhs.y}
}
