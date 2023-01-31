import crafttweaker.api.SmithingManager;
import crafttweaker.api.item.IItemStack;

var all as IItemStack[] = [
    <item:paraglider:paraglider>,
    <item:paraglider:deku_leaf>,
    <item:relics:amphibian_boot>,
    <item:relics:out_runner>,
    <item:relics:ice_breaker>,
    <item:relics:enders_hand>,
    <item:relics:magma_walker>,
    <item:relics:drowned_belt>,
    <item:relics:rage_glove>,
    <item:relics:hunter_belt>,
    <item:relics:ice_skates>,
    <item:witherstormmod:command_block_sword>,
    <item:witherstormmod:command_block_axe>,
    <item:witherstormmod:command_block_pickaxe>,
    <item:witherstormmod:command_block_hoe>,
    <item:witherstormmod:command_block_shovel>,
    <item:aoa3:nowhere_realmstone>,
    <item:sophisticatedbackpacks:crafting_upgrade>,
    <item:aoa3:gold_trophy>,
    <item:aoa3:ornate_trophy>,
    <item:relics:runic_anvil>,
    <item:relics:pedestal>,
    <item:relics:runic_altar>,
    <item:relics:bloody_lectern>,
    <item:dimdungeons:block_portal_keyhole>,
    <item:dimdungeons:block_gilded_portal>,
    <item:patchouli:guide_book>.withTag({"patchouli:book": "dimdungeons:guide_book"})
];
var swords as IItemStack[] = [
    <item:dungeons_gear:tempest_knife>,
    <item:dungeons_gear:resolute_tempest_knife>,
    <item:dungeons_gear:chill_gale_knife>,
    <item:dungeons_gear:rapier>,
    <item:dungeons_gear:bee_stinger>,
    <item:dungeons_gear:freezing_foil>,
    <item:dungeons_gear:cutlass>,
    <item:dungeons_gear:dancers_sword>,
    <item:dungeons_gear:nameless_blade>,
    <item:dungeons_gear:sword>,
    <item:dungeons_gear:stone_sword>,
    <item:dungeons_gear:gold_sword>,
    <item:dungeons_gear:diamond_sword>,
    <item:dungeons_gear:hawkbrand>,
    <item:dungeons_gear:sinister_sword>,
    <item:dungeons_gear:katana>,
    <item:dungeons_gear:dark_katana>,
    <item:dungeons_gear:masters_katana>,
    <item:dungeons_gear:soul_knife>,
    <item:dungeons_gear:eternal_knife>,
    <item:dungeons_gear:truthseeker>,
    <item:dungeons_gear:claymore>,
    <item:dungeons_gear:broadsword>,
    <item:dungeons_gear:heartstealer>,
    <item:dungeons_gear:frost_slayer>,
    <item:dungeons_gear:fortune_spear>,
    <item:dungeons_gear:glaive>,
    <item:dungeons_gear:grave_bane>,
    <item:dungeons_gear:venom_glaive>
];
var axes as IItemStack[] = [
    <item:dungeons_gear:axe>,
    <item:dungeons_gear:gold_axe>,
    <item:dungeons_gear:firebrand>,
    <item:dungeons_gear:highland_axe>,
    <item:dungeons_gear:double_axe>,
    <item:dungeons_gear:cursed_axe>,
    <item:dungeons_gear:whirlwind>
]; 
//
    var trophy = <item:aoa3:trophy>;
    var gold_trophy = <item:aoa3:gold_trophy>;
    var book = <item:witherstormmod:command_block_book>; 
    var pearl = <item:kubejs:ender_pearl_fragment>;
    var uncrafter = loadedMods.isModLoaded("c" + "o" + "r" + "a" + "i" + "l" + "_" + "r" + "e" + "c" + "y" + "c" + "l" + "e" + "r");
//
for i in 0 .. all.length {
    recipes.removeRecipe(all[i]);
}
for j in 0 .. swords.length {
    smithing.addRecipe("command_sword_from_" + swords[j].registryName.path, <item:witherstormmod:command_block_sword>, swords[j], book);
}
for k in 0 .. axes.length { 
    smithing.addRecipe("command_axe_from_" + axes[k].registryName.path, <item:witherstormmod:command_block_axe>, axes[k], book);
}

craftingTable.addShaped("gold_trophy", gold_trophy, [
    [trophy, trophy],
    [trophy, trophy]
]);
craftingTable.addShaped("ornate_trophy", <item:aoa3:ornate_trophy>, [
    [gold_trophy, gold_trophy],
    [gold_trophy, gold_trophy]
]);
if (uncrafter) recipes.removeAll();
craftingTable.addShaped("ender_pearl", <item:minecraft:ender_pearl>, [
    [pearl, pearl],
    [pearl, pearl]
]);
craftingTable.addShapeless("ender_pearl_fragment", pearl * 4, [<item:minecraft:ender_pearl>]);