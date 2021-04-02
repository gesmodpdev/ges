import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/* Defined Vars */

var stairs = [<tconstruct:mudbrick_stairs>,<tconstruct:firewood_stairs>,<tconstruct:lavawood_stairs>,<tconstruct:seared_stairs_stone>,<tconstruct:seared_stairs_cobble>,<tconstruct:seared_stairs_paver>,<tconstruct:seared_stairs_brick>,<tconstruct:seared_stairs_brick_cracked>,<tconstruct:seared_stairs_brick_fancy>,<tconstruct:seared_stairs_brick_square>,<tconstruct:seared_stairs_road>,<tconstruct:seared_stairs_creeper>,<tconstruct:seared_stairs_brick_triangle>,<tconstruct:seared_stairs_brick_small>,<tconstruct:seared_stairs_tile>,<tconstruct:dried_clay_stairs>,<tconstruct:dried_brick_stairs>,<tconstruct:brownstone_stairs_smooth>,<tconstruct:brownstone_stairs_rough>,<tconstruct:brownstone_stairs_paver>,<tconstruct:brownstone_stairs_brick>,<tconstruct:brownstone_stairs_brick_cracked>,<tconstruct:brownstone_stairs_brick_fancy>,<tconstruct:brownstone_stairs_brick_square>,<tconstruct:brownstone_stairs_road>,<tconstruct:brownstone_stairs_creeper>,<tconstruct:brownstone_stairs_brick_triangle>,<tconstruct:brownstone_stairs_brick_small>,<tconstruct:brownstone_stairs_tile>,] as IItemStack[];
var stair_materials = [<tconstruct:deco_ground>, <tconstruct:firewood:1>, <tconstruct:firewood:0>] as IIngredient[];
var seared_defs = <tconstruct:seared>.definition;
for i in 0 to 12 {
    stair_materials += seared_defs.makeStack(i);
}
stair_materials += <tconstruct:dried_clay:0>;
stair_materials += <tconstruct:dried_clay:1>;
var brownstone_defs = <tconstruct:brownstone>.definition;
for i in 0 to 12 {
    stair_materials += brownstone_defs.makeStack(i);
}

/* Recipe Removal */

// Stairs
for i in 0 to stairs.length {
    recipes.remove(stairs[i]);
}

// Punji Sticks
recipes.remove(<tconstruct:punji>);

/* Recipe Addition */

// Stairs
for i in 0 to stairs.length {
    recipes.addShaped(stairs[i] * 3, [
        [stair_materials[i], null, <ore:craftingToolSaws>],
        [stair_materials[i], stair_materials[i], null],
        [stair_materials[i], stair_materials[i], stair_materials[i]],
    ]);
}

// Punji Sticks
recipes.addShaped(<tconstruct:punji>*2, [
    [<minecraft:reeds>, <minecraft:string>, <minecraft:reeds>],
    [<minecraft:string>, <minecraft:reeds>, <minecraft:string>],
    [<minecraft:reeds>, <minecraft:string>, <minecraft:reeds>],
]);

recipes.addShaped(<tconstruct:punji>*2, [
    [<biomesoplenty:bamboo>, <minecraft:string>, <biomesoplenty:bamboo>],
    [<minecraft:string>, <biomesoplenty:bamboo>, <minecraft:string>],
    [<biomesoplenty:bamboo>, <minecraft:string>, <biomesoplenty:bamboo>],
]);

/* JEI Removal */