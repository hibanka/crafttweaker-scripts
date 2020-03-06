# Добавляем рецепт: маленькое зелёное сердечко и банка с зелёным сердцем
	# В качестве ресурсов используются изумруды, но вы можете заменить их на любые другие предметы
	var resourceForHeart = <minecraft:emerald>;
	var resourceForJar = <minecraft:emerald_block>;

	# Маленькое зелёное сердечко
		recipes.addShapeless(<TConstruct:heartCanister:6>,
			[<TConstruct:heartCanister:4>, <TConstruct:heartCanister:5>, resourceForHeart]);
			
	# Банка с зелёным сердцем
		recipes.addShaped(<TConstruct:heartCanister:5>,
			[[<TConstruct:heartCanister:3>, <TConstruct:heartCanister:3>, <TConstruct:heartCanister:3>],
			[<TConstruct:heartCanister:3>, resourceForJar, <TConstruct:heartCanister:3>],
			[<TConstruct:heartCanister:3>, <TConstruct:heartCanister:3>, <TConstruct:heartCanister:3>]]);