// В моде могут сломаться крафты некоторых вещей (например фотовольтовые ячейки или конденсаторы)
// Сами рецепты отображается визуально, но скрафтить их не получится
// Проверьте перед тем, как добавлять эти скрипты на исправление крафтов
	# Резервуар
	    recipes.remove(<EnderIO:blockReservoir>);
	    recipes.addShaped(<EnderIO:blockReservoir> *4,
	        [[<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>],
	        [<ore:blockGlassHardened>, <minecraft:cauldron>, <ore:blockGlassHardened>],
	        [<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>]]);

	# Основной конденсатор
	    recipes.remove(<EnderIO:itemBasicCapacitor>);
	    recipes.addShaped(<EnderIO:itemBasicCapacitor>,
	        [[null, <minecraft:gold_nugget>, <minecraft:redstone>],
	        [<minecraft:gold_nugget>, <ore:ingotCopper>, <minecraft:gold_nugget>],
	        [<minecraft:redstone>, <minecraft:gold_nugget>, null]]);

	# Двухслойный конденсатор
	    recipes.remove(<EnderIO:itemBasicCapacitor:1>);
	    recipes.addShaped(<EnderIO:itemBasicCapacitor:1>,
	        [[null, <ore:ingotEnergeticAlloy>, null],
	        [<EnderIO:itemBasicCapacitor>, <ore:dustCoal>, <EnderIO:itemBasicCapacitor>],
	        [null, <ore:ingotEnergeticAlloy>, null]]);

	# Восьмислойный конденсатор
	    recipes.remove(<EnderIO:itemBasicCapacitor:2>);
	    recipes.addShaped(<EnderIO:itemBasicCapacitor:2>,
	        [[null, <ore:ingotVibrantAlloy>, null],
	        [<EnderIO:itemBasicCapacitor:1>, <ore:glowstone>, <EnderIO:itemBasicCapacitor:1>],
	        [null, <ore:ingotVibrantAlloy>, null]]);

	# Фотовольтовая ячейка
	    recipes.remove(<EnderIO:blockSolarPanel>);
	    recipes.addShaped(<EnderIO:blockSolarPanel>,
	        [[<ore:ingotEnergeticAlloy>, <ore:blockGlassHardened>, <ore:ingotEnergeticAlloy>],
	        [<ore:itemSilicon>, <ore:blockGlassHardened>, <ore:itemSilicon>],
	        [<ore:ingotElectricalSteel>, <minecraft:daylight_detector:*>, <ore:ingotElectricalSteel>]]);

	# Продвинутая фотовольтовая ячейка
	    recipes.remove(<EnderIO:blockSolarPanel:1>);
	    recipes.addShaped(<EnderIO:blockSolarPanel:1>,
	        [[<ore:ingotVibrantAlloy>, <EnderIO:blockFusedQuartz:2>, <ore:ingotVibrantAlloy>],
	        [<ore:itemVibrantCrystal>, <EnderIO:blockFusedQuartz:2>, <ore:itemVibrantCrystal>],
	        [<ore:ingotPulsatingIron>, <minecraft:daylight_detector:*>, <ore:ingotPulsatingIron>]]);

	# Покрасочный механизм
	    recipes.remove(<EnderIO:blockPainter>);
	    recipes.addShaped(<EnderIO:blockPainter>,
	        [[<ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>],
	        [<ore:ingotElectricalSteel>, <minecraft:diamond>, <ore:ingotElectricalSteel>],
	        [<ore:ingotElectricalSteel>, <EnderIO:itemMachinePart>, <ore:ingotElectricalSteel>]]);