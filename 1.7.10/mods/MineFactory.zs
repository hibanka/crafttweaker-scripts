# Исправляем дублирование рецепта (блок розовой слизи из Minefactory Reloaded и блок слизи из Et Futurum)
 recipes.remove(<etfuturum:slime>);
 recipes.addShaped(<etfuturum:slime>,
  [[<minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>],
  [<minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>],
  [<minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>]]);

# Улучшаем лазерный бур
 # Удаляем руды из Biomes O Plenty
  mods.mfr.MiningLaser.removePreferredOre(1, <BiomesOPlenty:gemOre:14>);
  mods.mfr.MiningLaser.removeOre(<BiomesOPlenty:gemOre:14>);
  mods.mfr.MiningLaser.removePreferredOre(11, <BiomesOPlenty:gemOre:12>);
  mods.mfr.MiningLaser.removeOre(<BiomesOPlenty:gemOre:12>);
  mods.mfr.MiningLaser.removePreferredOre(9, <BiomesOPlenty:gemOre:10>);
  mods.mfr.MiningLaser.removeOre(<BiomesOPlenty:gemOre:10>);
  mods.mfr.MiningLaser.removePreferredOre(10, <BiomesOPlenty:gemOre:8>);
  mods.mfr.MiningLaser.removeOre(<BiomesOPlenty:gemOre:8>);
  mods.mfr.MiningLaser.removePreferredOre(12, <BiomesOPlenty:gemOre:6>);
  mods.mfr.MiningLaser.removeOre(<BiomesOPlenty:gemOre:6>);
  mods.mfr.MiningLaser.removePreferredOre(13, <BiomesOPlenty:gemOre:4>);
  mods.mfr.MiningLaser.removeOre(<BiomesOPlenty:gemOre:4>);
  mods.mfr.MiningLaser.removePreferredOre(14, <BiomesOPlenty:gemOre:2>);
  mods.mfr.MiningLaser.removeOre(<BiomesOPlenty:gemOre:2>);

 # Удаляем мифриловую руду из Thermal
  mods.mfr.MiningLaser.removePreferredOre(11, <ThermalFoundation:Ore:6>);
  mods.mfr.MiningLaser.removeOre(<ThermalFoundation:Ore:6>);
  
 # Добавляем дракониевую руду из Draconic Evolution
  mods.mfr.MiningLaser.addPreferredOre(10, <ore:oreDraconium>);
