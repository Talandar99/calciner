local item_sounds = require("__base__.prototypes.item_sounds")
data:extend({
	{
		type = "item",
		name = "activated-carbon",
		icon = "__calciner__/graphics/activated-carbon.png",
		fuel_value = "1MJ",
		fuel_category = "chemical",
		subgroup = "raw-material",
		order = "b[chemistry]-f[carbon-activated]",
		inventory_move_sound = item_sounds.resource_inventory_move,
		pick_sound = item_sounds.resource_inventory_pickup,
		drop_sound = item_sounds.resource_inventory_move,
		stack_size = 50,
		weight = 1 * kg,
		--default_import_location = "pelagos",
	},
})
