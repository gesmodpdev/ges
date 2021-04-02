import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/* Defined Vars */

var stairs = [<netherex:red_nether_brick_stairs>,<netherex:gloomy_nether_brick_stairs>,<netherex:lively_nether_brick_stairs>,<netherex:fiery_nether_brick_stairs>,<netherex:icy_nether_brick_stairs>,<netherex:basalt_stairs>,<netherex:smooth_basalt_stairs>,<netherex:basalt_brick_stairs>,<netherex:basalt_pillar_stairs>,] as IItemStack[];
var stair_materials = [<minecraft:red_nether_brick>,<netherex:gloomy_nether_brick>,<netherex:lively_nether_brick>,<netherex:fiery_nether_brick>,<netherex:icy_nether_brick>,<netherex:basalt>,<netherex:smooth_basalt>,<netherex:basalt_brick>,<netherex:basalt_pillar>,] as IIngredient[];

/* Removing Recipes */

// Stairs
for i in 0 to stairs.length {
    recipes.remove(stairs[i]);
}

/* Adding Recipes */

// Stairs
for i in 0 to stairs.length {
    recipes.addShaped(stairs[i] * 3, [
        [stair_materials[i], null, <ore:craftingToolSaws>],
        [stair_materials[i], stair_materials[i], null],
        [stair_materials[i], stair_materials[i], stair_materials[i]],
    ]);
}