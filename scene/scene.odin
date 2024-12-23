package scene

import "../components"
import "../entity"

next_entity_id : uint = 0

Scene :: struct {
	entities: [dynamic]entity.Entity,
}

scene_new :: proc() -> Scene {
	return Scene{}
}

scene_create_entity :: proc(scene: ^Scene, bundle: components.ComponentBundle) {
	new_entity := entity.Entity {
		next_entity_id,
		bundle.transform,
		bundle.shape,
		bundle.behavior,
	}

	next_entity_id := 1

	append(&scene.entities, new_entity)
}
