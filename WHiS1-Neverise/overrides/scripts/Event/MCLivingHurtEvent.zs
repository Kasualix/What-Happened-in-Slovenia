import crafttweaker.api.event.entity.living.MCLivingHurtEvent;
import crafttweaker.api.util.MCEquipmentSlotType; 
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.entity.MCEntity;

var effect = "effect give ";
var l = "lunar";
var a = "alacrity";
var k = "knight";
var r = "rosidian";
var s = "spaceking";
var aoa_bosses = "“bane”__“baroness”__“blue_guardian”__“clunkhead”__“corallus”__“cotton_candor”__“craexxeus”__“creep”__“crystocore”__“dracyon”__“elusive”__“flash”__“graw”__“green_guardian”__“gyro”__“harkos”__“hive_king”__“kajaros”__“king_bambambam”__“king_shroomus”__“klobber”__“kror”__“mechbot”__“mirage”__“miskel”__“nethengeic_wither”__“okazor”__“proshield”__“raxxan”__“red_guardian”__“rock_rider”__“shadowlord”__“smash”__“tyrosaur”__“vinocorne”__“visualent”__“voxxulon”__“xxeus”__“yellow_guardian”";

CTEventManager.register<MCLivingHurtEvent>(event => {
    var entity = event.entityLiving;
    var world = entity.world;
    if (world.remote) return;
    var server = world.asServerWorld().server;
    var attacked = entity.type.commandString; 
    var uuid = entity.uuid;
    var pos = entity.position;
    var dmgsource = event.source;
    var health = entity.getHealth();
    var m_health = entity.getMaxHealth();
    var attacker = dmgsource.trueSource;
    var who = "“" + attacked + "”";

    if ("player" in attacked) {
        if ("nowhere" in world.dimension) event.cancel();
        var helmet = entity.getItemStackFromSlot(MCEquipmentSlotType.HEAD).commandString;
        var chestplate = entity.getItemStackFromSlot(MCEquipmentSlotType.CHEST).commandString;
        var leggings = entity.getItemStackFromSlot(MCEquipmentSlotType.LEGS).commandString;
        var boots = entity.getItemStackFromSlot(MCEquipmentSlotType.FEET).commandString;
        if ("dragonsteel" in helmet && "dragonsteel" in chestplate && "dragonsteel" in leggings && "dragonsteel" in boots && 0.30 >= world.random.nextDouble(0.00, 1.00)) {
            var find_dragon as stdlib.List<MCEntity> = world.getEntitiesInArea(pos.add(50, -50, 50), pos.add(-50, 50, -50));
            for finder in 0 .. find_dragon.length {
                var first_dragon = find_dragon[finder].type.commandString;
                var last_finder = find_dragon.length - finder;
                var last_dragon = find_dragon[last_finder].type.commandString;
                if ("fire_dragon" in first_dragon || "ice_dragon" in first_dragon || "lightning_dragon" in first_dragon || "fire_dragon" in last_dragon || "ice_dragon" in last_dragon || "lightning_dragon" in last_dragon) {
                    if (find_dragon[finder].data.getAt("Owner") == null) {} else {
                        event.cancel();
                        break;
                    }
                }
            }
        }
        if (entity.removeTag("storm_time")) {
            if (world.random.nextDouble(0.00, 1.00) >= 0.81 && !entity.isPotionActive(<effect:witherstormmod:wither_sickness>)) server.executeCommand(effect + uuid + " witherstormmod:wither_sickness 3600 1", true);
            entity.addTag("storm_time");
        }
        if (entity.removeTag("mcsaforge")) {
            var mainhand = entity.getHeldItemMainhand().asIItemStack().commandString;
            var offhand = entity.getHeldItemOffhand().asIItemStack().commandString;
            if ("mcsaforge" in helmet) entity.setItemStackToSlot(MCEquipmentSlotType.HEAD, <item:minecraft:air>);
            if ("mcsaforge" in chestplate) entity.setItemStackToSlot(MCEquipmentSlotType.CHEST, <item:minecraft:air>);
            if ("mcsaforge" in leggings) entity.setItemStackToSlot(MCEquipmentSlotType.LEGS, <item:minecraft:air>);
            if ("mcsaforge" in boots) entity.setItemStackToSlot(MCEquipmentSlotType.FEET, <item:minecraft:air>);
            if ("dungeons_gear" in mainhand) entity.setItemStackToSlot(MCEquipmentSlotType.MAINHAND, <item:minecraft:air>);
            if ("dungeons_gear" in offhand) entity.setItemStackToSlot(MCEquipmentSlotType.OFFHAND, <item:minecraft:air>);
            if ("gunswithoutroses" in mainhand) entity.setItemStackToSlot(MCEquipmentSlotType.MAINHAND, <item:minecraft:air>);
            if ("gunswithoutroses" in offhand) entity.setItemStackToSlot(MCEquipmentSlotType.OFFHAND, <item:minecraft:air>);
            if ("witherstormmod" in mainhand || "witherstormmod" in offhand) {
                if ("command_block" in mainhand) entity.setItemStackToSlot(MCEquipmentSlotType.MAINHAND, <item:minecraft:air>);
                if ("command_block" in offhand) entity.setItemStackToSlot(MCEquipmentSlotType.OFFHAND, <item:minecraft:air>);
            }
            entity.addTag("mcsaforge");
        }
        if (dmgsource == <damagesource:fall>) {
            if (l in helmet && l in chestplate && l in leggings && l in boots) event.cancel();
            if (s in helmet && s in chestplate && s in leggings && s in boots) event.cancel();
        }
        if (dmgsource == <damagesource:inWall>) {
            if (s in helmet && s in chestplate && s in leggings && s in boots) event.cancel();
        }
        if (dmgsource.getDamageType() == "magic" && entity.isPotionActive(<effect:minecraft:poison>)) {
            var dmg_amt = event.amount;
            if ((r in helmet && r in chestplate && r in leggings) || (r in helmet && r in chestplate && r in boots) || (r in chestplate && r in leggings && r in boots)) {
                event.setAmount(dmg_amt * 0.2);
                return;
            }
            if ((r in helmet && r in chestplate) || (r in helmet && r in leggings) || (r in helmet && r in boots) || (r in chestplate && r in boots) || (r in leggings && r in boots)) {
                event.setAmount(dmg_amt * 0.4);
                return;
            }
            if (r in helmet || r in chestplate || r in leggings || r in boots) {
                event.setAmount(dmg_amt * 0.6);
            }
        }
    }
    if (a in attacked && m_health * 0.4 > health && "xxeus" in attacked) server.executeCommand(effect + uuid + " minecraft:strength 114514 1", true);
    if (who in aoa_bosses && "aoa3" in attacked) {
        if (m_health * 0.2 >= health) server.executeCommand(effect + uuid + " minecraft:speed 114514 1", true);
        server.executeCommand(effect + uuid + " minecraft:fire_resistance 114514", true);
    }
    if (attacker == null) return;
    if (attacker.removeTag("target_slow")) server.executeCommand(effect + uuid + " minecraft:slowness 3 1", true);
});
