// Крафт небесного камня
    recipes.addShaped(<appliedenergistics2:tile.BlockSkyStone> *8,
        [[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>],
        [<minecraft:obsidian>, <appliedenergistics2:item.ItemMultiMaterial:2>, <minecraft:obsidian>],
        [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);

// Дробители есть практически в каждом индустриальном моде. Здесь просто собрано несколько интеграций с кварцевым дробителем
// Например, получение алмазной пыли из алмаза, что присутствует в дробителях других модов, но не в AE2. Можете добавлять свои крафты по шаблону
	mods.appeng.Grinder.addRecipe(<minecraft:diamond>, <IC2:itemDust2:1> * 1, 1);