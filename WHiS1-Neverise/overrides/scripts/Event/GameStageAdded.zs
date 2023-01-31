import crafttweaker.api.util.text.MCTextComponent;
import crafttweaker.api.events.CTEventManager;
import mods.gamestages.events.GameStageAdded;

CTEventManager.register<GameStageAdded>((event) => {
    var player = event.player;
    var world = player.world;
    if (world.remote) return;
    var stage = event.stage; 
    var server = world.asServerWorld().server;

    if (stage == "enig") {
        player.sendMessage(" ");
        player.sendMessage(MCTextComponent.createTranslationTextComponent("eventMessage.whis.login"));
        player.addTag("nowherer");
        player.give(<item:minecraft:paper>.withTag({Lead: 1}));
    }
});