// Крафт зелёных сердец и банок с ними
// В качестве ресурса используется изумрудный блок, но вы можете заменить его на любой
	var Resource = <minecraft:emerald_block>;
	
	# Маленькое зелёное сердечко
    recipes.addShapeless(<TConstruct:heartCanister:6>,
        [<TConstruct:heartCanister:4>, <TConstruct:heartCanister:5>, Resource]);

	# Банка с зелёным сердцем
    recipes.addShaped(<TConstruct:heartCanister:5>,
        [[<TConstruct:heartCanister:3>, <TConstruct:heartCanister:3>, <TConstruct:heartCanister:3>],
        [<TConstruct:heartCanister:3>, Resource, <TConstruct:heartCanister:3>],
        [<TConstruct:heartCanister:3>, <TConstruct:heartCanister:3>, <TConstruct:heartCanister:3>]]);