import crafttweaker.api.event.entity.living.MCLivingSpawnEvent;
import crafttweaker.api.util.MCEquipmentSlotType;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.entity.MCEntity;
import crafttweaker.api.item.IItemStack;
//
    var aoa_ocean_mobs as string[] = [
        "angler",
        "mermage",
        "muncher",
        "neptuno",
        "pincher",
        "sea_viper",
        "coratee"
    ];
    var aoa_overworld_mobs as string[] = [
        "charger",
        "cyclops",
        "ancient_golem",
        "bomb_carrier",
        "bugeye",
        "chimera",
        "chomper",
        "desert_charger",
        "everbeast",
        "fishix",
        "furlion",
        "ghost",
        "goalby",
        "goblin",
        "hag",
        "hill_charger",
        "horndron",
        "ice_giant",
        "leafy_giant",
        "mother_void_walker",
        "muckopede",
        "night_reaper",
        "night_reaper",
        "night_reaper",
        "nightfly",
        "sand_giant",
        "sand_golem",
        "sasquatch",
        "sea_charger",
        "sea_troll",
        "shade",
        "shadow",
        "snow_charger",
        "stone_giant",
        "swamp_charger",
        "tree_spirit",
        "trickster",
        "void_walker",
        "void_walker",
        "void_walker",
        "void_charger",
        "wood_giant",
        "yeti"
    ];
    var aoa_nether_mobs as string[] = [
        "embrake",
        "flamewalker",
        "infernal",
        "little_bam",
        "scrubby",
        "skeletal_cowman"
    ];
    var mobs as string[] = [
        "zombie",
        "skeleton",
        "spider",
        "vindicator",
        "pillager"
    ];
    var mcd_helmet as IItemStack[] = [
        <item:dungeons_gear:archers_helmet>,
        <item:dungeons_gear:arctic_fox_helmet>,
        <item:dungeons_gear:battle_robes_helmet>,
        <item:dungeons_gear:beehive_helmet>,
        <item:dungeons_gear:beenest_helmet>,
        <item:dungeons_gear:cave_crawler_helmet>,
        <item:dungeons_gear:champions_helmet>,
        <item:dungeons_gear:climbing_helmet>,
        <item:dungeons_gear:curious_helmet>,
        <item:dungeons_gear:dark_helmet>,
        <item:dungeons_gear:ember_robes_helmet>,
        <item:dungeons_gear:emerald_helmet>,
        <item:dungeons_gear:evocation_robes_helmet>,
        <item:dungeons_gear:fox_helmet>,
        <item:dungeons_gear:frost_bite_helmet>,
        <item:dungeons_gear:frost_helmet>,
        <item:dungeons_gear:full_metal_helmet>,
        <item:dungeons_gear:gilded_glory_helmet>,
        <item:dungeons_gear:goat_helmet>,
        <item:dungeons_gear:grim_helmet>,
        <item:dungeons_gear:guards_helmet>,
        <item:dungeons_gear:heros_helmet>,
        <item:dungeons_gear:highland_helmet>,
        <item:dungeons_gear:hungry_horror_helmet>,
        <item:dungeons_gear:hunters_helmet>,
        <item:dungeons_gear:mercenary_helmet>,
        <item:dungeons_gear:ocelot_helmet>,
        <item:dungeons_gear:opulent_helmet>,
        <item:dungeons_gear:phantom_helmet>,
        <item:dungeons_gear:plate_helmet>,
        <item:dungeons_gear:reinforced_mail_helmet>,
        <item:dungeons_gear:renegade_helmet>,
        <item:dungeons_gear:rugged_climbing_helmet>,
        <item:dungeons_gear:scale_mail_helmet>,
        <item:dungeons_gear:shadow_walker_helmet>,
        <item:dungeons_gear:snow_helmet>,
        <item:dungeons_gear:soul_helmet>,
        <item:dungeons_gear:souldancer_helmet>,
        <item:dungeons_gear:spelunker_helmet>,
        <item:dungeons_gear:spider_helmet>,
        <item:dungeons_gear:stalwart_helmet>,
        <item:dungeons_gear:thief_helmet>,
        <item:dungeons_gear:titans_shroud_helmet>,
        <item:dungeons_gear:wither_helmet>,
        <item:dungeons_gear:wolf_helmet>
    ];
    var mcd_chestplate as IItemStack[] = [
        <item:dungeons_gear:archers_chestplate>,
        <item:dungeons_gear:arctic_fox_chestplate>,
        <item:dungeons_gear:battle_robes_chestplate>,
        <item:dungeons_gear:beehive_chestplate>,
        <item:dungeons_gear:beenest_chestplate>,
        <item:dungeons_gear:cave_crawler_chestplate>,
        <item:dungeons_gear:champions_chestplate>,
        <item:dungeons_gear:climbing_chestplate>,
        <item:dungeons_gear:curious_chestplate>,
        <item:dungeons_gear:dark_chestplate>,
        <item:dungeons_gear:ember_robes_chestplate>,
        <item:dungeons_gear:emerald_chestplate>,
        <item:dungeons_gear:evocation_robes_chestplate>,
        <item:dungeons_gear:fox_chestplate>,
        <item:dungeons_gear:frost_bite_chestplate>,
        <item:dungeons_gear:frost_chestplate>,
        <item:dungeons_gear:full_metal_chestplate>,
        <item:dungeons_gear:gilded_glory_chestplate>,
        <item:dungeons_gear:goat_chestplate>,
        <item:dungeons_gear:grim_chestplate>,
        <item:dungeons_gear:guards_chestplate>,
        <item:dungeons_gear:heros_chestplate>,
        <item:dungeons_gear:highland_chestplate>,
        <item:dungeons_gear:hungry_horror_chestplate>,
        <item:dungeons_gear:hunters_chestplate>,
        <item:dungeons_gear:mercenary_chestplate>,
        <item:dungeons_gear:ocelot_chestplate>,
        <item:dungeons_gear:opulent_chestplate>,
        <item:dungeons_gear:phantom_chestplate>,
        <item:dungeons_gear:plate_chestplate>,
        <item:dungeons_gear:reinforced_mail_chestplate>,
        <item:dungeons_gear:renegade_chestplate>,
        <item:dungeons_gear:rugged_climbing_chestplate>,
        <item:dungeons_gear:scale_mail_chestplate>,
        <item:dungeons_gear:shadow_walker_chestplate>,
        <item:dungeons_gear:snow_chestplate>,
        <item:dungeons_gear:soul_chestplate>,
        <item:dungeons_gear:souldancer_chestplate>,
        <item:dungeons_gear:spelunker_chestplate>,
        <item:dungeons_gear:spider_chestplate>,
        <item:dungeons_gear:stalwart_chestplate>,
        <item:dungeons_gear:thief_chestplate>,
        <item:dungeons_gear:titans_shroud_chestplate>,
        <item:dungeons_gear:wither_chestplate>,
        <item:dungeons_gear:wolf_chestplate>
    ];
    var mcd_leggings as IItemStack[] = [
        <item:dungeons_gear:archers_leggings>,
        <item:dungeons_gear:arctic_fox_leggings>,
        <item:dungeons_gear:battle_robes_leggings>,
        <item:dungeons_gear:beehive_leggings>,
        <item:dungeons_gear:beenest_leggings>,
        <item:dungeons_gear:cave_crawler_leggings>,
        <item:dungeons_gear:champions_leggings>,
        <item:dungeons_gear:climbing_leggings>,
        <item:dungeons_gear:curious_leggings>,
        <item:dungeons_gear:dark_leggings>,
        <item:dungeons_gear:ember_robes_leggings>,
        <item:dungeons_gear:emerald_leggings>,
        <item:dungeons_gear:evocation_robes_leggings>,
        <item:dungeons_gear:fox_leggings>,
        <item:dungeons_gear:frost_bite_leggings>,
        <item:dungeons_gear:frost_leggings>,
        <item:dungeons_gear:full_metal_leggings>,
        <item:dungeons_gear:gilded_glory_leggings>,
        <item:dungeons_gear:goat_leggings>,
        <item:dungeons_gear:grim_leggings>,
        <item:dungeons_gear:guards_leggings>,
        <item:dungeons_gear:heros_leggings>,
        <item:dungeons_gear:highland_leggings>,
        <item:dungeons_gear:hungry_horror_leggings>,
        <item:dungeons_gear:hunters_leggings>,
        <item:dungeons_gear:mercenary_leggings>,
        <item:dungeons_gear:ocelot_leggings>,
        <item:dungeons_gear:opulent_leggings>,
        <item:dungeons_gear:phantom_leggings>,
        <item:dungeons_gear:plate_leggings>,
        <item:dungeons_gear:reinforced_mail_leggings>,
        <item:dungeons_gear:renegade_leggings>,
        <item:dungeons_gear:rugged_climbing_leggings>,
        <item:dungeons_gear:scale_mail_leggings>,
        <item:dungeons_gear:shadow_walker_leggings>,
        <item:dungeons_gear:snow_leggings>,
        <item:dungeons_gear:soul_leggings>,
        <item:dungeons_gear:souldancer_leggings>,
        <item:dungeons_gear:spelunker_leggings>,
        <item:dungeons_gear:spider_leggings>,
        <item:dungeons_gear:stalwart_leggings>,
        <item:dungeons_gear:thief_leggings>,
        <item:dungeons_gear:titans_shroud_leggings>,
        <item:dungeons_gear:wither_leggings>,
        <item:dungeons_gear:wolf_leggings>
    ];
    var mcd_boots as IItemStack[] = [
        <item:dungeons_gear:archers_boots>,
        <item:dungeons_gear:arctic_fox_boots>,
        <item:dungeons_gear:battle_robes_boots>,
        <item:dungeons_gear:beehive_boots>,
        <item:dungeons_gear:beenest_boots>,
        <item:dungeons_gear:cave_crawler_boots>,
        <item:dungeons_gear:champions_boots>,
        <item:dungeons_gear:climbing_boots>,
        <item:dungeons_gear:curious_boots>,
        <item:dungeons_gear:dark_boots>,
        <item:dungeons_gear:ember_robes_boots>,
        <item:dungeons_gear:emerald_boots>,
        <item:dungeons_gear:evocation_robes_boots>,
        <item:dungeons_gear:fox_boots>,
        <item:dungeons_gear:frost_bite_boots>,
        <item:dungeons_gear:frost_boots>,
        <item:dungeons_gear:full_metal_boots>,
        <item:dungeons_gear:gilded_glory_boots>,
        <item:dungeons_gear:goat_boots>,
        <item:dungeons_gear:grim_boots>,
        <item:dungeons_gear:guards_boots>,
        <item:dungeons_gear:heros_boots>,
        <item:dungeons_gear:highland_boots>,
        <item:dungeons_gear:hungry_horror_boots>,
        <item:dungeons_gear:hunters_boots>,
        <item:dungeons_gear:mercenary_boots>,
        <item:dungeons_gear:ocelot_boots>,
        <item:dungeons_gear:opulent_boots>,
        <item:dungeons_gear:phantom_boots>,
        <item:dungeons_gear:plate_boots>,
        <item:dungeons_gear:reinforced_mail_boots>,
        <item:dungeons_gear:renegade_boots>,
        <item:dungeons_gear:rugged_climbing_boots>,
        <item:dungeons_gear:scale_mail_boots>,
        <item:dungeons_gear:shadow_walker_boots>,
        <item:dungeons_gear:snow_boots>,
        <item:dungeons_gear:soul_boots>,
        <item:dungeons_gear:souldancer_boots>,
        <item:dungeons_gear:spelunker_boots>,
        <item:dungeons_gear:spider_boots>,
        <item:dungeons_gear:stalwart_boots>,
        <item:dungeons_gear:thief_boots>,
        <item:dungeons_gear:titans_shroud_boots>,
        <item:dungeons_gear:wither_boots>,
        <item:dungeons_gear:wolf_boots>
    ];
    var aoa_helmet as IItemStack[] = [
        <item:aoa3:alacrity_helmet>,
        <item:aoa3:amethind_helmet>,
        <item:aoa3:archaic_helmet>,
        <item:aoa3:baron_helmet>,
        <item:aoa3:battleborn_helmet>,
        <item:aoa3:biogenic_helmet>,
        <item:aoa3:boreic_helmet>,
        <item:aoa3:candy_helmet>,
        <item:aoa3:commander_helmet>,
        <item:aoa3:crystallis_helmet>,
        <item:aoa3:elecanyte_helmet>,
        <item:aoa3:embrodium_helmet>,
        <item:aoa3:exoplate_helmet>,
        <item:aoa3:explosive_helmet>,
        <item:aoa3:fungal_helmet>,
        <item:aoa3:ghastly_helmet>,
        <item:aoa3:ghoulish_helmet>,
        <item:aoa3:hazmat_helmet>,
        <item:aoa3:hydrangic_helmet>,
        <item:aoa3:hydroplate_helmet>,
        <item:aoa3:ice_helmet>,
        <item:aoa3:infernal_helmet>,
        <item:aoa3:knight_helmet>,
        <item:aoa3:lunar_helmet>,
        <item:aoa3:lyndamyte_helmet>,
        <item:aoa3:lyonic_helmet>,
        <item:aoa3:mercurial_helmet>,
        <item:aoa3:necro_helmet>,
        <item:aoa3:nethengeic_helmet>,
        <item:aoa3:nightmare_helmet>,
        <item:aoa3:omni_helmet>,
        <item:aoa3:phantasm_helmet>,
        <item:aoa3:poison_helmet>,
        <item:aoa3:predatious_helmet>,
        <item:aoa3:primordial_helmet>,
        <item:aoa3:purity_helmet>,
        <item:aoa3:rockbone_helmet>,
        <item:aoa3:rosidian_helmet>,
        <item:aoa3:runic_helmet>,
        <item:aoa3:sharpshot_helmet>,
        <item:aoa3:skeletal_helmet>,
        <item:aoa3:spaceking_helmet>,
        <item:aoa3:speed_helmet>,
        <item:aoa3:subterranean_helmet>,
        <item:aoa3:utopian_helmet>,
        <item:aoa3:void_helmet>,
        <item:aoa3:weaken_helmet>,
        <item:aoa3:wither_helmet>,
        <item:aoa3:zargonite_helmet>
    ];
    var aoa_chestplate as IItemStack[] = [
        <item:aoa3:alacrity_chestplate>,
        <item:aoa3:amethind_chestplate>,
        <item:aoa3:archaic_chestplate>,
        <item:aoa3:baron_chestplate>,
        <item:aoa3:battleborn_chestplate>,
        <item:aoa3:biogenic_chestplate>,
        <item:aoa3:boreic_chestplate>,
        <item:aoa3:candy_chestplate>,
        <item:aoa3:commander_chestplate>,
        <item:aoa3:crystallis_chestplate>,
        <item:aoa3:elecanyte_chestplate>,
        <item:aoa3:embrodium_chestplate>,
        <item:aoa3:exoplate_chestplate>,
        <item:aoa3:explosive_chestplate>,
        <item:aoa3:fungal_chestplate>,
        <item:aoa3:ghastly_chestplate>,
        <item:aoa3:ghoulish_chestplate>,
        <item:aoa3:hazmat_chestplate>,
        <item:aoa3:hydrangic_chestplate>,
        <item:aoa3:hydroplate_chestplate>,
        <item:aoa3:ice_chestplate>,
        <item:aoa3:infernal_chestplate>,
        <item:aoa3:knight_chestplate>,
        <item:aoa3:lunar_chestplate>,
        <item:aoa3:lyndamyte_chestplate>,
        <item:aoa3:lyonic_chestplate>,
        <item:aoa3:mercurial_chestplate>,
        <item:aoa3:necro_chestplate>,
        <item:aoa3:nethengeic_chestplate>,
        <item:aoa3:nightmare_chestplate>,
        <item:aoa3:omni_chestplate>,
        <item:aoa3:phantasm_chestplate>,
        <item:aoa3:poison_chestplate>,
        <item:aoa3:predatious_chestplate>,
        <item:aoa3:primordial_chestplate>,
        <item:aoa3:purity_chestplate>,
        <item:aoa3:rockbone_chestplate>,
        <item:aoa3:rosidian_chestplate>,
        <item:aoa3:runic_chestplate>,
        <item:aoa3:sharpshot_chestplate>,
        <item:aoa3:skeletal_chestplate>,
        <item:aoa3:spaceking_chestplate>,
        <item:aoa3:speed_chestplate>,
        <item:aoa3:subterranean_chestplate>,
        <item:aoa3:utopian_chestplate>,
        <item:aoa3:void_chestplate>,
        <item:aoa3:weaken_chestplate>,
        <item:aoa3:wither_chestplate>,
        <item:aoa3:zargonite_chestplate>
    ];
    var aoa_leggings as IItemStack[] = [
        <item:aoa3:alacrity_legs>,
        <item:aoa3:amethind_legs>,
        <item:aoa3:archaic_legs>,
        <item:aoa3:baron_legs>,
        <item:aoa3:battleborn_legs>,
        <item:aoa3:biogenic_legs>,
        <item:aoa3:boreic_legs>,
        <item:aoa3:candy_legs>,
        <item:aoa3:commander_legs>,
        <item:aoa3:crystallis_legs>,
        <item:aoa3:elecanyte_legs>,
        <item:aoa3:embrodium_legs>,
        <item:aoa3:exoplate_legs>,
        <item:aoa3:explosive_legs>,
        <item:aoa3:fungal_legs>,
        <item:aoa3:ghastly_legs>,
        <item:aoa3:ghoulish_legs>,
        <item:aoa3:hazmat_legs>,
        <item:aoa3:hydrangic_legs>,
        <item:aoa3:hydroplate_legs>,
        <item:aoa3:ice_legs>,
        <item:aoa3:infernal_legs>,
        <item:aoa3:knight_legs>,
        <item:aoa3:lunar_legs>,
        <item:aoa3:lyndamyte_legs>,
        <item:aoa3:lyonic_legs>,
        <item:aoa3:mercurial_legs>,
        <item:aoa3:necro_legs>,
        <item:aoa3:nethengeic_legs>,
        <item:aoa3:nightmare_legs>,
        <item:aoa3:omni_legs>,
        <item:aoa3:phantasm_legs>,
        <item:aoa3:poison_legs>,
        <item:aoa3:predatious_legs>,
        <item:aoa3:primordial_legs>,
        <item:aoa3:purity_legs>,
        <item:aoa3:rockbone_legs>,
        <item:aoa3:rosidian_legs>,
        <item:aoa3:runic_legs>,
        <item:aoa3:sharpshot_legs>,
        <item:aoa3:skeletal_legs>,
        <item:aoa3:spaceking_legs>,
        <item:aoa3:speed_legs>,
        <item:aoa3:subterranean_legs>,
        <item:aoa3:utopian_legs>,
        <item:aoa3:void_legs>,
        <item:aoa3:weaken_legs>,
        <item:aoa3:wither_legs>,
        <item:aoa3:zargonite_legs>
    ];
    var aoa_boots as IItemStack[] = [
        <item:aoa3:alacrity_boots>,
        <item:aoa3:amethind_boots>,
        <item:aoa3:archaic_boots>,
        <item:aoa3:baron_boots>,
        <item:aoa3:battleborn_boots>,
        <item:aoa3:biogenic_boots>,
        <item:aoa3:boreic_boots>,
        <item:aoa3:candy_boots>,
        <item:aoa3:commander_boots>,
        <item:aoa3:crystallis_boots>,
        <item:aoa3:elecanyte_boots>,
        <item:aoa3:embrodium_boots>,
        <item:aoa3:exoplate_boots>,
        <item:aoa3:explosive_boots>,
        <item:aoa3:fungal_boots>,
        <item:aoa3:ghastly_boots>,
        <item:aoa3:ghoulish_boots>,
        <item:aoa3:hazmat_boots>,
        <item:aoa3:hydrangic_boots>,
        <item:aoa3:hydroplate_boots>,
        <item:aoa3:ice_boots>,
        <item:aoa3:infernal_boots>,
        <item:aoa3:knight_boots>,
        <item:aoa3:lunar_boots>,
        <item:aoa3:lyndamyte_boots>,
        <item:aoa3:lyonic_boots>,
        <item:aoa3:mercurial_boots>,
        <item:aoa3:necro_boots>,
        <item:aoa3:nethengeic_boots>,
        <item:aoa3:nightmare_boots>,
        <item:aoa3:omni_boots>,
        <item:aoa3:phantasm_boots>,
        <item:aoa3:poison_boots>,
        <item:aoa3:predatious_boots>,
        <item:aoa3:primordial_boots>,
        <item:aoa3:purity_boots>,
        <item:aoa3:rockbone_boots>,
        <item:aoa3:rosidian_boots>,
        <item:aoa3:runic_boots>,
        <item:aoa3:sharpshot_boots>,
        <item:aoa3:skeletal_boots>,
        <item:aoa3:spaceking_boots>,
        <item:aoa3:speed_boots>,
        <item:aoa3:subterranean_boots>,
        <item:aoa3:utopian_boots>,
        <item:aoa3:void_boots>,
        <item:aoa3:weaken_boots>,
        <item:aoa3:wither_boots>,
        <item:aoa3:zargonite_boots>
    ];
    var backpacks as IItemStack[] = [
        <item:sophisticatedbackpacks:iron_backpack>,
        <item:sophisticatedbackpacks:gold_backpack>,
        <item:sophisticatedbackpacks:diamond_backpack>,
        <item:sophisticatedbackpacks:netherite_backpack>
    ];
    var head = MCEquipmentSlotType.HEAD;
    var chest = MCEquipmentSlotType.CHEST;
    var legs = MCEquipmentSlotType.LEGS;
    var feet = MCEquipmentSlotType.FEET;

