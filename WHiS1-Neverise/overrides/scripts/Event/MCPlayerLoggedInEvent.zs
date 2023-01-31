import crafttweaker.api.event.entity.player.MCPlayerLoggedInEvent;
import crafttweaker.api.util.MCEquipmentSlotType;
import crafttweaker.api.events.CTEventManager;

CTEventManager.register<MCPlayerLoggedInEvent>(event => {
    var player = event.player;
    var world = player.world;
    if (world.remote) return;
    var server = world.asServerWorld().server;
    if (player.removeTag("logged")) {
        player.addTag("logged");
        return;
    }
    player.addTag("logged");
    player.addGameStage("logged");
    player.addGameStage("before_wither");
    server.executeCommand("execute in aoa3:nowhere run tp " + player.uuid + " 0 202 0", true);
    if (player.isCreative()) {
        player.setItemStackToSlot(MCEquipmentSlotType.HEAD, <item:mcsaforge:swordbreaker_helmet>.withTag({Enchantments: [{lvl: 4, id: "combatroll:multi_roll"}]}));
        player.setItemStackToSlot(MCEquipmentSlotType.CHEST, <item:mcsaforge:swordbreaker_chestplate>.withTag({Enchantments: [{lvl: 10, id: "combatroll:acrobat_chest"}]}));
        player.setItemStackToSlot(MCEquipmentSlotType.LEGS, <item:mcsaforge:swordbreaker_leggings>.withTag({Enchantments: [{lvl: 10, id: "combatroll:acrobat_legs"}]}));
        player.setItemStackToSlot(MCEquipmentSlotType.FEET, <item:mcsaforge:swordbreaker_boots>.withTag({Enchantments: [{lvl: 5, id: "combatroll:longfooted"}]}));
        player.give(<item:minecraft:structure_block>);
        player.give(<item:minecraft:wooden_axe>);
        player.give(<item:minecraft:bedrock>);
        server.executeCommand("effect give " + player.uuid + " night_vision 1000000 0", true);
    }
});