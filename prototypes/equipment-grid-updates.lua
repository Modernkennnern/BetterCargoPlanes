require("prototypes.compatability.Krastorio2_Equipment");

local function AddEquipmentCategories(equipment_category)
	if data.raw["equipment-category"][equipment_category] then
		table.insert(data.raw["equipment-grid"]["Cargo-Plane-Equipment-Grid"].equipment_categories, equipment_category)
		table.insert(data.raw["equipment-grid"]["Better-Cargo-Plane-Equipment-Grid"].equipment_categories, equipment_category)
		table.insert(data.raw["equipment-grid"]["Even-Better-Cargo-Plane-Equipment-Grid"].equipment_categories, equipment_category)
	end
end

if settings.startup["non-combat-mode"].value == false then
	
	AddEquipmentCategories("vehicle");

	if settings.startup["betterCargoPlanes-MilitaryEquipment"].value == true then
	
		if data.raw["equipment-category"]["armoured-vehicle"] then
			AddEquipmentCategories("armoured-vehicle");
		end
	end
end