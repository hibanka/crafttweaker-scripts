// Крафт стабильного сигила через Avaritia верстак
mods.avaritia.ExtremeCrafting.addShaped(<ExtraUtilities:divisionSigil>.withTag({stable: 1 as byte}),
        [[<minecraft:stone>, <minecraft:hardened_clay>, <minecraft:glass>, <minecraft:coal:1>, <minecraft:gold_ingot>, <minecraft:iron_ingot>, <minecraft:dye:2>, <minecraft:cooked_porkchop>, <minecraft:cooked_fished>],
        [<minecraft:cooked_beef>, <minecraft:cooked_chicken>, <minecraft:baked_potato>, <minecraft:potion:8257>, <minecraft:potion:8265>, <minecraft:potion:8262>, <minecraft:potion:8269>, <minecraft:potion:8270>, <minecraft:potion:8266>],
        [<minecraft:potion:8260>, <minecraft:potion:8264>, <minecraft:potion:8258>, <minecraft:potion:8259>, <minecraft:potion:8236>, <minecraft:potion:8229>, <minecraft:coal_ore>, <minecraft:iron_ore>, <minecraft:redstone_ore>],
        [<minecraft:gold_ore>, <minecraft:lapis_ore>, <minecraft:emerald_ore>, <minecraft:diamond_ore>, <minecraft:dirt>, <minecraft:sand>, <minecraft:gravel>, <minecraft:clay>, <minecraft:grass>],
        [<minecraft:record_13>, <minecraft:record_cat>, <minecraft:record_blocks>, <minecraft:record_chirp>, <minecraft:record_far>, <minecraft:record_mall>, <minecraft:record_mellohi>, <minecraft:record_stal>, <minecraft:record_strad>],
        [<minecraft:record_ward>, <minecraft:record_11>, <minecraft:record_wait>, <ExtraUtilities:divisionSigil>.withTag({damage: 256}), <minecraft:iron_block>, <minecraft:iron_block>, <minecraft:iron_block>, <minecraft:iron_block>, <minecraft:pumpkin>],
        [<minecraft:beacon>, <minecraft:diamond_sword>, null, null, null, null, null, null, null],
        [null, null, null, null, null, null, null, null, null],
        [null, null, null, null, null, null, null, null, null]]);

// Исправление дублирования рецептов занавес ExtraUtlities и занавес из мода MalisisDoors
	recipes.remove(<ExtraUtilities:curtains>);
	recipes.addShapeless(<ExtraUtilities:curtains>,
		[<malisisdoors:item.curtain_black>]);