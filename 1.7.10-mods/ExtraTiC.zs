// ДОПОЛНИТЕЛЬНЫЙ РЕЦЕПТ: слиток и блок красного аурума
	# Слиток красного аурума
	recipes.remove(<ExtraTiC:funStuffIngot:2>);
	recipes.addShapeless(<ExtraTiC:funStuffIngot:2>,
		[<minecraft:gold_ingot>, <minecraft:redstone>]);

	# Блок красного аурума
	recipes.remove(<ExtraTiC:blockFunStuff:2>);
	recipes.addShaped(<ExtraTiC:blockFunStuff:2>,
		[[<ExtraTiC:funStuffIngot:2>, <ExtraTiC:funStuffIngot:2>, <ExtraTiC:funStuffIngot:2>],
		[<ExtraTiC:funStuffIngot:2>, <ExtraTiC:funStuffIngot:2>, <ExtraTiC:funStuffIngot:2>],
		[<ExtraTiC:funStuffIngot:2>, <ExtraTiC:funStuffIngot:2>, <ExtraTiC:funStuffIngot:2>]]);