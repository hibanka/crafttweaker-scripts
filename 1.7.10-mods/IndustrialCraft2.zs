# Добавляем рецепт: капсула с электризированной водой
# Используется, если электролизер в вашем моде работает не корректно
	recipes.addShapeless(<IC2:itemCellEmpty:8>,
		[<IC2:itemCellEmpty:1>, <IC2:itemBatRE:1>.withTag({charge: 10000.0})]);
	<IC2:blockMachine:10>.addTooltip(format.red("Внимание! Электролизёр не работает. Был добавлен"));
	<IC2:blockMachine:10>.addTooltip(format.red("крафт капсулам с электролизованной водой."));

# Добавляем рецепт: укреплённый камень
	recipes.addShaped(<IC2:blockAlloy> * 6,
		[[<ore:stone>, <IC2:itemPartAlloy>, <ore:stone>],
		[<ore:stone>, <IC2:itemPartAlloy>, <ore:stone>],
		[<ore:stone>, <IC2:itemPartAlloy>, <ore:stone>]]);

# Добавляем рецепт: гидрогенератор
	recipes.addShaped(<IC2:blockGenerator:2>,
		[[<ore:stickWood>, null, <ore:stickWood>],
		[null, <IC2:blockGenerator>, null],
		[<ore:stickWood>, null, <ore:stickWood>]]);

# Добавляем рецепт: красный и лазуритовый конденсаторы
	# Красный конденсатор
		recipes.remove(<IC2:reactorCondensator:1>);
		recipes.addShaped(<IC2:reactorCondensator:1>,
			[[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],
			[<minecraft:redstone>, <IC2:reactorVentDiamond:1>, <minecraft:redstone>],
			[<minecraft:redstone>, <IC2:reactorHeatSwitchDiamond:1>, <minecraft:redstone>]]);
		recipes.addShapeless(<IC2:reactorCondensator:1>,
			[<IC2:reactorCondensator:*>, <minecraft:redstone_block>]);
			
	# Лазуритовый конденсатор
		recipes.remove(<IC2:reactorCondensatorLap:1>);
		recipes.addShaped(<IC2:reactorCondensatorLap:1>,
			[[<minecraft:redstone>, <IC2:reactorVentCore:1>, <minecraft:redstone>],
			[<IC2:reactorCondensator:1>, <minecraft:lapis_block>, <IC2:reactorCondensator:1>],
			[<minecraft:redstone>, <IC2:reactorHeatSwitchCore:1>, <minecraft:redstone>]]);
		recipes.addShapeless(<IC2:reactorCondensatorLap:1>,
			[<IC2:reactorCondensatorLap:*>, <minecraft:lapis_block>]);

# Не отображается рецепт кристалла памяти в NEI? Простенькое описание уберет вопросы по созданию этого предмета у игроков
	<IC2:itemcrystalmemory>.addTooltip("Создается из необработанного кристалла памяти в печи.");

# Чёрный список предметов для утилизатора, т.е. они не будут переребатываться в утиль
# По шаблону добавлены предметы из ванили и модов, которые создаются чисто из земли/камня/булыжника/гравия
	import minetweaker.item.IItemStack; # Импортирование НЕОБХОДИМО ПОМЕСТИТЬ в самый верх скрипта

	var RecyclerBlacklistItems = [
		<minecraft:cobblestone>,
		<minecraft:stone>,
		<minecraft:dirt>,
		<minecraft:gravel>,
		<minecraft:stone_slab>,
		<minecraft:stone_slab:3>,
		<minecraft:stone_slab:5>,
		<minecraft:stonebrick>,
		<minecraft:stonebrick:1>,
		<minecraft:stonebrick:2>,
		<minecraft:stonebrick:3>,
		<minecraft:stone_brick_stairs>,
		<minecraft:mossy_cobblestone>,
		<minecraft:cobblestone_wall:*>,
		<minecraft:double_stone_slab>,
		<minecraft:double_stone_slab:8>,
		<minecraft:stone_sword>,
		<minecraft:stone_shovel>,
		<minecraft:stone_pickaxe>,
		<minecraft:stone_axe>,
		<minecraft:stone_hoe>,
		<minecraft:furnace>,
		<minecraft:dispenser>,
		<minecraft:dropper>,
		<minecraft:lever>,
		<minecraft:stone_pressure_plate>,
		<minecraft:stone_button>,
		# <ThermalFoundation:tool.bowStone>,
		# <ThermalFoundation:tool.sickleStone>,
		# <ThermalFoundation:tool.fishingRodStone>,
		# <ThermalFoundation:tool.shearsStone>,
		# <customnpcs:npcStoneBullet>,
		# <ExtraUtilities:watering_can:*>,
		# <ExtraUtilities:cobblestone_compressed:*>,
		# <ExtraUtilities:decorativeBlock1:10>,
		# <ExtraUtilities:decorativeBlock1:7>,
		# <ExtraUtilities:decorativeBlock1:6>,
		# <ExtraUtilities:decorativeBlock1:4>,
		# <ExtraUtilities:decorativeBlock1>,
		# <MineFactoryReloaded:brick:10>,
		# <MineFactoryReloaded:brick:4>,
		# <OpenBlocks:bigbutton>,
		# <OpenBlocks:path>,
		# <TConstruct:decoration.stoneladder>,
		# <TConstruct:FurnaceSlab>,
		# <TConstruct:toolRod:1>,
		# <IC2:itemDust:9>,
		# <IC2:itemMugEmpty>,
		# <BuildCraft|Transport:item.buildcraftPipe.pipeitemscobblestone>,
		# <BuildCraft|Transport:item.buildcraftPipe.pipeitemsstone>,
		# <ProjRed|Core:projectred.core.part>,
		# <ForgeMicroblock:stoneRod>,
		# <chisel:dirt:*>,
		# <chisel:andesite:*>,
		# <chisel:cobblestone:*>,
		# <chisel:mossy_cobblestone:*>,
		# <chisel:concrete:*>,
		# <chisel:diorite:*>,
		# <chisel:templeblock:*>,
		# <chisel:stonebricksmooth:*>,
		# <chisel:warningSign>,
		# <BiomesOPlenty:scytheStone>,
		# <BiomesOPlenty:driedDirt>,
		# <etfuturum:coarse_dirt>,
		# <Ztones:stoneTile>,
	] as IItemStack[];

	for item in RecyclerBlacklistItems {
		mods.ic2.Recycler.addBlacklist(item);
	}