CTEventManager.register<MCLivingSpawnEvent>((event) => {
    var entity = event.entityLiving;
    var world = entity.world;
    if (world.remote) return;
    var server = world.asServerWorld().server;
    var dim = world.dimension;
    var type = entity.type.commandString;
    var pos = entity.position;
    var x = pos.x;
    var y = pos.y;
    var z = pos.z;
    var random = world.random;
    var mcd = random.nextInt(0, 44);
    var aoa3 = random.nextInt(0, 48);
    var ages = random.nextInt(160000, 320000);
    var classification = entity.type.classification.commandString;
    var randomixe = x + random.nextInt(-3, 3);
    var randomize = z + random.nextInt(-3, 3);
    if (entity.removeTag("living_spawned")) {
        entity.addTag("living_spawned");
        return;
    }
    entity.addTag("living_spawned");
    if ("iceandfire" in type && "dragon" in type) entity.setHealth(entity.getMaxHealth());
    if ("monster" in classification && "whis:witherstorm" in dim) {
        var baby_check = entity.data.getAt("IsBaby");
        if (baby_check == null || "1" in baby_check.asString()) return;
        if (random.nextInt(0, 100) >= 65) entity.setItemStackToSlot(head, mcd_helmet[mcd]);
        if (random.nextInt(0, 100) >= 85) entity.setItemStackToSlot(chest, mcd_chestplate[mcd]);
        if (random.nextInt(0, 100) >= 75) entity.setItemStackToSlot(legs, mcd_leggings[mcd]);
        if (random.nextInt(0, 100) >= 65) entity.setItemStackToSlot(feet, mcd_boots[mcd]);
    }
    if ("minecraft:villager" in type && random.nextInt(0, 100) > 81) entity.setItemStackToSlot(chest, backpacks[random.nextInt(0,3)]);
    if ("overworld" in dim || "whis:witherstorm" in dim || "nether" in dim || "dimdungeons" in dim) {
        if ("monster" in classification && "minecraft" in type) {
            if (random.nextInt(0, 100) >= 96 && !("whis:witherstorm" in dim)) {
                entity.setItemStackToSlot(head, aoa_helmet[aoa3]);
                entity.setItemStackToSlot(chest, aoa_chestplate[aoa3]);
                entity.setItemStackToSlot(legs, aoa_leggings[aoa3]);
                entity.setItemStackToSlot(feet, aoa_boots[aoa3]);
            }
            if (random.nextInt(0, 100) >= 50) {
                if ("guardian" in type) {
                    entity.remove();
                    server.executeCommand("exeucte in " + dim + " run summon aoa3:" + aoa_ocean_mobs[random.nextInt(0, 6)] + " " + x + " " + y + " " + z, true);
                }
            } else {
                if (("zombie" in type || "skeleton" in type || "creeper" in type || "spider" in type || "enderman" in type || "witch" in type) && "overworld" in dim) {
                    entity.remove();
                    server.executeCommand("execute in " + dim + " run summon aoa3:" + aoa_overworld_mobs[random.nextInt(0, 42)] + " " + x + " " + y + " " + z, true);
                    return;
                }
                if ("nether" in dim && ("piglin" in type || "enderman" in type || "hoglin" in type)) {
                    entity.remove();
                    server.executeCommand("execute in " + dim + " run summon aoa3:" + aoa_nether_mobs[random.nextInt(0, 5)] + " " + x + " " + y + " " + z, true);
                }
            }
        }
    }
});