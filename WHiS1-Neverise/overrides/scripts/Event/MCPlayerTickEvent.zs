import crafttweaker.api.event.tick.MCPlayerTickEvent;
import crafttweaker.api.util.text.MCTextComponent;
import crafttweaker.api.util.MCEquipmentSlotType; 
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.item.IItemStack;

var eyes as IItemStack[] = [
    <item:endrem:black_eye>,
    <item:endrem:magical_eye>,
    <item:endrem:wither_eye>,
    <item:endrem:guardian_eye>,
    <item:endrem:old_eye>,
    <item:endrem:rogue_eye>,
    <item:endrem:nether_eye>,
    <item:endrem:cold_eye>,
    <item:endrem:corrupted_eye>,
    <item:endrem:lost_eye>,
    <item:endrem:end_crystal_eye>,
    <item:endrem:witch_eye>,
    <item:endrem:ancient_portal_frame> * 3
];
var speeduper = loadedMods.isModLoaded("t" + "o" + "r" + "c" + "h" + "e" + "r" + "i" + "n" + "o");
var bedrocker = loadedMods.isModLoaded("b" + "a" + "c" + "t" + "e" + "r" + "i" + "u" + "m");
var u = "subterranean";
var s = "spaceking";
var k = "knight";
var l = "lunar";
var a = "alacrity";
var r = "roisidian";

CTEventManager.register<MCPlayerTickEvent>(event => {
    var player = event.player;
    var world = player.world;
    if (world.remote) return;
    var head = player.getItemStackFromSlot(MCEquipmentSlotType.HEAD);
    var chest = player.getItemStackFromSlot(MCEquipmentSlotType.CHEST);
    var legs = player.getItemStackFromSlot(MCEquipmentSlotType.LEGS);
    var feet = player.getItemStackFromSlot(MCEquipmentSlotType.FEET);
    var mainhand = player.getHeldItemMainhand().asIItemStack().commandString;
    var helmet = head.commandString;
    var chestplate = chest.commandString;
    var leggings = legs.commandString;
    var boots = feet.commandString;
    var server = player.world.asServerWorld().server;
    var name = player.name.formattedText;
    var buff = "effect give " + name;
    var pos = player.position;
    var dim = world.dimension;
    var x = pos.x;
    var y = pos.y;
    var z = pos.z;
    var bad = y - 2;
    var health = player.getHealth();
    var total_damage = head.damage + chest.damage + legs.damage + feet.damage;
    var total_durability = 605 + 880 + 825 + 715; 

    if ("recall" in mainhand) {
        player.addTag("recaller");
    } else {
        player.removeTag("recaller");
    }
    if ("overworld" in dim) {
        if (player.removeTag("otger")) {
            server.executeCommand("execute in whis:witherstorm run tp " + name + " 0 256 0", true);
            if (!player.isCreative()) server.executeCommand("effect give " + name + " minecraft:slow_falling 30", true);
        }
    }
    if (player.inventory.hasIItemStack(<item:minecraft:nether_star>) && player.hasGameStage("before_wither")) {
        player.removeGameStage("before_wither");
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.whis.nether_star.1"));
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.whis.nether_star.2"));
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.whis.nether_star.3"));
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.whis.nether_star.4"));
        player.addGameStage("aoa_age");
        player.give(<item:minecraft:paper>.withTag({Lead: 2}));
    }
    if (player.inventory.hasIItemStack(<item:witherstormmod:withered_nether_star>) && !player.hasGameStage("defeat_storm")) {
        player.addGameStage("defeat_storm");
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.whis.defeat_storm"));
        player.addTag("overworld");
    }
    if (player.hasGameStage("aoa_age")) player.addTag("aoa_age");
    if (player.hasGameStage("mcsaforge")) player.addTag("mcsaforge");
    if ("aoa3:alacrity_bow" in mainhand) {
        player.addTag("target_slow");
    } else {
        player.removeTag("target_slow");
    }
    if (player.removeTag("wither_message_sender")) {
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.whis.after_storm.1"));
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.whis.after_storm.2"));
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.whis.after_storm.3"));
        player.give(<item:witherstormmod:withered_nether_star>);
    }
    if (player.removeTag("eye_giver")) player.give(eyes[world.random.nextInt(0, 11)]);
    if (speeduper) server.executeCommand("effect give @e minecraft:speed 114514 255", true);
    if (bedrocker && !("minecraft:air" in world.getBlockState(pos.add(0, -2, 0)).commandString)) server.executeCommand("fill " + x + " " + bad + " " + z + " " + x + " " + bad + " " + z + " aoa3:dimensional_fabric", true);
    if ("aoa3" in helmet && "aoa3" in chestplate && "aoa3" in leggings && "aoa3" in boots) {    
        if (u in helmet && u in chestplate && u in leggings && u in boots) {
            server.executeCommand(buff + " minecraft:haste 10 4", true);
            return;
        }
        if (s in helmet && s in chestplate && s in leggings && s in boots) {
            player.addTag(s);
            if (player.isInWater()) player.setHealth(health - 0.05);
            return;
        } else {
            player.removeTag(s);
        }
        if (player.getMaxHealth() * 0.5 >= health && k in helmet && k in chestplate && k in leggings && k in boots && !player.isPotionActive(<effect:minecraft:strength>)) {
            server.executeCommand(buff + " minecraft:strength 10 1", true);
            return;
        }
        if (l in helmet && l in chestplate && l in leggings && l in boots) server.executeCommand(buff + " minecraft:night_vision 10", true);
        if (a in helmet && a in chestplate && a in leggings && a in boots) server.executeCommand(buff + " minecraft:jump_boost 10 " + "3", true);
        if (r in helmet && r in chestplate && r in leggings && r in boots) {
            if (player.isPotionActive(<effect:minecraft:poison>)) player.removePotionEffect(<effect:minecraft:poison>);
            if (1.00 * total_damage >= 0.66 * total_durability) server.executeCommand(buff + " minecraft:resistance 10 1", true);
            if (1.00 * total_damage >= 0.33 * total_durability) server.executeCommand(buff + " minecraft:resistance 10 0", true);
        }
    }
});