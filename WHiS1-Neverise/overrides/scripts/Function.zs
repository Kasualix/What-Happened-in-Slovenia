#loadfirst
import crafttweaker.api.util.text.MCTextComponent as MCTextComponent;
import crafttweaker.api.enchantment.EnchantmentType;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.mods.ModInfo;
import stdlib.List as List;

public function printDmgableModItems(modID as string) as void {
    var dmgables as List<IItemStack> = loadedMods.getMod(modID).items;
    for p in 0 .. dmgables.length {
        if (dmgables[p].damageable && dmgables[p].maxDamage > 100) {
            var damage = dmgables[p].maxDamage * 2;
            print("“" + dmgables[p].registryName.toString() + ";" + damage  +"”,");
        }
    }
}
public function tooltip(item as IItemStack, key as string) as void {
    item.addTooltip(MCTextComponent.createTranslationTextComponent(key));
}
public function tooltipS(item as IItemStack, key as string) as void {
    var shift = MCTextComponent.createTranslationTextComponent("info.whis.shift");
    item.addShiftTooltip(MCTextComponent.createTranslationTextComponent(key), shift);
}
public function printModArmor(modid as string) as void {
    var items as List<IItemStack> = loadedMods.getMod(modid).items;
    for head in 0 .. items.length {
        if (EnchantmentType.ARMOR_HEAD.canEnchantItem(items[head].definition)) print ("“" + items[head].registryName.toString() + "”");
    }
    print("——————————————————————————————————————");
    for chest in 0 .. items.length {
        if (EnchantmentType.ARMOR_CHEST.canEnchantItem(items[chest].definition)) print ("“" + items[chest].registryName.toString() + "”");
    }
    print("——————————————————————————————————————");
    for legs in 0 .. items.length {
        if (EnchantmentType.ARMOR_LEGS.canEnchantItem(items[legs].definition)) print ("“" + items[legs].registryName.toString() + "”");
    }
    print("——————————————————————————————————————");
    for feet in 0 .. items.length {
        if (EnchantmentType.ARMOR_FEET.canEnchantItem(items[feet].definition)) print ("“" + items[feet].registryName.toString() + "”");
    }
}