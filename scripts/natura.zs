import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/* Defined Vars */

var stairs = [] as IItemStack[];
for item in <ore:stairWood>.items {
    if item.definition.owner == "natura" {
        stairs+=item;
    }
}
stairs += <natura:colored_grass_stairs_topiary>;
stairs += <natura:colored_grass_stairs_bluegrass>;
stairs += <natura:colored_grass_stairs_autumnal>;

var stair_materials = [] as IIngredient[];
for item in <ore:plankWood>.items {
    if item.definition.owner == "biomesoplenty" {
        stair_materials+=item;
    }
}
stair_materials += <natura:colored_grass:0>;
stair_materials += <natura:colored_grass:1>;
stair_materials += <natura:colored_grass:2>;

/* Recipe Removal */

// All natura crafting tables
recipes.remove(<ore:crafterWood>);

// Stairs
for i in 0 to stairs.length {
    recipes.remove(stairs[i]);
}

/* Recipe Addition */

// Stairs
for i in 0 to stairs.length {
    recipes.addShaped(stairs[i] * 3, [
        [stair_materials[i], null, <ore:craftingToolSaws>],
        [stair_materials[i], stair_materials[i], null],
        [stair_materials[i], stair_materials[i], stair_materials[i]],
    ]);
}

/* JEI Removal */

//All Crafting Tables
mods.jei.JEI.removeAndHide(<ore:crafterWood>);