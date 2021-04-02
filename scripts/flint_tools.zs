import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMap;

//Axe
recipes.addShaped(<contenttweaker:flint_axe_head>, [
    [<minecraft:flint>, <minecraft:flint>],
    [<minecraft:flint>]
]);
var flint_axe = <gregtech:meta_tool:3>.withTag({"GT.ToolStats": {"PrimaryMaterial": "flint", "MaxDurability": 80, "DigSpeed": 6.0f, "AttackDamage": 2.0f, "HarvestLevel": 1}});
recipes.remove(<gregtech:meta_tool:3>);
recipes.addShaped(flint_axe, [
    [<contenttweaker:flint_axe_head>, <minecraft:string>],
    [null, <minecraft:stick>]
]);

//Saw
recipes.addShaped(<contenttweaker:flint_saw_head>, [
    [<minecraft:flint>, <minecraft:flint>],
    [<ore:craftingToolBlades>, <ore:craftingToolHardHammers>]
]);
var flint_saw = <gregtech:meta_tool:5>.withTag({"GT.ToolStats": {"PrimaryMaterial": "flint", "MaxDurability": 80, "DigSpeed": 6.0f, "AttackDamage": 2.0f, "HarvestLevel": 1}});
recipes.addShaped(flint_saw, [
    [<contenttweaker:flint_saw_head>, <minecraft:string>],
    [null, <minecraft:stick>]
]);

//Sword
recipes.addShaped(<contenttweaker:flint_sword_blade>, [
    [<ore:craftingToolHardHammers>, <minecraft:flint>],
    [<ore:craftingToolBlades>, <minecraft:flint>]
]);
var flint_sword = <gregtech:meta_tool:0>.withTag({"GT.ToolStats": {"PrimaryMaterial": "flint", "MaxDurability": 80, "DigSpeed": 6.0f, "AttackDamage": 2.0f, "HarvestLevel": 1}});
recipes.remove(<gregtech:meta_tool:0>);
recipes.addShaped(flint_sword, [
    [<contenttweaker:flint_sword_blade>, <minecraft:string>],
    [null, <minecraft:stick>]
]);

//Hammer
recipes.addShaped(<contenttweaker:flint_hammer_head>, [
    [<minecraft:flint>, <minecraft:flint>],
    [<minecraft:flint>, <minecraft:flint>]
]);
var flint_hammer = <gregtech:meta_tool:6>.withTag({"GT.ToolStats": {"PrimaryMaterial": "flint", "MaxDurability": 80, "DigSpeed": 6.0f, "AttackDamage": 2.0f, "HarvestLevel": 1}});
recipes.addShaped(flint_hammer, [
    [<contenttweaker:flint_hammer_head>, <minecraft:string>],
    [null, <minecraft:stick>]
]);

//Hoe
recipes.addShaped(<contenttweaker:flint_hoe_head>, [
    [<ore:craftingToolBlades>, <ore:craftingToolHardHammers>],
    [<minecraft:flint>, <minecraft:flint>],
]);
var flint_hoe = <gregtech:meta_tool:4>.withTag({"GT.ToolStats": {"PrimaryMaterial": "flint", "MaxDurability": 80, "DigSpeed": 6.0f, "AttackDamage": 2.0f, "HarvestLevel": 1}});
recipes.remove(<gregtech:meta_tool:4>);
recipes.addShaped(flint_hoe, [
    [<contenttweaker:flint_hoe_head>, <minecraft:string>],
    [null, <minecraft:stick>]
]);

//Pickaxe
recipes.addShaped(<contenttweaker:flint_pickaxe_head>, [
    [<minecraft:flint>, <minecraft:flint>, <minecraft:flint>]
]);
var flint_pickaxe = <gregtech:meta_tool:1>.withTag({"GT.ToolStats": {"PrimaryMaterial": "flint", "MaxDurability": 80, "DigSpeed": 6.0f, "AttackDamage": 2.0f, "HarvestLevel": 1}});
recipes.remove(<gregtech:meta_tool:1>);
recipes.addShaped(flint_pickaxe, [
    [<contenttweaker:flint_pickaxe_head>, <minecraft:string>],
    [null, <minecraft:stick>]
]);

//Shovel
recipes.addShaped(<contenttweaker:flint_shovel_head>, [
    [<ore:craftingToolBlades>, <minecraft:flint>],
    [null, <minecraft:flint>]
]);
var flint_shovel = <gregtech:meta_tool:2>.withTag({"GT.ToolStats": {"PrimaryMaterial": "flint", "MaxDurability": 80, "DigSpeed": 6.0f, "AttackDamage": 2.0f, "HarvestLevel": 1}});
recipes.remove(<gregtech:meta_tool:2>);
recipes.addShaped(flint_shovel, [
    [<contenttweaker:flint_shovel_head>, <minecraft:string>],
    [null, <minecraft:stick>]
]);

//Knife
var flint_knife = <gregtech:meta_tool:17>.withTag({"GT.ToolStats": {"PrimaryMaterial": "flint", "MaxDurability": 80, "DigSpeed": 6.0f, "AttackDamage": 2.0f, "HarvestLevel": 1}});
recipes.remove(flint_knife);
recipes.addShaped(flint_knife, [
    [<minecraft:flint>, <minecraft:string>],
    [null, <minecraft:stick>]
]);
