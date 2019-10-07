// Исправление дублирования рецептов блока розовой слизи MineFactory и блока слизи из мода MalisisDoors
	recipes.remove(<etfuturum:slime>);
	recipes.addShaped(<etfuturum:slime>,
		[[<minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>],
		[<minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>],
		[<minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>]]);

// Если у вас установлен Biomes O Plenty, этот скрипт возможно будет вам полезен
// Часто бывает так, что руды из этого мода мало где используются, и развитым игрокам, которые используют лазерный бур, они попросту не нужны. И нет разницы, есть ли в генерации мира руды из Biomes O Plenty или нет - лазерный бур копает всё
// Также дополнительно есть скрипт для удаления мифриловой руды из Thermal, если на сервере она нигде не используется
	# Удаление руд из Biomes O Plenty
		mods.mfr.MiningLaser.removeOre(<BiomesOPlenty:gemOre:14>);
		mods.mfr.MiningLaser.removeOre(<BiomesOPlenty:gemOre:12>);
		mods.mfr.MiningLaser.removeOre(<BiomesOPlenty:gemOre:10>);
		mods.mfr.MiningLaser.removeOre(<BiomesOPlenty:gemOre:8>);
		mods.mfr.MiningLaser.removeOre(<BiomesOPlenty:gemOre:6>);
		mods.mfr.MiningLaser.removeOre(<BiomesOPlenty:gemOre:4>);
		mods.mfr.MiningLaser.removeOre(<BiomesOPlenty:gemOre:2>);

	# Удаление мифриловой руды из Thermal (если мифрил нигде не используется)
		mods.mfr.MiningLaser.removeOre(<ThermalFoundation:Ore:6>);