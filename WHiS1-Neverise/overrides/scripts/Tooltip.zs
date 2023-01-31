import crafttweaker.api.util.text.MCTextComponent as MCTextComponent;
import crafttweaker.api.item.IItemStack;

var vulcanes as IItemStack[] = [
    <item:aoa3:vulcane>,
    <item:aoa3:battle_vulcane>,
    <item:aoa3:equality_vulcane>,
    <item:aoa3:fire_vulcane>,
    <item:aoa3:impairment_vulcane>,
    <item:aoa3:poison_vulcane>,
    <item:aoa3:power_vulcane>,
    <item:aoa3:wither_vulcane>
];
var spaceking as IItemStack[] = [
    <item:aoa3:spaceking_helmet>,
    <item:aoa3:spaceking_chestplate>,
    <item:aoa3:spaceking_legs>,
    <item:aoa3:spaceking_boots>
];
var rosidian as IItemStack[] = [
    <item:aoa3:rosidian_helmet>,
    <item:aoa3:rosidian_chestplate>,
    <item:aoa3:rosidian_legs>,
    <item:aoa3:rosidian_boots>
];
var for_storm as IItemStack[] = [
    <item:mcsaforge:golden_goliath_boots>,
    <item:mcsaforge:golden_goliath_circuitry_helmet>,
    <item:mcsaforge:golden_goliath_circuitry_chestplate>,
    <item:mcsaforge:golden_goliath_circuitry_leggings>,
    <item:mcsaforge:golden_goliath_circuitry_boots>,
    <item:mcsaforge:ivor_helmet>,
    <item:mcsaforge:ivor_chestplate>,
    <item:mcsaforge:ivor_leggings>,
    <item:mcsaforge:ivor_boots>,
    <item:mcsaforge:champion_petra_helmet>,
    <item:mcsaforge:champion_petra_chestplate>,
    <item:mcsaforge:champion_petra_leggings>,
    <item:mcsaforge:champion_petra_boots>,
    <item:mcsaforge:dragonsbane_helmet>,
    <item:mcsaforge:dragonsbane_chestplate>,
    <item:mcsaforge:dragonsbane_leggings>,
    <item:mcsaforge:dragonsbane_boots>,
    <item:mcsaforge:ellegaard_helmet>,
    <item:mcsaforge:ellegaard_chestplate>,
    <item:mcsaforge:ellegaard_leggings>,
    <item:mcsaforge:ellegaard_boots>,
    <item:mcsaforge:ender_defender_helmet>,
    <item:mcsaforge:ender_defender_chestplate>,
    <item:mcsaforge:ender_defender_leggings>,
    <item:mcsaforge:ender_defender_boots>,
    <item:mcsaforge:enderman_soren_helmet>,
    <item:mcsaforge:enderman_soren_chestplate>,
    <item:mcsaforge:enderman_soren_leggings>,
    <item:mcsaforge:enderman_soren_boots>,
    <item:mcsaforge:gabriel_helmet>,
    <item:mcsaforge:gabriel_chestplate>,
    <item:mcsaforge:gabriel_leggings>,
    <item:mcsaforge:gabriel_boots>,
    <item:mcsaforge:golden_goliath_helmet>,
    <item:mcsaforge:golden_goliath_chestplate>,
    <item:mcsaforge:golden_goliath_leggings>,
    <item:mcsaforge:adamantium_impervium_boots>,
    <item:mcsaforge:adamantium_impervium_leggings>,
    <item:mcsaforge:adamantium_impervium_chestplate>,
    <item:mcsaforge:adamantium_impervium_helmet>,
    <item:mcsaforge:shield_of_infinity_boots>,
    <item:mcsaforge:soren_helmet>,
    <item:mcsaforge:soren_chestplate>,
    <item:mcsaforge:soren_leggings>,
    <item:mcsaforge:soren_boots>,
    <item:mcsaforge:star_shield_helmet>,
    <item:mcsaforge:star_shield_chestplate>,
    <item:mcsaforge:star_shield_leggings>,
    <item:mcsaforge:star_shield_boots>,
    <item:mcsaforge:magnus_helmet>,
    <item:mcsaforge:magnus_chestplate>,
    <item:mcsaforge:magnus_leggings>,
    <item:mcsaforge:magnus_boots>,
    <item:mcsaforge:ninja_ivor_helmet>,
    <item:mcsaforge:ninja_ivor_chestplate>,
    <item:mcsaforge:ninja_ivor_leggings>,
    <item:mcsaforge:ninja_ivor_boots>,
    <item:mcsaforge:olivia_helmet>,
    <item:mcsaforge:olivia_chestplate>,
    <item:mcsaforge:olivia_leggings>,
    <item:mcsaforge:olivia_boots>,
    <item:mcsaforge:petra_helmet>,
    <item:mcsaforge:petra_chestplate>,
    <item:mcsaforge:petra_leggings>,
    <item:mcsaforge:petra_boots>,
    <item:mcsaforge:prismarine_soldier_helmet>,
    <item:mcsaforge:prismarine_soldier_chestplate>,
    <item:mcsaforge:prismarine_soldier_leggings>,
    <item:mcsaforge:prismarine_soldier_boots>,
    <item:mcsaforge:redstone_riot_helmet>,
    <item:mcsaforge:redstone_riot_chestplate>,
    <item:mcsaforge:redstone_riot_leggings>,
    <item:mcsaforge:redstone_riot_boots>,
    <item:mcsaforge:shield_of_infinity_helmet>,
    <item:mcsaforge:shield_of_infinity_chestplate>,
    <item:mcsaforge:shield_of_infinity_leggings>,
    <item:mcsaforge:lukas_boots>,
    <item:mcsaforge:lukas_leggings>,
    <item:mcsaforge:lukas_chestplate>,
    <item:mcsaforge:lukas_helmet>,
    <item:mcsaforge:swordbreaker_helmet>,
    <item:mcsaforge:swordbreaker_chestplate>,
    <item:mcsaforge:swordbreaker_leggings>,
    <item:mcsaforge:swordbreaker_boots>,
    <item:mcsaforge:tim_helmet>,
    <item:mcsaforge:tim_chestplate>,
    <item:mcsaforge:tim_leggings>,
    <item:mcsaforge:tim_boots>,
    <item:witherstormmod:command_block_axe>,
    <item:witherstormmod:command_block_sword>,
    <item:gunswithoutroses:iron_gun>,
    <item:gunswithoutroses:gold_gun>,
    <item:gunswithoutroses:diamond_shotgun>,
    <item:gunswithoutroses:diamond_sniper>,
    <item:gunswithoutroses:diamond_gatling>,
    <item:dungeons_gear:axe>,
    <item:dungeons_gear:gold_axe>,
    <item:dungeons_gear:firebrand>,
    <item:dungeons_gear:highland_axe>,
    <item:dungeons_gear:double_axe>,
    <item:dungeons_gear:cursed_axe>,
    <item:dungeons_gear:whirlwind>,
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
    <item:dungeons_gear:venom_glaive>,
    <item:dungeons_gear:bonebow>,
    <item:dungeons_gear:twin_bow>,
    <item:dungeons_gear:haunted_bow>,
    <item:dungeons_gear:soul_bow>,
    <item:dungeons_gear:bow_of_lost_souls>,
    <item:dungeons_gear:nocturnal_bow>,
    <item:dungeons_gear:shivering_bow>,
    <item:dungeons_gear:power_bow>,
    <item:dungeons_gear:elite_power_bow>,
    <item:dungeons_gear:sabrewing>,
    <item:dungeons_gear:longbow>,
    <item:dungeons_gear:guardian_bow>,
    <item:dungeons_gear:red_snake>,
    <item:dungeons_gear:hunting_bow>,
    <item:dungeons_gear:hunters_promise>,
    <item:dungeons_gear:masters_bow>,
    <item:dungeons_gear:ancient_bow>,
    <item:dungeons_gear:shortbow>,
    <item:dungeons_gear:mechanical_shortbow>,
    <item:dungeons_gear:purple_storm>,
    <item:dungeons_gear:love_spell_bow>,
    <item:dungeons_gear:trickbow>,
    <item:dungeons_gear:the_green_menace>,
    <item:dungeons_gear:the_pink_scoundrel>,
    <item:dungeons_gear:sugar_rush>,
    <item:dungeons_gear:snow_bow>,
    <item:dungeons_gear:winters_touch>,
    <item:dungeons_gear:wind_bow>,
    <item:dungeons_gear:burst_gale_bow>,
    <item:dungeons_gear:echo_of_the_valley>,
    <item:dungeons_gear:rapid_crossbow>,
    <item:dungeons_gear:butterfly_crossbow>,
    <item:dungeons_gear:auto_crossbow>,
    <item:dungeons_gear:azure_seeker>,
    <item:dungeons_gear:the_slicer>,
    <item:dungeons_gear:heavy_crossbow>,
    <item:dungeons_gear:doom_crossbow>,
    <item:dungeons_gear:slayer_crossbow>,
    <item:dungeons_gear:soul_crossbow>,
    <item:dungeons_gear:feral_soul_crossbow>,
    <item:dungeons_gear:voidcaller>,
    <item:dungeons_gear:scatter_crossbow>,
    <item:dungeons_gear:harp_crossbow>,
    <item:dungeons_gear:lightning_harp_crossbow>,
    <item:dungeons_gear:exploding_crossbow>,
    <item:dungeons_gear:firebolt_thrower>,
    <item:dungeons_gear:imploding_crossbow>,
    <item:dungeons_gear:burst_crossbow>,
    <item:dungeons_gear:corrupted_crossbow>,
    <item:dungeons_gear:soul_hunter_crossbow>,
    <item:dungeons_gear:dual_crossbow>,
    <item:dungeons_gear:baby_crossbow>,
    <item:dungeons_gear:harpoon_crossbow>,
    <item:dungeons_gear:nautical_crossbow>
];
var dragonsteel_armor as IItemStack[] = [
    <item:iceandfire:dragonsteel_lightning_helmet>,
    <item:iceandfire:dragonsteel_lightning_chestplate>,
    <item:iceandfire:dragonsteel_lightning_leggings>,
    <item:iceandfire:dragonsteel_lightning_boots>,
    <item:iceandfire:dragonsteel_ice_helmet>,
    <item:iceandfire:dragonsteel_ice_chestplate>,
    <item:iceandfire:dragonsteel_ice_leggings>,
    <item:iceandfire:dragonsteel_ice_boots>,
    <item:iceandfire:dragonsteel_fire_helmet>,
    <item:iceandfire:dragonsteel_fire_chestplate>,
    <item:iceandfire:dragonsteel_fire_leggings>,
    <item:iceandfire:dragonsteel_fire_boots>
];
for dragon in 0 .. dragonsteel_armor.length {
    tooltip(dragonsteel_armor[dragon], "info.whis.dragonsteel_armor.1");
    tooltip(dragonsteel_armor[dragon], "info.whis.dragonsteel_armor.2");
}
for i in 0 .. vulcanes.length {
    tooltipS(vulcanes[i], "info.whis.vulcane");
}
for sk in 0 .. spaceking.length {
    tooltip(spaceking[sk], "item.aoa3.spaceking_armour.desc.1");
    tooltip(spaceking[sk], "item.aoa3.spaceking_armour.desc.2");
}
for rose in 0 .. rosidian.length {
    tooltip(rosidian[rose], "item.aoa3.rosidian_armour.desc.1");
    tooltip(rosidian[rose], "item.aoa3.rosidian_armour.desc.2");
}
for storm in 0 .. for_storm.length {
    tooltip(for_storm[storm], "info.whis.for_storm");
}

