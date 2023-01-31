import crafttweaker.api.event.entity.living.MCLivingDeathEvent; 
import crafttweaker.api.events.CTEventManager;

var aoa_bosses = "“bane”__“baroness”__“blue_guardian”__“clunkhead”__“corallus”__“cotton_candor”__“craexxeus”__“creep”__“crystocore”__“dracyon”__“elusive”__“flash”__“graw”__“green_guardian”__“gyro”__“harkos”__“hive_king”__“kajaros”__“king_bambambam”__“king_shroomus”__“klobber”__“kror”__“mechbot”__“mirage”__“miskel”__“nethengeic_wither”__“okazor”__“proshield”__“raxxan”__“red_guardian”__“rock_rider”__“shadowlord”__“smash”__“tyrosaur”__“vinocorne”__“visualent”__“voxxulon”__“xxeus”__“yellow_guardian”";

CTEventManager.register<MCLivingDeathEvent>((event) => {
    var entity = event.entityLiving;
    var world = entity.world;
    if (world.remote) return;
    var server = world.asServerWorld().server;
    var type = entity.type.commandString;
    var dim = world.dimension;
    var source = event.getSource().trueSource;

    if ("player" in type && ("whis:witherstorm" in dim || "bowels" in dim)) entity.addTag("witherespawn");
    if (source == null) return;
    if ("player" in source.type.commandString) {
        var who = "“" + entity.type.registryName.path + "”";
        if (who in aoa_bosses) source.addTag("eye_giver");
        if ("command_block" in type) {
            server.executeCommand("give " + source.name + " aoa3:nowhere_portal", true);
            source.addTag("goer");
        }
    }
});