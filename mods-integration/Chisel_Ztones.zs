// При помощи этого скрипта, блоки Ztones одного типа, но разного цвета, можно будет менять между собой через стамеску Chisel
// Также скрипт удаляет и заново создает крафты для блоков, тем самым исправляя "битые" рецепты через огонь в NEI
// Возможно, это можно было бы сделать как-нибудь производительнее, но я создавал этот скрипт очень давно, особо не зная о всех возможностях CraftTweaker
	# Импортирование НЕОБХОДИМО ПОМЕСТИТЬ в самый верх скрипта
	import mods.chisel.Groups; # Импортирование НЕОБХОДИМО ПОМЕСТИТЬ в самый верх скрипта
	import minetweaker.item.IItemStack; # Импортирование НЕОБХОДИМО ПОМЕСТИТЬ в самый верх скрипта

	var StoneTile = <Ztones:stoneTile>;
	var Aurora = <Ztones:auroraBlock>;

	# квартирные лампы (все виды)
	recipes.remove(<Ztones:lampt>);
		<Ztones:lampt>.addTooltip("Серая лампа");
	recipes.remove(<Ztones:lampb>);
		<Ztones:lampb>.addTooltip("Черная лампа");
	recipes.remove(<Ztones:lampf>);
		<Ztones:lampf>.addTooltip("Белая лампа");
	recipes.addShaped(<Ztones:lampf> *8,
		[[<ore:ingotIron>, <ore:blockGlass>, <ore:ingotIron>],
		[<ore:blockGlass>, <minecraft:glowstone_dust>, <ore:blockGlass>],
		[<ore:ingotIron>, <ore:blockGlass>, <ore:ingotIron>]]);
	Groups.addGroup("flat_lamp");
	Groups.addVariation("flat_lamp", <Ztones:lampf>);
	Groups.addVariation("flat_lamp", <Ztones:lampt>);
	Groups.addVariation("flat_lamp", <Ztones:lampb>);

	# agon
		Groups.addGroup("agon"); 
		var agon =
			[
			<Ztones:tile.agonBlock>,
			<Ztones:tile.agonBlock:1>,
			<Ztones:tile.agonBlock:2>,
			<Ztones:tile.agonBlock:3>,
			<Ztones:tile.agonBlock:4>,
			<Ztones:tile.agonBlock:5>,
			<Ztones:tile.agonBlock:6>,
			<Ztones:tile.agonBlock:7>,
			<Ztones:tile.agonBlock:8>,
			<Ztones:tile.agonBlock:9>,
			<Ztones:tile.agonBlock:10>,
			<Ztones:tile.agonBlock:11>,
			<Ztones:tile.agonBlock:12>,
			<Ztones:tile.agonBlock:13>,
			<Ztones:tile.agonBlock:14>,
			<Ztones:tile.agonBlock:15>,
			]
		as IItemStack[];
		for item in agon {
			recipes.remove(item);
			Groups.addVariation("agon", item);
		}
		recipes.addShaped(<Ztones:tile.agonBlock> *8,
			[[StoneTile, StoneTile, StoneTile],
			[StoneTile, Aurora, StoneTile],
			[StoneTile, StoneTile, StoneTile]]);

	# bitt
		Groups.addGroup("bitt"); 
		var bitt =
			[
			<Ztones:tile.bittBlock>,
			<Ztones:tile.bittBlock:1>,
			<Ztones:tile.bittBlock:2>,
			<Ztones:tile.bittBlock:3>,
			<Ztones:tile.bittBlock:4>,
			<Ztones:tile.bittBlock:5>,
			<Ztones:tile.bittBlock:6>,
			<Ztones:tile.bittBlock:7>,
			<Ztones:tile.bittBlock:8>,
			<Ztones:tile.bittBlock:9>,
			<Ztones:tile.bittBlock:10>,
			<Ztones:tile.bittBlock:11>,
			<Ztones:tile.bittBlock:12>,
			<Ztones:tile.bittBlock:13>,
			<Ztones:tile.bittBlock:14>,
			<Ztones:tile.bittBlock:15>,
			]
		as IItemStack[];
		for item in bitt {
			recipes.remove(item);
			Groups.addVariation("bitt", item);
		}
		recipes.addShaped(<Ztones:tile.bittBlock> *8,
			[[StoneTile, StoneTile, StoneTile],
			[StoneTile, <ore:blockWool>, StoneTile],
			[StoneTile, StoneTile, StoneTile]]);

	# cray
		Groups.addGroup("cray"); 
		var cray =
			[
			<Ztones:tile.crayBlock>,
			<Ztones:tile.crayBlock:1>,
			<Ztones:tile.crayBlock:2>,
			<Ztones:tile.crayBlock:3>,
			<Ztones:tile.crayBlock:4>,
			<Ztones:tile.crayBlock:5>,
			<Ztones:tile.crayBlock:6>,
			<Ztones:tile.crayBlock:7>,
			<Ztones:tile.crayBlock:8>,
			<Ztones:tile.crayBlock:9>,
			<Ztones:tile.crayBlock:10>,
			<Ztones:tile.crayBlock:11>,
			<Ztones:tile.crayBlock:12>,
			<Ztones:tile.crayBlock:13>,
			<Ztones:tile.crayBlock:14>,
			<Ztones:tile.crayBlock:15>,
			]
		as IItemStack[];
		for item in cray {
			recipes.remove(item);
			Groups.addVariation("cray", item);
		}
		recipes.addShaped(<Ztones:tile.crayBlock> *8,
			[[<ore:blockStainedHardenedClay>, <ore:blockStainedHardenedClay>, <ore:blockStainedHardenedClay>],
			[<ore:blockStainedHardenedClay>, Aurora, <ore:blockStainedHardenedClay>],
			[<ore:blockStainedHardenedClay>, <ore:blockStainedHardenedClay>, <ore:blockStainedHardenedClay>]]);
			
	# fort
		Groups.addGroup("fort"); 
		var fort =
			[
			<Ztones:tile.fortBlock>,
			<Ztones:tile.fortBlock:1>,
			<Ztones:tile.fortBlock:2>,
			<Ztones:tile.fortBlock:3>,
			<Ztones:tile.fortBlock:4>,
			<Ztones:tile.fortBlock:5>,
			<Ztones:tile.fortBlock:6>,
			<Ztones:tile.fortBlock:7>,
			<Ztones:tile.fortBlock:8>,
			<Ztones:tile.fortBlock:9>,
			<Ztones:tile.fortBlock:10>,
			<Ztones:tile.fortBlock:11>,
			<Ztones:tile.fortBlock:12>,
			<Ztones:tile.fortBlock:13>,
			<Ztones:tile.fortBlock:14>,
			<Ztones:tile.fortBlock:15>,
			]
		as IItemStack[];
		for item in fort {
			recipes.remove(item);
			Groups.addVariation("fort", item);
		}
		recipes.addShaped(<Ztones:tile.fortBlock> *8,
			[[<Ztones:tile.ztylBlock:9>, <Ztones:tile.ztylBlock:9>, <Ztones:tile.ztylBlock:9>],
			[<Ztones:tile.ztylBlock:9>, Aurora, <Ztones:tile.ztylBlock:9>],
			[<Ztones:tile.ztylBlock:9>, <Ztones:tile.ztylBlock:9>, <Ztones:tile.ztylBlock:9>]]);
			
	# iszm
		Groups.addGroup("iszm"); 
		var iszm =
			[
			<Ztones:tile.iszmBlock>,
			<Ztones:tile.iszmBlock:1>,
			<Ztones:tile.iszmBlock:2>,
			<Ztones:tile.iszmBlock:3>,
			<Ztones:tile.iszmBlock:4>,
			<Ztones:tile.iszmBlock:5>,
			<Ztones:tile.iszmBlock:6>,
			<Ztones:tile.iszmBlock:7>,
			<Ztones:tile.iszmBlock:8>,
			<Ztones:tile.iszmBlock:9>,
			<Ztones:tile.iszmBlock:10>,
			<Ztones:tile.iszmBlock:11>,
			<Ztones:tile.iszmBlock:12>,
			<Ztones:tile.iszmBlock:13>,
			<Ztones:tile.iszmBlock:14>,
			<Ztones:tile.iszmBlock:15>,
			]
		as IItemStack[];
		for item in iszm {
			recipes.remove(item);
			Groups.addVariation("iszm", item);
		}
		recipes.addShaped(<Ztones:tile.iszmBlock> *8,
			[[<Ztones:tile.ztylBlock:8>, <Ztones:tile.ztylBlock:8>, <Ztones:tile.ztylBlock:8>],
			[<Ztones:tile.ztylBlock:8>, Aurora, <Ztones:tile.ztylBlock:8>],
			[<Ztones:tile.ztylBlock:8>, <Ztones:tile.ztylBlock:8>, <Ztones:tile.ztylBlock:8>]]);
			
	# jelt
		Groups.addGroup("jelt"); 
		var jelt =
			[
			<Ztones:tile.jeltBlock>,
			<Ztones:tile.jeltBlock:1>,
			<Ztones:tile.jeltBlock:2>,
			<Ztones:tile.jeltBlock:3>,
			<Ztones:tile.jeltBlock:4>,
			<Ztones:tile.jeltBlock:5>,
			<Ztones:tile.jeltBlock:6>,
			<Ztones:tile.jeltBlock:7>,
			<Ztones:tile.jeltBlock:8>,
			<Ztones:tile.jeltBlock:9>,
			<Ztones:tile.jeltBlock:10>,
			<Ztones:tile.jeltBlock:11>,
			<Ztones:tile.jeltBlock:12>,
			<Ztones:tile.jeltBlock:13>,
			<Ztones:tile.jeltBlock:14>,
			<Ztones:tile.jeltBlock:15>,
			]
		as IItemStack[];
		for item in jelt {
			recipes.remove(item);
			Groups.addVariation("jelt", item);
		}
		recipes.addShaped(<Ztones:tile.jeltBlock> *8,
			[[StoneTile, StoneTile, StoneTile],
			[StoneTile, <ore:ingotGold>, StoneTile],
			[StoneTile, StoneTile, StoneTile]]);
			
	# korp
		Groups.addGroup("korp"); 
		var korp =
			[
			<Ztones:tile.korpBlock>,
			<Ztones:tile.korpBlock:1>,
			<Ztones:tile.korpBlock:2>,
			<Ztones:tile.korpBlock:3>,
			<Ztones:tile.korpBlock:4>,
			<Ztones:tile.korpBlock:5>,
			<Ztones:tile.korpBlock:6>,
			<Ztones:tile.korpBlock:7>,
			<Ztones:tile.korpBlock:8>,
			<Ztones:tile.korpBlock:9>,
			<Ztones:tile.korpBlock:10>,
			<Ztones:tile.korpBlock:11>,
			<Ztones:tile.korpBlock:12>,
			<Ztones:tile.korpBlock:13>,
			<Ztones:tile.korpBlock:14>,
			<Ztones:tile.korpBlock:15>,
			]
		as IItemStack[];
		for item in korp {
			recipes.remove(item);
			Groups.addVariation("korp", item);
		}
		recipes.addShaped(<Ztones:tile.korpBlock> *8,
			[[StoneTile, StoneTile, StoneTile],
			[StoneTile, <minecraft:obsidian>, StoneTile],
			[StoneTile, StoneTile, StoneTile]]);
			
	# kryp
		Groups.addGroup("kryp"); 
		var kryp =
			[
			<Ztones:tile.krypBlock>,
			<Ztones:tile.krypBlock:1>,
			<Ztones:tile.krypBlock:2>,
			<Ztones:tile.krypBlock:3>,
			<Ztones:tile.krypBlock:4>,
			<Ztones:tile.krypBlock:5>,
			<Ztones:tile.krypBlock:6>,
			<Ztones:tile.krypBlock:7>,
			<Ztones:tile.krypBlock:8>,
			<Ztones:tile.krypBlock:9>,
			<Ztones:tile.krypBlock:10>,
			<Ztones:tile.krypBlock:11>,
			<Ztones:tile.krypBlock:12>,
			<Ztones:tile.krypBlock:13>,
			<Ztones:tile.krypBlock:14>,
			<Ztones:tile.krypBlock:15>,
			]
		as IItemStack[];
		for item in kryp {
			recipes.remove(item);
			Groups.addVariation("kryp", item);
		}
		recipes.addShaped(<Ztones:tile.krypBlock> *8,
			[[StoneTile, StoneTile, StoneTile],
			[StoneTile, <minecraft:soul_sand>, StoneTile],
			[StoneTile, StoneTile, StoneTile]]);
			
	# lair
		Groups.addGroup("lair"); 
		var lair =
			[
			<Ztones:tile.lairBlock>,
			<Ztones:tile.lairBlock:1>,
			<Ztones:tile.lairBlock:2>,
			<Ztones:tile.lairBlock:3>,
			<Ztones:tile.lairBlock:4>,
			<Ztones:tile.lairBlock:5>,
			<Ztones:tile.lairBlock:6>,
			<Ztones:tile.lairBlock:7>,
			<Ztones:tile.lairBlock:8>,
			<Ztones:tile.lairBlock:9>,
			<Ztones:tile.lairBlock:10>,
			<Ztones:tile.lairBlock:11>,
			<Ztones:tile.lairBlock:12>,
			<Ztones:tile.lairBlock:13>,
			<Ztones:tile.lairBlock:14>,
			<Ztones:tile.lairBlock:15>,
			]
		as IItemStack[];
		for item in lair {
			recipes.remove(item);
			Groups.addVariation("lair", item);
		}
		recipes.addShaped(<Ztones:tile.lairBlock> *8,
			[[StoneTile, StoneTile, StoneTile],
			[StoneTile, <minecraft:netherrack>, StoneTile],
			[StoneTile, StoneTile, StoneTile]]);
			
	# lave
		Groups.addGroup("lave"); 
		var lave =
			[
			<Ztones:tile.laveBlock>,
			<Ztones:tile.laveBlock:1>,
			<Ztones:tile.laveBlock:2>,
			<Ztones:tile.laveBlock:3>,
			<Ztones:tile.laveBlock:4>,
			<Ztones:tile.laveBlock:5>,
			<Ztones:tile.laveBlock:6>,
			<Ztones:tile.laveBlock:7>,
			<Ztones:tile.laveBlock:8>,
			<Ztones:tile.laveBlock:9>,
			<Ztones:tile.laveBlock:10>,
			<Ztones:tile.laveBlock:11>,
			<Ztones:tile.laveBlock:12>,
			<Ztones:tile.laveBlock:13>,
			<Ztones:tile.laveBlock:14>,
			<Ztones:tile.laveBlock:15>,
			]
		as IItemStack[];
		for item in lave {
			recipes.remove(item);
			Groups.addVariation("lave", item);
		}
		recipes.addShaped(<Ztones:tile.laveBlock> *8,
			[[StoneTile, StoneTile, StoneTile],
			[StoneTile, <minecraft:ice>, StoneTile],
			[StoneTile, StoneTile, StoneTile]]);
			
	# mint
		Groups.addGroup("mint"); 
		var mint =
			[
			<Ztones:tile.mintBlock>,
			<Ztones:tile.mintBlock:1>,
			<Ztones:tile.mintBlock:2>,
			<Ztones:tile.mintBlock:3>,
			<Ztones:tile.mintBlock:4>,
			<Ztones:tile.mintBlock:5>,
			<Ztones:tile.mintBlock:6>,
			<Ztones:tile.mintBlock:7>,
			<Ztones:tile.mintBlock:8>,
			<Ztones:tile.mintBlock:9>,
			<Ztones:tile.mintBlock:10>,
			<Ztones:tile.mintBlock:11>,
			<Ztones:tile.mintBlock:12>,
			<Ztones:tile.mintBlock:13>,
			<Ztones:tile.mintBlock:14>,
			<Ztones:tile.mintBlock:15>,
			]
		as IItemStack[];
		for item in mint {
			recipes.remove(item);
			Groups.addVariation("mint", item);
		}
		recipes.addShaped(<Ztones:tile.mintBlock> *8,
			[[StoneTile, StoneTile, StoneTile],
			[StoneTile, <minecraft:slime_ball>, StoneTile],
			[StoneTile, StoneTile, StoneTile]]);
			
	# myst
		Groups.addGroup("myst"); 
		var myst =
			[
			<Ztones:tile.mystBlock>,
			<Ztones:tile.mystBlock:1>,
			<Ztones:tile.mystBlock:2>,
			<Ztones:tile.mystBlock:3>,
			<Ztones:tile.mystBlock:4>,
			<Ztones:tile.mystBlock:5>,
			<Ztones:tile.mystBlock:6>,
			<Ztones:tile.mystBlock:7>,
			<Ztones:tile.mystBlock:8>,
			<Ztones:tile.mystBlock:9>,
			<Ztones:tile.mystBlock:10>,
			<Ztones:tile.mystBlock:11>,
			<Ztones:tile.mystBlock:12>,
			<Ztones:tile.mystBlock:13>,
			<Ztones:tile.mystBlock:14>,
			<Ztones:tile.mystBlock:15>,
			]
		as IItemStack[];
		for item in myst {
			recipes.remove(item);
			Groups.addVariation("myst", item);
		}
		recipes.addShaped(<Ztones:tile.mystBlock> *8,
			[[<minecraft:brown_mushroom_block>, <minecraft:brown_mushroom_block>, <minecraft:brown_mushroom_block>],
			[<minecraft:brown_mushroom_block>, Aurora, <minecraft:brown_mushroom_block>],
			[<minecraft:brown_mushroom_block>, <minecraft:brown_mushroom_block>, <minecraft:brown_mushroom_block>]]);
			
	# reds
		Groups.addGroup("reds"); 
		var reds =
			[
			<Ztones:tile.redsBlock>,
			<Ztones:tile.redsBlock:1>,
			<Ztones:tile.redsBlock:2>,
			<Ztones:tile.redsBlock:3>,
			<Ztones:tile.redsBlock:4>,
			<Ztones:tile.redsBlock:5>,
			<Ztones:tile.redsBlock:6>,
			<Ztones:tile.redsBlock:7>,
			<Ztones:tile.redsBlock:8>,
			<Ztones:tile.redsBlock:9>,
			<Ztones:tile.redsBlock:10>,
			<Ztones:tile.redsBlock:11>,
			<Ztones:tile.redsBlock:12>,
			<Ztones:tile.redsBlock:13>,
			<Ztones:tile.redsBlock:14>,
			<Ztones:tile.redsBlock:15>,
			]
		as IItemStack[];
		for item in reds {
			recipes.remove(item);
			Groups.addVariation("reds", item);
		}
		recipes.addShaped(<Ztones:tile.redsBlock> *8,
			[[StoneTile, StoneTile, StoneTile],
			[StoneTile, <minecraft:redstone>, StoneTile],
			[StoneTile, StoneTile, StoneTile]]);
			
	# roen
		Groups.addGroup("roen"); 
		var roen =
			[
			<Ztones:tile.roenBlock>,
			<Ztones:tile.roenBlock:1>,
			<Ztones:tile.roenBlock:2>,
			<Ztones:tile.roenBlock:3>,
			<Ztones:tile.roenBlock:4>,
			<Ztones:tile.roenBlock:5>,
			<Ztones:tile.roenBlock:6>,
			<Ztones:tile.roenBlock:7>,
			<Ztones:tile.roenBlock:8>,
			<Ztones:tile.roenBlock:9>,
			<Ztones:tile.roenBlock:10>,
			<Ztones:tile.roenBlock:11>,
			<Ztones:tile.roenBlock:12>,
			<Ztones:tile.roenBlock:13>,
			<Ztones:tile.roenBlock:14>,
			<Ztones:tile.roenBlock:15>,
			]
		as IItemStack[];
		for item in roen {
			recipes.remove(item);
			Groups.addVariation("roen", item);
		}
		recipes.addShaped(<Ztones:tile.roenBlock> *8,
			[[StoneTile, StoneTile, StoneTile],
			[StoneTile, <minecraft:sandstone>, StoneTile],
			[StoneTile, StoneTile, StoneTile]]);
			
	# sols
		Groups.addGroup("sols"); 
		var sols =
			[
			<Ztones:tile.solsBlock>,
			<Ztones:tile.solsBlock:1>,
			<Ztones:tile.solsBlock:2>,
			<Ztones:tile.solsBlock:3>,
			<Ztones:tile.solsBlock:4>,
			<Ztones:tile.solsBlock:5>,
			<Ztones:tile.solsBlock:6>,
			<Ztones:tile.solsBlock:7>,
			<Ztones:tile.solsBlock:8>,
			<Ztones:tile.solsBlock:9>,
			<Ztones:tile.solsBlock:10>,
			<Ztones:tile.solsBlock:11>,
			<Ztones:tile.solsBlock:12>,
			<Ztones:tile.solsBlock:13>,
			<Ztones:tile.solsBlock:14>,
			<Ztones:tile.solsBlock:15>,
			]
		as IItemStack[];
		for item in sols {
			recipes.remove(item);
			Groups.addVariation("sols", item);
		}
		recipes.addShaped(<Ztones:tile.solsBlock> *8,
			[[StoneTile, StoneTile, StoneTile],
			[StoneTile, <minecraft:blaze_rod>, StoneTile],
			[StoneTile, StoneTile, StoneTile]]);
			
	# tank
		Groups.addGroup("tank"); 
		var tank =
			[
			<Ztones:tile.tankBlock>,
			<Ztones:tile.tankBlock:1>,
			<Ztones:tile.tankBlock:2>,
			<Ztones:tile.tankBlock:3>,
			<Ztones:tile.tankBlock:4>,
			<Ztones:tile.tankBlock:5>,
			<Ztones:tile.tankBlock:6>,
			<Ztones:tile.tankBlock:7>,
			<Ztones:tile.tankBlock:8>,
			<Ztones:tile.tankBlock:9>,
			<Ztones:tile.tankBlock:10>,
			<Ztones:tile.tankBlock:11>,
			<Ztones:tile.tankBlock:12>,
			<Ztones:tile.tankBlock:13>,
			<Ztones:tile.tankBlock:14>,
			<Ztones:tile.tankBlock:15>,
			]
		as IItemStack[];
		for item in tank {
			recipes.remove(item);
			Groups.addVariation("tank", item);
		}
		recipes.addShaped(<Ztones:tile.tankBlock> *8,
			[[StoneTile, StoneTile, StoneTile],
			[StoneTile, <ore:ingotIron>, StoneTile],
			[StoneTile, StoneTile, StoneTile]]);
			
	# vect
		Groups.addGroup("vect"); 
		var vect =
			[
			<Ztones:tile.vectBlock>,
			<Ztones:tile.vectBlock:1>,
			<Ztones:tile.vectBlock:2>,
			<Ztones:tile.vectBlock:3>,
			<Ztones:tile.vectBlock:4>,
			<Ztones:tile.vectBlock:5>,
			<Ztones:tile.vectBlock:6>,
			<Ztones:tile.vectBlock:7>,
			<Ztones:tile.vectBlock:8>,
			<Ztones:tile.vectBlock:9>,
			<Ztones:tile.vectBlock:10>,
			<Ztones:tile.vectBlock:11>,
			<Ztones:tile.vectBlock:12>,
			<Ztones:tile.vectBlock:13>,
			<Ztones:tile.vectBlock:14>,
			<Ztones:tile.vectBlock:15>,
			]
		as IItemStack[];
		for item in vect {
			recipes.remove(item);
			Groups.addVariation("vect", item);
		}
		recipes.addShaped(<Ztones:tile.vectBlock> *8,
			[[StoneTile, StoneTile, StoneTile],
			[StoneTile, <minecraft:ghast_tear>, StoneTile],
			[StoneTile, StoneTile, StoneTile]]);
			
	# vena
		Groups.addGroup("vena"); 
		var vena =
			[
			<Ztones:tile.venaBlock>,
			<Ztones:tile.venaBlock:1>,
			<Ztones:tile.venaBlock:2>,
			<Ztones:tile.venaBlock:3>,
			<Ztones:tile.venaBlock:4>,
			<Ztones:tile.venaBlock:5>,
			<Ztones:tile.venaBlock:6>,
			<Ztones:tile.venaBlock:7>,
			<Ztones:tile.venaBlock:8>,
			<Ztones:tile.venaBlock:9>,
			<Ztones:tile.venaBlock:10>,
			<Ztones:tile.venaBlock:11>,
			<Ztones:tile.venaBlock:12>,
			<Ztones:tile.venaBlock:13>,
			<Ztones:tile.venaBlock:14>,
			<Ztones:tile.venaBlock:15>,
			]
		as IItemStack[];
		for item in vena {
			recipes.remove(item);
			Groups.addVariation("vena", item);
		}
		recipes.addShaped(<Ztones:tile.venaBlock> *8,
			[[StoneTile, StoneTile, StoneTile],
			[StoneTile, <minecraft:ender_pearl>, StoneTile],
			[StoneTile, StoneTile, StoneTile]]);
			
	# zech
		Groups.addGroup("zech"); 
		var zech =
			[
			<Ztones:tile.zechBlock>,
			<Ztones:tile.zechBlock:1>,
			<Ztones:tile.zechBlock:2>,
			<Ztones:tile.zechBlock:3>,
			<Ztones:tile.zechBlock:4>,
			<Ztones:tile.zechBlock:5>,
			<Ztones:tile.zechBlock:6>,
			<Ztones:tile.zechBlock:7>,
			<Ztones:tile.zechBlock:8>,
			<Ztones:tile.zechBlock:9>,
			<Ztones:tile.zechBlock:10>,
			<Ztones:tile.zechBlock:11>,
			<Ztones:tile.zechBlock:12>,
			<Ztones:tile.zechBlock:13>,
			<Ztones:tile.zechBlock:14>,
			<Ztones:tile.zechBlock:15>,
			]
		as IItemStack[];
		for item in zech {
			recipes.remove(item);
			Groups.addVariation("zech", item);
		}
		recipes.addShaped(<Ztones:tile.zechBlock> *8,
			[[<Ztones:tile.ztylBlock:4>, <Ztones:tile.ztylBlock:4>, <Ztones:tile.ztylBlock:4>],
			[<Ztones:tile.ztylBlock:4>, Aurora, <Ztones:tile.ztylBlock:4>],
			[<Ztones:tile.ztylBlock:4>, <Ztones:tile.ztylBlock:4>, <Ztones:tile.ztylBlock:4>]]);
			
	# zion
		Groups.addGroup("zion"); 
		var zion =
			[
			<Ztones:tile.zionBlock>,
			<Ztones:tile.zionBlock:1>,
			<Ztones:tile.zionBlock:2>,
			<Ztones:tile.zionBlock:3>,
			<Ztones:tile.zionBlock:4>,
			<Ztones:tile.zionBlock:5>,
			<Ztones:tile.zionBlock:6>,
			<Ztones:tile.zionBlock:7>,
			<Ztones:tile.zionBlock:8>,
			<Ztones:tile.zionBlock:9>,
			<Ztones:tile.zionBlock:10>,
			<Ztones:tile.zionBlock:11>,
			<Ztones:tile.zionBlock:12>,
			<Ztones:tile.zionBlock:13>,
			<Ztones:tile.zionBlock:14>,
			<Ztones:tile.zionBlock:15>,
			]
		as IItemStack[];
		for item in zion {
			recipes.remove(item);
			Groups.addVariation("zion", item);
		}
		recipes.addShaped(<Ztones:tile.zionBlock> *8,
			[[<Ztones:tile.ztylBlock:7>, <Ztones:tile.ztylBlock:7>, <Ztones:tile.ztylBlock:7>],
			[<Ztones:tile.ztylBlock:7>, Aurora, <Ztones:tile.ztylBlock:7>],
			[<Ztones:tile.ztylBlock:7>, <Ztones:tile.ztylBlock:7>, <Ztones:tile.ztylBlock:7>]]);
			
	# zome
		Groups.addGroup("zome"); 
		var zome =
			[
			<Ztones:tile.zomeBlock>,
			<Ztones:tile.zomeBlock:1>,
			<Ztones:tile.zomeBlock:2>,
			<Ztones:tile.zomeBlock:3>,
			<Ztones:tile.zomeBlock:4>,
			<Ztones:tile.zomeBlock:5>,
			<Ztones:tile.zomeBlock:6>,
			<Ztones:tile.zomeBlock:7>,
			<Ztones:tile.zomeBlock:8>,
			<Ztones:tile.zomeBlock:9>,
			<Ztones:tile.zomeBlock:10>,
			<Ztones:tile.zomeBlock:11>,
			<Ztones:tile.zomeBlock:12>,
			<Ztones:tile.zomeBlock:13>,
			<Ztones:tile.zomeBlock:14>,
			<Ztones:tile.zomeBlock:15>,
			]
		as IItemStack[];
		for item in zome {
			recipes.remove(item);
			Groups.addVariation("zome", item);
		}
		recipes.addShaped(<Ztones:tile.zomeBlock> *8,
			[[<Ztones:tile.ztylBlock:6>, <Ztones:tile.ztylBlock:6>, <Ztones:tile.ztylBlock:6>],
			[<Ztones:tile.ztylBlock:6>, Aurora, <Ztones:tile.ztylBlock:6>],
			[<Ztones:tile.ztylBlock:6>, <Ztones:tile.ztylBlock:6>, <Ztones:tile.ztylBlock:6>]]);
			
	# zone
		Groups.addGroup("zone"); 
		var zone =
			[
			<Ztones:tile.zoneBlock>,
			<Ztones:tile.zoneBlock:1>,
			<Ztones:tile.zoneBlock:2>,
			<Ztones:tile.zoneBlock:3>,
			<Ztones:tile.zoneBlock:4>,
			<Ztones:tile.zoneBlock:5>,
			<Ztones:tile.zoneBlock:6>,
			<Ztones:tile.zoneBlock:7>,
			<Ztones:tile.zoneBlock:8>,
			<Ztones:tile.zoneBlock:9>,
			<Ztones:tile.zoneBlock:10>,
			<Ztones:tile.zoneBlock:11>,
			<Ztones:tile.zoneBlock:12>,
			<Ztones:tile.zoneBlock:13>,
			<Ztones:tile.zoneBlock:14>,
			<Ztones:tile.zoneBlock:15>,
			]
		as IItemStack[];
		for item in zone {
			recipes.remove(item);
			Groups.addVariation("zone", item);
		}
		recipes.addShaped(<Ztones:tile.zoneBlock> *8,
			[[<Ztones:tile.ztylBlock:3>, <Ztones:tile.ztylBlock:3>, <Ztones:tile.ztylBlock:3>],
			[<Ztones:tile.ztylBlock:3>, Aurora, <Ztones:tile.ztylBlock:3>],
			[<Ztones:tile.ztylBlock:3>, <Ztones:tile.ztylBlock:3>, <Ztones:tile.ztylBlock:3>]]);
			
	# ztyl
		Groups.addGroup("ztyl"); 
		var ztyl =
			[
			<Ztones:tile.ztylBlock>,
			<Ztones:tile.ztylBlock:1>,
			<Ztones:tile.ztylBlock:2>,
			<Ztones:tile.ztylBlock:3>,
			<Ztones:tile.ztylBlock:4>,
			<Ztones:tile.ztylBlock:5>,
			<Ztones:tile.ztylBlock:6>,
			<Ztones:tile.ztylBlock:7>,
			<Ztones:tile.ztylBlock:8>,
			<Ztones:tile.ztylBlock:9>,
			<Ztones:tile.ztylBlock:10>,
			<Ztones:tile.ztylBlock:11>,
			<Ztones:tile.ztylBlock:12>,
			<Ztones:tile.ztylBlock:13>,
			<Ztones:tile.ztylBlock:14>,
			<Ztones:tile.ztylBlock:15>,
			]
		as IItemStack[];
		for item in ztyl {
			recipes.remove(item);
			Groups.addVariation("ztyl", item);
		}
		recipes.addShaped(<Ztones:tile.ztylBlock> *32,
			[[StoneTile, StoneTile, StoneTile],
			[<minecraft:iron_block>, StoneTile, <minecraft:coal_block>],
			[StoneTile, StoneTile, StoneTile]]);
			
	# zorg
		Groups.addGroup("zorg"); 
		var zorg =
			[
			<Ztones:tile.zorgBlock>,
			<Ztones:tile.zorgBlock:1>,
			<Ztones:tile.zorgBlock:2>,
			<Ztones:tile.zorgBlock:3>,
			<Ztones:tile.zorgBlock:4>,
			<Ztones:tile.zorgBlock:5>,
			<Ztones:tile.zorgBlock:6>,
			<Ztones:tile.zorgBlock:7>,
			<Ztones:tile.zorgBlock:8>,
			<Ztones:tile.zorgBlock:9>,
			<Ztones:tile.zorgBlock:10>,
			<Ztones:tile.zorgBlock:11>,
			<Ztones:tile.zorgBlock:12>,
			<Ztones:tile.zorgBlock:13>,
			<Ztones:tile.zorgBlock:14>,
			<Ztones:tile.zorgBlock:15>,
			]
		as IItemStack[];
		for item in zorg {
			recipes.remove(item);
			Groups.addVariation("zorg", item);
		}
		recipes.addShaped(<Ztones:tile.zorgBlock> *8,
			[[<Ztones:tile.ztylBlock:5>, <Ztones:tile.ztylBlock:5>, <Ztones:tile.ztylBlock:5>],
			[<Ztones:tile.ztylBlock:5>, Aurora, <Ztones:tile.ztylBlock:5>],
			[<Ztones:tile.ztylBlock:5>, <Ztones:tile.ztylBlock:5>, <Ztones:tile.ztylBlock:5>]]);
			
	# glaxx
		Groups.addGroup("glaxx"); 
		var glaxx =
			[
			<Ztones:tile.glaxx>,
			<Ztones:tile.glaxx:1>,
			<Ztones:tile.glaxx:2>,
			<Ztones:tile.glaxx:3>,
			<Ztones:tile.glaxx:4>,
			<Ztones:tile.glaxx:5>,
			<Ztones:tile.glaxx:6>,
			<Ztones:tile.glaxx:7>,
			<Ztones:tile.glaxx:8>,
			<Ztones:tile.glaxx:9>,
			<Ztones:tile.glaxx:10>,
			<Ztones:tile.glaxx:11>,
			<Ztones:tile.glaxx:12>,
			<Ztones:tile.glaxx:13>,
			<Ztones:tile.glaxx:14>,
			<Ztones:tile.glaxx:15>,
			]
		as IItemStack[];
		for item in glaxx {
			recipes.remove(item);
			Groups.addVariation("glaxx", item);
		}
		recipes.addShaped(<Ztones:tile.glaxx> *8,
			[[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
			[<ore:blockGlass>, Aurora, <ore:blockGlass>],
			[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);

	# reed
		Groups.addGroup("reed"); 
		var reed =
			[
			<Ztones:tile.reedBlock>,
			<Ztones:tile.reedBlock:1>,
			<Ztones:tile.reedBlock:2>,
			<Ztones:tile.reedBlock:3>,
			<Ztones:tile.reedBlock:4>,
			<Ztones:tile.reedBlock:5>,
			<Ztones:tile.reedBlock:6>,
			<Ztones:tile.reedBlock:7>,
			<Ztones:tile.reedBlock:8>,
			<Ztones:tile.reedBlock:9>,
			<Ztones:tile.reedBlock:10>,
			<Ztones:tile.reedBlock:11>,
			<Ztones:tile.reedBlock:12>,
			<Ztones:tile.reedBlock:13>,
			<Ztones:tile.reedBlock:14>,
			<Ztones:tile.reedBlock:15>,
			]
		as IItemStack[];
		for item in reed {
			recipes.remove(item);
			Groups.addVariation("reed", item);
		}
		recipes.addShaped(<Ztones:tile.reedBlock> *8,
			[[StoneTile, StoneTile, StoneTile],
			[StoneTile, <minecraft:reeds>, StoneTile],
			[StoneTile, StoneTile, StoneTile]]);
			
	# sync
		Groups.addGroup("sync"); 
		var sync =
			[
			<Ztones:tile.syncBlock>,
			<Ztones:tile.syncBlock:1>,
			<Ztones:tile.syncBlock:2>,
			<Ztones:tile.syncBlock:3>,
			<Ztones:tile.syncBlock:4>,
			<Ztones:tile.syncBlock:5>,
			<Ztones:tile.syncBlock:6>,
			<Ztones:tile.syncBlock:7>,
			<Ztones:tile.syncBlock:8>,
			<Ztones:tile.syncBlock:9>,
			<Ztones:tile.syncBlock:10>,
			<Ztones:tile.syncBlock:11>,
			<Ztones:tile.syncBlock:12>,
			<Ztones:tile.syncBlock:13>,
			<Ztones:tile.syncBlock:14>,
			<Ztones:tile.syncBlock:15>,
			]
		as IItemStack[];
		for item in sync {
			recipes.remove(item);
			Groups.addVariation("sync", item);
		}
		recipes.addShaped(<Ztones:tile.syncBlock> *8,
			[[StoneTile, StoneTile, StoneTile],
			[StoneTile, <minecraft:emerald>, StoneTile],
			[StoneTile, StoneTile, StoneTile]]);
			
	# zkul
		Groups.addGroup("zkul"); 
		var zkul =
			[
			<Ztones:tile.zkulBlock>,
			<Ztones:tile.zkulBlock:1>,
			<Ztones:tile.zkulBlock:2>,
			<Ztones:tile.zkulBlock:3>,
			<Ztones:tile.zkulBlock:4>,
			<Ztones:tile.zkulBlock:5>,
			<Ztones:tile.zkulBlock:6>,
			<Ztones:tile.zkulBlock:7>,
			<Ztones:tile.zkulBlock:8>,
			<Ztones:tile.zkulBlock:9>,
			<Ztones:tile.zkulBlock:10>,
			<Ztones:tile.zkulBlock:11>,
			<Ztones:tile.zkulBlock:12>,
			<Ztones:tile.zkulBlock:13>,
			<Ztones:tile.zkulBlock:14>,
			<Ztones:tile.zkulBlock:15>,
			]
		as IItemStack[];
		for item in zkul {
			recipes.remove(item);
			Groups.addVariation("zkul", item);
		}
		recipes.addShaped(<Ztones:tile.zkulBlock> *8,
			[[<Ztones:tile.ztylBlock:10>, <Ztones:tile.ztylBlock:10>, <Ztones:tile.ztylBlock:10>],
			[<Ztones:tile.ztylBlock:10>, Aurora, <Ztones:tile.ztylBlock:10>],
			[<Ztones:tile.ztylBlock:10>, <Ztones:tile.ztylBlock:10>, <Ztones:tile.ztylBlock:10>]]);
			
	# azur
		Groups.addGroup("azur"); 
		var azur =
			[
			<Ztones:tile.azurBlock>,
			<Ztones:tile.azurBlock:1>,
			<Ztones:tile.azurBlock:2>,
			<Ztones:tile.azurBlock:3>,
			<Ztones:tile.azurBlock:4>,
			<Ztones:tile.azurBlock:5>,
			<Ztones:tile.azurBlock:6>,
			<Ztones:tile.azurBlock:7>,
			<Ztones:tile.azurBlock:8>,
			<Ztones:tile.azurBlock:9>,
			<Ztones:tile.azurBlock:10>,
			<Ztones:tile.azurBlock:11>,
			<Ztones:tile.azurBlock:12>,
			<Ztones:tile.azurBlock:13>,
			<Ztones:tile.azurBlock:14>,
			<Ztones:tile.azurBlock:15>,
			]
		as IItemStack[];
		for item in azur {
			recipes.remove(item);
			Groups.addVariation("azur", item);
		}
		recipes.addShaped(<Ztones:tile.azurBlock> *8,
			[[StoneTile, StoneTile, StoneTile],
			[StoneTile, <minecraft:dye:4>, StoneTile],
			[StoneTile, StoneTile, StoneTile]]);
			
	# zeta
		Groups.addGroup("zeta"); 
		var zeta =
			[
			<Ztones:tile.zetaBlock>,
			<Ztones:tile.zetaBlock:1>,
			<Ztones:tile.zetaBlock:2>,
			<Ztones:tile.zetaBlock:3>,
			<Ztones:tile.zetaBlock:4>,
			<Ztones:tile.zetaBlock:5>,
			<Ztones:tile.zetaBlock:6>,
			<Ztones:tile.zetaBlock:7>,
			<Ztones:tile.zetaBlock:8>,
			<Ztones:tile.zetaBlock:9>,
			<Ztones:tile.zetaBlock:10>,
			<Ztones:tile.zetaBlock:11>,
			<Ztones:tile.zetaBlock:12>,
			<Ztones:tile.zetaBlock:13>,
			<Ztones:tile.zetaBlock:14>,
			<Ztones:tile.zetaBlock:15>,
			]
		as IItemStack[];
		for item in zeta {
			recipes.remove(item);
			Groups.addVariation("zeta", item);
		}
		recipes.addShaped(<Ztones:tile.zetaBlock> *8,
			[[<Ztones:tile.ztylBlock:13>, <Ztones:tile.ztylBlock:13>, <Ztones:tile.ztylBlock:13>],
			[<Ztones:tile.ztylBlock:13>, Aurora, <Ztones:tile.ztylBlock:13>],
			[<Ztones:tile.ztylBlock:13>, <Ztones:tile.ztylBlock:13>, <Ztones:tile.ztylBlock:13>]]);
			
	# zest
		Groups.addGroup("zest"); 
		var zest =
			[
			<Ztones:tile.zestBlock>,
			<Ztones:tile.zestBlock:1>,
			<Ztones:tile.zestBlock:2>,
			<Ztones:tile.zestBlock:3>,
			<Ztones:tile.zestBlock:4>,
			<Ztones:tile.zestBlock:5>,
			<Ztones:tile.zestBlock:6>,
			<Ztones:tile.zestBlock:7>,
			<Ztones:tile.zestBlock:8>,
			<Ztones:tile.zestBlock:9>,
			<Ztones:tile.zestBlock:10>,
			<Ztones:tile.zestBlock:11>,
			<Ztones:tile.zestBlock:12>,
			<Ztones:tile.zestBlock:13>,
			<Ztones:tile.zestBlock:14>,
			<Ztones:tile.zestBlock:15>,
			]
		as IItemStack[];
		for item in zest {
			recipes.remove(item);
			Groups.addVariation("zest", item);
		}
		recipes.addShaped(<Ztones:tile.zestBlock> *8,
			[[<Ztones:tile.ztylBlock:11>, <Ztones:tile.ztylBlock:11>, <Ztones:tile.ztylBlock:11>],
			[<Ztones:tile.ztylBlock:11>, Aurora, <Ztones:tile.ztylBlock:11>],
			[<Ztones:tile.ztylBlock:11>, <Ztones:tile.ztylBlock:11>, <Ztones:tile.ztylBlock:11>]]);
			
	# zoea
		Groups.addGroup("zoea"); 
		var zoea =
			[
			<Ztones:tile.zoeaBlock>,
			<Ztones:tile.zoeaBlock:1>,
			<Ztones:tile.zoeaBlock:2>,
			<Ztones:tile.zoeaBlock:3>,
			<Ztones:tile.zoeaBlock:4>,
			<Ztones:tile.zoeaBlock:5>,
			<Ztones:tile.zoeaBlock:6>,
			<Ztones:tile.zoeaBlock:7>,
			<Ztones:tile.zoeaBlock:8>,
			<Ztones:tile.zoeaBlock:9>,
			<Ztones:tile.zoeaBlock:10>,
			<Ztones:tile.zoeaBlock:11>,
			<Ztones:tile.zoeaBlock:12>,
			<Ztones:tile.zoeaBlock:13>,
			<Ztones:tile.zoeaBlock:14>,
			<Ztones:tile.zoeaBlock:15>,
			]
		as IItemStack[];
		for item in zoea {
			recipes.remove(item);
			Groups.addVariation("zoea", item);
		}
		recipes.addShaped(<Ztones:tile.zoeaBlock> *8,
			[[<Ztones:tile.ztylBlock:14>, <Ztones:tile.ztylBlock:14>, <Ztones:tile.ztylBlock:14>],
			[<Ztones:tile.ztylBlock:14>, Aurora, <Ztones:tile.ztylBlock:14>],
			[<Ztones:tile.ztylBlock:14>, <Ztones:tile.ztylBlock:14>, <Ztones:tile.ztylBlock:14>]]);
			
	# zane
		Groups.addGroup("zane"); 
		var zane =
			[
			<Ztones:tile.zaneBlock>,
			<Ztones:tile.zaneBlock:1>,
			<Ztones:tile.zaneBlock:2>,
			<Ztones:tile.zaneBlock:3>,
			<Ztones:tile.zaneBlock:4>,
			<Ztones:tile.zaneBlock:5>,
			<Ztones:tile.zaneBlock:6>,
			<Ztones:tile.zaneBlock:7>,
			<Ztones:tile.zaneBlock:8>,
			<Ztones:tile.zaneBlock:9>,
			<Ztones:tile.zaneBlock:10>,
			<Ztones:tile.zaneBlock:11>,
			<Ztones:tile.zaneBlock:12>,
			<Ztones:tile.zaneBlock:13>,
			<Ztones:tile.zaneBlock:14>,
			<Ztones:tile.zaneBlock:15>,
			]
		as IItemStack[];
		for item in zane {
			recipes.remove(item);
			Groups.addVariation("zane", item);
		}
		recipes.addShaped(<Ztones:tile.zaneBlock> *8,
			[[<Ztones:tile.ztylBlock:12>, <Ztones:tile.ztylBlock:12>, <Ztones:tile.ztylBlock:12>],
			[<Ztones:tile.ztylBlock:12>, Aurora, <Ztones:tile.ztylBlock:12>],
			[<Ztones:tile.ztylBlock:12>, <Ztones:tile.ztylBlock:12>, <Ztones:tile.ztylBlock:12>]]);
			
	# zyth
		Groups.addGroup("zyth"); 
		var zyth =
			[
			<Ztones:tile.zythBlock>,
			<Ztones:tile.zythBlock:1>,
			<Ztones:tile.zythBlock:2>,
			<Ztones:tile.zythBlock:3>,
			<Ztones:tile.zythBlock:4>,
			<Ztones:tile.zythBlock:5>,
			<Ztones:tile.zythBlock:6>,
			<Ztones:tile.zythBlock:7>,
			<Ztones:tile.zythBlock:8>,
			<Ztones:tile.zythBlock:9>,
			<Ztones:tile.zythBlock:10>,
			<Ztones:tile.zythBlock:11>,
			<Ztones:tile.zythBlock:12>,
			<Ztones:tile.zythBlock:13>,
			<Ztones:tile.zythBlock:14>,
			<Ztones:tile.zythBlock:15>,
			]
		as IItemStack[];
		for item in zyth {
			recipes.remove(item);
			Groups.addVariation("zyth", item);
		}
		recipes.addShaped(<Ztones:tile.zythBlock> *8,
			[[<Ztones:tile.ztylBlock:15>, <Ztones:tile.ztylBlock:15>, <Ztones:tile.ztylBlock:15>],
			[<Ztones:tile.ztylBlock:15>, Aurora, <Ztones:tile.ztylBlock:15>],
			[<Ztones:tile.ztylBlock:15>, <Ztones:tile.ztylBlock:15>, <Ztones:tile.ztylBlock:15>]]);