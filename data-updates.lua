require("prototypes.data-update-compats")

local electric_furnace = data.raw["furnace"]["electric-furnace"] or data.raw["assembling-machine"]["electric-furnace"]
local crafting_categories = table.deepcopy(electric_furnace.crafting_categories)
table.insert(crafting_categories, "smelting")
table.insert(crafting_categories, "calcining")
if mods["space-exploration"] then
	table.insert(crafting_categories, "kiln")
end
data.raw["assembling-machine"]["calciner"].crafting_categories = crafting_categories