var items as IItemStack[] = [
    <item:aoa3:charging_table>,
    <item:aoa3:alacrity_bow>,
    <item:relics:squire_bag>,
    <item:witherstormmod:formidibomb>,
    <item:aoa3:nowhere_portal>,
    <item:lootgames:puzzle_master>,
    <item:witherstormmod:command_block_book>,
    <item:minecraft:paper>.withTag({Mark: 1}),
    <item:bagofyurting:bag_of_yurting>,
    <item:minecraft:chorus_fruit>,
    <item:dimdungeons:item_portal_key>
]; 
var texts as string[] = [
    "info.whis.charging_table",
    "info.whis.alacrity_bow",
    "info.whis.squire_bag",
    "info.whis.formidibomb",
    "info.whis.nowhere_portal",
    "info.whis.puzzle_master",
    "info.whis.command_block_book",
    "info.whis.ba_bt_paper",
    "info.whis.bagofyurting",
    "info.whis.chorus_fruit",
    "info.whis.item_portal_key"
];

for misc in 0 .. items.length {
    tooltip(items[misc], texts[misc]);
}

var itemsS as IItemStack[] = [
    <item:minecraft:paper>.withTag({Lead: 1 as int}),
    <item:minecraft:paper>.withTag({Lead: 2 as int}),
    <item:aoa3:fertilised_farmland>,
    <item:recall:item_recall>
];
var textsS as string[] = [
    "lead.whis.paper.1",
    "lead.whis.paper.2",
    "info.whis.fertilised_farmland",
    "info.whis.recaller"
];
for miscS in 0 .. itemsS.length {
    tooltipS(itemsS[miscS], textsS[miscS]);
}

var relic as stdlib.List<IItemStack> = loadedMods.getMod("relics").items;

for loot in 0 .. relic.length {
    tooltipS(relic[loot], "info.whis.relics");
}