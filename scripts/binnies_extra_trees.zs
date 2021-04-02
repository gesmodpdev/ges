import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/* Defined Vars */

var stairs = [] as IItemStack[];
for item in <ore:stairWood>.items {
    if item.definition.owner == "extratrees" {
        stairs+=item;
    }
}

var stair_materials = [] as IItemStack[];
for item in <ore:plankWood>.items {
    if item.definition.owner == "extratrees" {
        stair_materials+=item;
    }
}

/* Removing Recipes */

// Stairs
for i in 0 to stairs.length {
    recipes.remove(stairs[i]);
}

/* Adding Recipes */

//Stairs
for i in 0 to stairs.length {
    recipes.addShaped(stairs[i] * 3, [
        [stair_materials[i], null, <ore:craftingToolSaws>],
        [stair_materials[i], stair_materials[i], null],
        [stair_materials[i], stair_materials[i], stair_materials[i]],
    ]);
}