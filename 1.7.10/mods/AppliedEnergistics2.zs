# Добавляем рецепт: небесный камень
 recipes.addShaped(<appliedenergistics2:tile.BlockSkyStone> * 8,
  [[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>],
  [<minecraft:obsidian>, <appliedenergistics2:item.ItemMultiMaterial:2>, <minecraft:obsidian>],
  [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);

# Добавляем рецепт: алмазная пыль IC2 (из алмаза, в кварцевом дробителе)
 mods.appeng.Grinder.addRecipe(<minecraft:diamond>, <IC2:itemDust2:1> * 1, 1);
