/* 
СКРИПТ СДЕЛАН ТАК, ЧТО ДЛЯ МИНИМАЛЬНОЙ НАСТРОЙКИ НЕ НУЖНО ВООБЩЕ НИЧЕГО МЕНЯТЬ!
ПРОСТО НИЧЕГО НЕ ТРОГАЙТЕ, ОСТАНОВИТЕСЬ НА ЭТОЙ СТРОКЕ И ВСЁ БУДЕТ РАБОТАТЬ!

Ну а для тех, кому нужно что-нибудь подкорректировать, читайте далее.
*/

/* 
Можете настраивать всё, что захотите (аспекты, рецепты).
ОФИЦИАЛЬНАЯ ВИКИ: http://minetweaker3.powerofbytes.com/wiki/ModTweaker:Thaumcraft_4_Support:Research

Виверновые вещи создаются на магическом верстаке. Крафт такой же, как и в ваниле.
Дракониевые вещи создаются на алтаре наполнения. Крафт такой же, как и в ваниле.
Посох силы создается на алтаре наполнения. Крафт немного усложнен.

Все аспекты можно изменять (см. рецепты).
Весь раздел разблокирован. Исследования я не делал, если необходимо, обратитесь к вики. Не забудьте в таком случае уставноить параметр unlock на false (ниже будет).
Кроме того, исследования плохо работают с mt reload и часто нужно будет полностью перезапустить Minecraft, чтобы применились изменения.
*/

# КОНФИГУРАЦИЯ: название вкладки в таумономиконе
var tabName = "Draconic Evolution";

# КОНФИГУРАЦИЯ: настройка иконки вкладки
# необходимо настроить путь, откуда будет браться иконка [по умолчанию: сердце дракона из DE]
var tabTextureMod = "draconicevolution"; # мод, откуда будет браться текстура [по умолчанию: draconicevolution]
var tabTextureSrc = "textures/items/draconic_Heart.png"; # полный путь текстуры после мода [по умолчанию: textures/items/draconic_Heart.png]

# КОНФИГУРАЦИЯ: настройка нестабильности
var instability = 8; # ВСЕ ДРАКОНИЕВЫЕ ВЕЩИ [по умолчанию: ОЧЕНЬ СИЛЬНАЯ (8)]
var instabilityStaff = 10; # ПОСОХ СИЛЫ [по умолчанию: ОПАСНАЯ (10)]

# КОНФИГУРАЦИЯ: авто-раблокировка
# Желательно не ставить false, если не разбираетесь в скриптах.
# Выключает необходимость исследования вещей, вот только само исследование в этом скрипте не прописаны, и если включить (поставить false), вам придется дописывать всё самим.
var unlock = true;

# -------------------------------
# -------------------------------
# -------------------------------

# Таумономикон
mods.thaumcraft.Research.addTab(tabName, tabTextureMod, tabTextureSrc);
  game.setLocalization("en_US", "tc.research_category." + tabName, tabName);
  game.setLocalization("ru_RU", "tc.research_category." + tabName, tabName);



# wyvernHelm / шлем
recipes.remove(<DraconicEvolution:wyvernHelm:*>);
mods.thaumcraft.Arcane.addShaped("ASPECTS",
  <DraconicEvolution:wyvernHelm>.withTag({Energy: 0}),
  "aqua 150, terra 150, perditio 150, ordo 150, aer 150, ignis 150",
  [[<DraconicEvolution:draconiumIngot>, <DraconicEvolution:wyvernCore>, <DraconicEvolution:draconiumIngot>],
  [<DraconicEvolution:draconiumIngot>, <minecraft:diamond_helmet>, <DraconicEvolution:draconiumIngot>],
  [<DraconicEvolution:draconiumIngot>, <DraconicEvolution:draconiumEnergyCore>, <DraconicEvolution:draconiumIngot>]]);

mods.thaumcraft.Research.addResearch("wyvernHelm", tabName, null, 0, 0, 0, <DraconicEvolution:wyvernHelm>);
  game.setLocalization("en_US", "tc.research_name.wyvernHelm", "Wyvern Helm");
  game.setLocalization("en_US", "tc.research_text.wyvernHelm", "Wyvern Helm");
  game.setLocalization("ru_RU", "tc.research_name.wyvernHelm", "Шлем Виверны");
  game.setLocalization("ru_RU", "tc.research_text.wyvernHelm", "Шлем Виверны");

mods.thaumcraft.Research.addPage("wyvernHelm", "derp.research_page.wyvernHelm");
  game.setLocalization("en_US", "derp.research_page.wyvernHelm", "Wyvern Helm");
  game.setLocalization("ru_RU", "derp.research_page.wyvernHelm", "Шлем Виверны");

mods.thaumcraft.Research.addArcanePage("wyvernHelm", <DraconicEvolution:wyvernHelm>.withTag({Energy: 0}));
mods.thaumcraft.Research.setAutoUnlock("wyvernHelm", unlock);



# wyvernChest / нагрудник
recipes.remove(<DraconicEvolution:wyvernChest:*>);
mods.thaumcraft.Arcane.addShaped("ASPECTS",
  <DraconicEvolution:wyvernChest>.withTag({Energy: 0}),
  "aqua 150, terra 150, perditio 150, ordo 150, aer 150, ignis 150",
  [[<DraconicEvolution:draconiumIngot>, <DraconicEvolution:wyvernCore>, <DraconicEvolution:draconiumIngot>],
  [<DraconicEvolution:draconiumIngot>, <minecraft:diamond_chestplate>, <DraconicEvolution:draconiumIngot>],
  [<DraconicEvolution:draconiumIngot>, <DraconicEvolution:draconiumEnergyCore>, <DraconicEvolution:draconiumIngot>]]);

mods.thaumcraft.Research.addResearch("wyvernChest", tabName, null, 1, 0, 0, <DraconicEvolution:wyvernChest>);
  game.setLocalization("en_US", "tc.research_name.wyvernChest", "Wyvern Chestplate");
  game.setLocalization("en_US", "tc.research_text.wyvernChest", "Wyvern Chestplate");
  game.setLocalization("ru_RU", "tc.research_name.wyvernChest", "Нагрудник Виверны");
  game.setLocalization("ru_RU", "tc.research_text.wyvernChest", "Нагрудник Виверны");

mods.thaumcraft.Research.addPage("wyvernChest", "derp.research_page.wyvernChest");
  game.setLocalization("en_US", "derp.research_page.wyvernChest", "Wyvern Chestplate");
  game.setLocalization("ru_RU", "derp.research_page.wyvernChest", "Нагрудник Виверны");

mods.thaumcraft.Research.addArcanePage("wyvernChest", <DraconicEvolution:wyvernChest>.withTag({Energy: 0}));
mods.thaumcraft.Research.setAutoUnlock("wyvernChest", unlock);



# wyvernLeggs / поножи
recipes.remove(<DraconicEvolution:wyvernLeggs:*>);
mods.thaumcraft.Arcane.addShaped("ASPECTS",
  <DraconicEvolution:wyvernLeggs>.withTag({Energy: 0}),
  "aqua 150, terra 150, perditio 150, ordo 150, aer 150, ignis 150",
  [[<DraconicEvolution:draconiumIngot>, <DraconicEvolution:wyvernCore>, <DraconicEvolution:draconiumIngot>],
  [<DraconicEvolution:draconiumIngot>, <minecraft:diamond_leggings>, <DraconicEvolution:draconiumIngot>],
  [<DraconicEvolution:draconiumIngot>, <DraconicEvolution:draconiumEnergyCore>, <DraconicEvolution:draconiumIngot>]]);

mods.thaumcraft.Research.addResearch("wyvernLeggs", tabName, null, 2, 0, 0, <DraconicEvolution:wyvernLeggs>);
  game.setLocalization("en_US", "tc.research_name.wyvernLeggs", "Wyvern Leggins");
  game.setLocalization("en_US", "tc.research_text.wyvernLeggs", "Wyvern Leggins");
  game.setLocalization("ru_RU", "tc.research_name.wyvernLeggs", "Поножи Виверны");
  game.setLocalization("ru_RU", "tc.research_text.wyvernLeggs", "Поножи Виверны");

mods.thaumcraft.Research.addPage("wyvernLeggs", "derp.research_page.wyvernLeggs");
  game.setLocalization("en_US", "derp.research_page.wyvernLeggs", "Wyvern Leggins");
  game.setLocalization("ru_RU", "derp.research_page.wyvernLeggs", "Поножи Виверны");

mods.thaumcraft.Research.addArcanePage("wyvernLeggs", <DraconicEvolution:wyvernLeggs>.withTag({Energy: 0}));
mods.thaumcraft.Research.setAutoUnlock("wyvernLeggs", unlock);



# wyvernBoots / ботинки
recipes.remove(<DraconicEvolution:wyvernBoots:*>);
mods.thaumcraft.Arcane.addShaped("ASPECTS",
  <DraconicEvolution:wyvernBoots>.withTag({Energy: 0}),
  "aqua 150, terra 150, perditio 150, ordo 150, aer 150, ignis 150",
  [[<DraconicEvolution:draconiumIngot>, <DraconicEvolution:wyvernCore>, <DraconicEvolution:draconiumIngot>],
  [<DraconicEvolution:draconiumIngot>, <minecraft:diamond_boots>, <DraconicEvolution:draconiumIngot>],
  [<DraconicEvolution:draconiumIngot>, <DraconicEvolution:draconiumEnergyCore>, <DraconicEvolution:draconiumIngot>]]);

mods.thaumcraft.Research.addResearch("wyvernBoots", tabName, null, 3, 0, 0, <DraconicEvolution:wyvernBoots>);
  game.setLocalization("en_US", "tc.research_name.wyvernBoots", "Wyvern Boots");
  game.setLocalization("en_US", "tc.research_text.wyvernBoots", "Wyvern Boots");
  game.setLocalization("ru_RU", "tc.research_name.wyvernBoots", "Ботинки Виверны");
  game.setLocalization("ru_RU", "tc.research_text.wyvernBoots", "Ботинки Виверны");

mods.thaumcraft.Research.addPage("wyvernBoots", "derp.research_page.wyvernBoots");
  game.setLocalization("en_US", "derp.research_page.wyvernBoots", "Wyvern Boots");
  game.setLocalization("ru_RU", "derp.research_page.wyvernBoots", "Ботинки Виверны");

mods.thaumcraft.Research.addArcanePage("wyvernBoots", <DraconicEvolution:wyvernBoots>.withTag({Energy: 0}));
mods.thaumcraft.Research.setAutoUnlock("wyvernBoots", unlock);



# wyvernSword / меч
recipes.remove(<DraconicEvolution:wyvernSword:*>);
mods.thaumcraft.Arcane.addShaped("ASPECTS",
  <DraconicEvolution:wyvernSword>.withTag({Energy: 0}),
  "aqua 150, terra 150, perditio 150, ordo 150, aer 150, ignis 150",
  [[null, <DraconicEvolution:wyvernCore>, null],
  [<DraconicEvolution:draconiumIngot>, <minecraft:diamond_sword>, <DraconicEvolution:draconiumIngot>],
  [null, <DraconicEvolution:draconiumEnergyCore>, null]]);

mods.thaumcraft.Research.addResearch("wyvernSword", tabName, null, 0, 1, 0, <DraconicEvolution:wyvernSword>);
  game.setLocalization("en_US", "tc.research_name.wyvernSword", "Sword of the Wyvern");
  game.setLocalization("en_US", "tc.research_text.wyvernSword", "Sword of the Wyvern");
  game.setLocalization("ru_RU", "tc.research_name.wyvernSword", "Меч Виверны");
  game.setLocalization("ru_RU", "tc.research_text.wyvernSword", "Меч Виверны");

mods.thaumcraft.Research.addPage("wyvernSword", "derp.research_page.wyvernSword");
  game.setLocalization("en_US", "derp.research_page.wyvernSword", "Sword of the Wyvern");
  game.setLocalization("ru_RU", "derp.research_page.wyvernSword", "Меч Виверны");

mods.thaumcraft.Research.addArcanePage("wyvernSword", <DraconicEvolution:wyvernSword>.withTag({Energy: 0}));
mods.thaumcraft.Research.setAutoUnlock("wyvernSword", unlock);



# wyvernBow / лук
recipes.remove(<DraconicEvolution:wyvernBow:*>);
mods.thaumcraft.Arcane.addShaped("ASPECTS",
  <DraconicEvolution:wyvernBow>.withTag({Energy: 0}),
  "aqua 150, terra 150, perditio 150, ordo 150, aer 150, ignis 150",
  [[null, <DraconicEvolution:wyvernCore>, null],
  [<DraconicEvolution:draconiumIngot>, <minecraft:bow>, <DraconicEvolution:draconiumIngot>],
  [null, <DraconicEvolution:draconiumEnergyCore>, null]]);

mods.thaumcraft.Research.addResearch("wyvernBow", tabName, null, 1, 1, 0, <DraconicEvolution:wyvernBow>);
  game.setLocalization("en_US", "tc.research_name.wyvernBow", "Bow of the Wyvern");
  game.setLocalization("en_US", "tc.research_text.wyvernBow", "Bow of the Wyvern");
  game.setLocalization("ru_RU", "tc.research_name.wyvernBow", "Лук Виверны");
  game.setLocalization("ru_RU", "tc.research_text.wyvernBow", "Лук Виверны");

mods.thaumcraft.Research.addPage("wyvernBow", "derp.research_page.wyvernBow");
  game.setLocalization("en_US", "derp.research_page.wyvernBow", "Bow of the Wyvern");
  game.setLocalization("ru_RU", "derp.research_page.wyvernBow", "Лук Виверны");

mods.thaumcraft.Research.addArcanePage("wyvernBow", <DraconicEvolution:wyvernBow>.withTag({Energy: 0}));
mods.thaumcraft.Research.setAutoUnlock("wyvernBow", unlock);



# wyvernPickaxe / кирка
recipes.remove(<DraconicEvolution:wyvernPickaxe:*>);
mods.thaumcraft.Arcane.addShaped("ASPECTS",
  <DraconicEvolution:wyvernPickaxe>.withTag({Energy: 0}),
  "aqua 150, terra 150, perditio 150, ordo 150, aer 150, ignis 150",
  [[null, <DraconicEvolution:wyvernCore>, null],
  [<DraconicEvolution:draconiumIngot>, <minecraft:diamond_pickaxe>, <DraconicEvolution:draconiumIngot>],
  [null, <DraconicEvolution:draconiumEnergyCore>, null]]);

mods.thaumcraft.Research.addResearch("wyvernPickaxe", tabName, null, 2, 1, 0, <DraconicEvolution:wyvernPickaxe>);
  game.setLocalization("en_US", "tc.research_name.wyvernPickaxe", "Pickaxe of the Wyvern");
  game.setLocalization("en_US", "tc.research_text.wyvernPickaxe", "Pickaxe of the Wyvern");
  game.setLocalization("ru_RU", "tc.research_name.wyvernPickaxe", "Кирка Виверны");
  game.setLocalization("ru_RU", "tc.research_text.wyvernPickaxe", "Кирка Виверны");

mods.thaumcraft.Research.addPage("wyvernPickaxe", "derp.research_page.wyvernPickaxe");
  game.setLocalization("en_US", "derp.research_page.wyvernPickaxe", "Pickaxe of the Wyvern");
  game.setLocalization("ru_RU", "derp.research_page.wyvernPickaxe", "Кирка Виверны");

mods.thaumcraft.Research.addArcanePage("wyvernPickaxe", <DraconicEvolution:wyvernPickaxe>.withTag({Energy: 0}));
mods.thaumcraft.Research.setAutoUnlock("wyvernPickaxe", unlock);



# wyvernShovel / лопата
recipes.remove(<DraconicEvolution:wyvernShovel:*>);
mods.thaumcraft.Arcane.addShaped("ASPECTS",
  <DraconicEvolution:wyvernShovel>.withTag({Energy: 0}),
  "aqua 150, terra 150, perditio 150, ordo 150, aer 150, ignis 150",
  [[null, <DraconicEvolution:wyvernCore>, null],
  [<DraconicEvolution:draconiumIngot>, <minecraft:diamond_shovel>, <DraconicEvolution:draconiumIngot>],
  [null, <DraconicEvolution:draconiumEnergyCore>, null]]);

mods.thaumcraft.Research.addResearch("wyvernShovel", tabName, null, 3, 1, 0, <DraconicEvolution:wyvernShovel>);
  game.setLocalization("en_US", "tc.research_name.wyvernShovel", "Shovel of the Wyvern");
  game.setLocalization("en_US", "tc.research_text.wyvernShovel", "Shovel of the Wyvern");
  game.setLocalization("ru_RU", "tc.research_name.wyvernShovel", "Лопата Виверны");
  game.setLocalization("ru_RU", "tc.research_text.wyvernShovel", "Лопата Виверны");

mods.thaumcraft.Research.addPage("wyvernShovel", "derp.research_page.wyvernShovel");
  game.setLocalization("en_US", "derp.research_page.wyvernShovel", "Shovel of the Wyvern");
  game.setLocalization("ru_RU", "derp.research_page.wyvernShovel", "Лопата Виверны");

mods.thaumcraft.Research.addArcanePage("wyvernShovel", <DraconicEvolution:wyvernShovel>.withTag({Energy: 0}));
mods.thaumcraft.Research.setAutoUnlock("wyvernShovel", unlock);



# draconicHelm / шлем
recipes.remove(<DraconicEvolution:draconicHelm:*>);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <DraconicEvolution:wyvernHelm:*>,
  [<DraconicEvolution:draconicIngot>,
  <DraconicEvolution:draconicIngot>,
  <DraconicEvolution:awakenedCore>,
  <DraconicEvolution:draconicIngot>,
  <DraconicEvolution:draconicIngot>,
  <DraconicEvolution:draconicIngot>,
  <DraconicEvolution:draconiumEnergyCore:1>,
  <DraconicEvolution:draconicIngot>, ],
  "tutamen 128, potentia 128, metallum 128, machina 128, motus 64, vitreus 64", <DraconicEvolution:draconicHelm>.withTag({Energy: 0}), instability);

mods.thaumcraft.Research.addResearch("draconicHelm", tabName, null, 0, 3, 0, <DraconicEvolution:draconicHelm>);
  game.setLocalization("en_US", "tc.research_name.draconicHelm", "Draconic Helm");
  game.setLocalization("en_US", "tc.research_text.draconicHelm", "Draconic Helm");
  game.setLocalization("ru_RU", "tc.research_name.draconicHelm", "Шлем Дракона");
  game.setLocalization("ru_RU", "tc.research_text.draconicHelm", "Шлем Дракона");

mods.thaumcraft.Research.addPage("draconicHelm", "derp.research_page.draconicHelm");
  game.setLocalization("en_US", "derp.research_page.draconicHelm", "Draconic Helm");
  game.setLocalization("ru_RU", "derp.research_page.draconicHelm", "Шлем Дракона");

mods.thaumcraft.Research.addInfusionPage("draconicHelm", <DraconicEvolution:draconicHelm>.withTag({Energy: 0}));
mods.thaumcraft.Research.setAutoUnlock("draconicHelm", unlock);



# draconicChest / нагрудник
recipes.remove(<DraconicEvolution:draconicChest:*>);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <DraconicEvolution:wyvernChest:*>,
  [<DraconicEvolution:draconicIngot>,
  <DraconicEvolution:draconicIngot>,
  <DraconicEvolution:awakenedCore>,
  <DraconicEvolution:draconicIngot>,
  <DraconicEvolution:draconicIngot>,
  <DraconicEvolution:draconicIngot>,
  <DraconicEvolution:draconiumEnergyCore:1>,
  <DraconicEvolution:draconicIngot>, ],
  "tutamen 128, potentia 128, metallum 128, machina 128, motus 64, vitreus 64", <DraconicEvolution:draconicChest>.withTag({Energy: 0}), instability);

mods.thaumcraft.Research.addResearch("draconicChest", tabName, null, 1, 3, 0, <DraconicEvolution:draconicChest>);
  game.setLocalization("en_US", "tc.research_name.draconicChest", "Draconic Chestplate");
  game.setLocalization("en_US", "tc.research_text.draconicChest", "Draconic Chestplate");
  game.setLocalization("ru_RU", "tc.research_name.draconicChest", "Нагрудник Дракона");
  game.setLocalization("ru_RU", "tc.research_text.draconicChest", "Нагрудник Дракона");

mods.thaumcraft.Research.addPage("draconicChest", "derp.research_page.draconicChest");
  game.setLocalization("en_US", "derp.research_page.draconicChest", "Draconic Chestplate");
  game.setLocalization("ru_RU", "derp.research_page.draconicChest", "Нагрудник Дракона");

mods.thaumcraft.Research.addInfusionPage("draconicChest", <DraconicEvolution:draconicChest>.withTag({Energy: 0}));
mods.thaumcraft.Research.setAutoUnlock("draconicChest", unlock);



# draconicLeggs / поножи
recipes.remove(<DraconicEvolution:draconicLeggs:*>);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <DraconicEvolution:wyvernLeggs:*>,
  [<DraconicEvolution:draconicIngot>,
  <DraconicEvolution:draconicIngot>,
  <DraconicEvolution:awakenedCore>,
  <DraconicEvolution:draconicIngot>,
  <DraconicEvolution:draconicIngot>,
  <DraconicEvolution:draconicIngot>,
  <DraconicEvolution:draconiumEnergyCore:1>,
  <DraconicEvolution:draconicIngot>, ],
  "tutamen 128, potentia 128, metallum 128, machina 128, motus 64, vitreus 64", <DraconicEvolution:draconicLeggs>.withTag({Energy: 0}), instability);

mods.thaumcraft.Research.addResearch("draconicLeggs", tabName, null, 2, 3, 0, <DraconicEvolution:draconicLeggs>);
  game.setLocalization("en_US", "tc.research_name.draconicLeggs", "Draconic Leggins");
  game.setLocalization("en_US", "tc.research_text.draconicLeggs", "Draconic Leggins");
  game.setLocalization("ru_RU", "tc.research_name.draconicLeggs", "Поножи Дракона");
  game.setLocalization("ru_RU", "tc.research_text.draconicLeggs", "Поножи Дракона");

mods.thaumcraft.Research.addPage("draconicLeggs", "derp.research_page.draconicLeggs");
  game.setLocalization("en_US", "derp.research_page.draconicLeggs", "Draconic Leggins");
  game.setLocalization("ru_RU", "derp.research_page.draconicLeggs", "Поножи Дракона");

mods.thaumcraft.Research.addInfusionPage("draconicLeggs", <DraconicEvolution:draconicLeggs>.withTag({Energy: 0}));
mods.thaumcraft.Research.setAutoUnlock("draconicLeggs", unlock);



# draconicBoots / ботинки
recipes.remove(<DraconicEvolution:draconicBoots:*>);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <DraconicEvolution:wyvernBoots:*>,
  [<DraconicEvolution:draconicIngot>,
  <DraconicEvolution:draconicIngot>,
  <DraconicEvolution:awakenedCore>,
  <DraconicEvolution:draconicIngot>,
  <DraconicEvolution:draconicIngot>,
  <DraconicEvolution:draconicIngot>,
  <DraconicEvolution:draconiumEnergyCore:1>,
  <DraconicEvolution:draconicIngot>, ],
  "tutamen 128, potentia 128, metallum 128, machina 128, motus 64, vitreus 64", <DraconicEvolution:draconicBoots>.withTag({Energy: 0}), instability);

mods.thaumcraft.Research.addResearch("draconicBoots", tabName, null, 3, 3, 0, <DraconicEvolution:draconicBoots>);
  game.setLocalization("en_US", "tc.research_name.draconicBoots", "Draconic Boots");
  game.setLocalization("en_US", "tc.research_text.draconicBoots", "Draconic Boots");
  game.setLocalization("ru_RU", "tc.research_name.draconicBoots", "Ботинки Дракона");
  game.setLocalization("ru_RU", "tc.research_text.draconicBoots", "Ботинки Дракона");

mods.thaumcraft.Research.addPage("draconicBoots", "derp.research_page.draconicBoots");
  game.setLocalization("en_US", "derp.research_page.draconicBoots", "Draconic Boots");
  game.setLocalization("ru_RU", "derp.research_page.draconicBoots", "Ботинки Дракона");

mods.thaumcraft.Research.addInfusionPage("draconicBoots", <DraconicEvolution:draconicBoots>.withTag({Energy: 0}));
mods.thaumcraft.Research.setAutoUnlock("draconicBoots", unlock);



# draconicSword / меч
recipes.remove(<DraconicEvolution:draconicSword:*>);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <DraconicEvolution:wyvernSword:*>,
  [<DraconicEvolution:draconicIngot>,
  <DraconicEvolution:awakenedCore>,
  <DraconicEvolution:draconicIngot>,
  <DraconicEvolution:draconiumEnergyCore:1>, ],
  "instrumentum 128, telum 128, mortuus 128", <DraconicEvolution:draconicSword>.withTag({Energy: 0}), instability);

mods.thaumcraft.Research.addResearch("draconicSword", tabName, null, 0, 4, 0, <DraconicEvolution:draconicSword>);
  game.setLocalization("en_US", "tc.research_name.draconicSword", "Draconic Sword");
  game.setLocalization("en_US", "tc.research_text.draconicSword", "Draconic Sword");
  game.setLocalization("ru_RU", "tc.research_name.draconicSword", "Меч Дракона");
  game.setLocalization("ru_RU", "tc.research_text.draconicSword", "Меч Дракона");

mods.thaumcraft.Research.addPage("draconicSword", "derp.research_page.draconicSword");
  game.setLocalization("en_US", "derp.research_page.draconicSword", "Draconic Sword");
  game.setLocalization("ru_RU", "derp.research_page.draconicSword", "Меч Дракона");

mods.thaumcraft.Research.addInfusionPage("draconicSword", <DraconicEvolution:draconicSword>.withTag({Energy: 0}));
mods.thaumcraft.Research.setAutoUnlock("draconicSword", unlock);



# draconicBow / лук
recipes.remove(<DraconicEvolution:draconicBow:*>);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <DraconicEvolution:wyvernBow:*>,
  [<DraconicEvolution:draconicIngot>,
  <DraconicEvolution:awakenedCore>,
  <DraconicEvolution:draconicIngot>,
  <DraconicEvolution:draconiumEnergyCore:1>, ],
  "instrumentum 128, telum 128, mortuus 128", <DraconicEvolution:draconicBow>.withTag({Energy: 0}), instability);

mods.thaumcraft.Research.addResearch("draconicBow", tabName, null, 1, 4, 0, <DraconicEvolution:draconicBow>);
  game.setLocalization("en_US", "tc.research_name.draconicBow", "Draconic Bow");
  game.setLocalization("en_US", "tc.research_text.draconicBow", "Draconic Bow");
  game.setLocalization("ru_RU", "tc.research_name.draconicBow", "Лук Дракона");
  game.setLocalization("ru_RU", "tc.research_text.draconicBow", "Лук Дракона");

mods.thaumcraft.Research.addPage("draconicBow", "derp.research_page.draconicBow");
  game.setLocalization("en_US", "derp.research_page.draconicBow", "Draconic Bow");
  game.setLocalization("ru_RU", "derp.research_page.draconicBow", "Лук Дракона");

mods.thaumcraft.Research.addInfusionPage("draconicBow", <DraconicEvolution:draconicBow>.withTag({Energy: 0}));
mods.thaumcraft.Research.setAutoUnlock("draconicBow", unlock);



# draconicPickaxe / кирка
recipes.remove(<DraconicEvolution:draconicPickaxe:*>);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <DraconicEvolution:wyvernPickaxe:*>,
  [<DraconicEvolution:draconicIngot>,
  <DraconicEvolution:awakenedCore>,
  <DraconicEvolution:draconicIngot>,
  <DraconicEvolution:draconiumEnergyCore:1>, ],
  "instrumentum 128, meto 128, fabrico 128, perfodio 128", <DraconicEvolution:draconicPickaxe>.withTag({Energy: 0}), instability);

mods.thaumcraft.Research.addResearch("draconicPickaxe", tabName, null, 2, 4, 0, <DraconicEvolution:draconicPickaxe>);
  game.setLocalization("en_US", "tc.research_name.draconicPickaxe", "Draconic Pickaxe");
  game.setLocalization("en_US", "tc.research_text.draconicPickaxe", "Draconic Pickaxe");
  game.setLocalization("ru_RU", "tc.research_name.draconicPickaxe", "Кирка Дракона");
  game.setLocalization("ru_RU", "tc.research_text.draconicPickaxe", "Кирка Дракона");

mods.thaumcraft.Research.addPage("draconicPickaxe", "derp.research_page.draconicPickaxe");
  game.setLocalization("en_US", "derp.research_page.draconicPickaxe", "Draconic Pickaxe");
  game.setLocalization("ru_RU", "derp.research_page.draconicPickaxe", "Кирка Дракона");

mods.thaumcraft.Research.addInfusionPage("draconicPickaxe", <DraconicEvolution:draconicPickaxe>.withTag({Energy: 0}));
mods.thaumcraft.Research.setAutoUnlock("draconicPickaxe", unlock);



# draconicShovel / лопата
recipes.remove(<DraconicEvolution:draconicShovel:*>);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <DraconicEvolution:wyvernShovel:*>,
  [<DraconicEvolution:draconicIngot>,
  <DraconicEvolution:awakenedCore>,
  <DraconicEvolution:draconicIngot>,
  <DraconicEvolution:draconiumEnergyCore:1>, ],
  "instrumentum 128, meto 128, fabrico 128, perfodio 128", <DraconicEvolution:draconicShovel>.withTag({Energy: 0}), instability);

mods.thaumcraft.Research.addResearch("draconicShovel", tabName, null, 3, 4, 0, <DraconicEvolution:draconicShovel>);
  game.setLocalization("en_US", "tc.research_name.draconicShovel", "Draconic Shovel");
  game.setLocalization("en_US", "tc.research_text.draconicShovel", "Draconic Shovel");
  game.setLocalization("ru_RU", "tc.research_name.draconicShovel", "Лопата Дракона");
  game.setLocalization("ru_RU", "tc.research_text.draconicShovel", "Лопата Дракона");

mods.thaumcraft.Research.addPage("draconicShovel", "derp.research_page.draconicShovel");
  game.setLocalization("en_US", "derp.research_page.draconicShovel", "Draconic Shovel");
  game.setLocalization("ru_RU", "derp.research_page.draconicShovel", "Лопата Дракона");

mods.thaumcraft.Research.addInfusionPage("draconicShovel", <DraconicEvolution:draconicShovel>.withTag({Energy: 0}));
mods.thaumcraft.Research.setAutoUnlock("draconicShovel", unlock);



# draconicAxe / топор
recipes.remove(<DraconicEvolution:draconicAxe:*>);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <minecraft:diamond_axe>,
  [<DraconicEvolution:draconicIngot>,
  <DraconicEvolution:awakenedCore>,
  <DraconicEvolution:draconicIngot>,
  <DraconicEvolution:draconiumEnergyCore:1>, ],
  "instrumentum 128, meto 128, fabrico 128, perfodio 128", <DraconicEvolution:draconicAxe>.withTag({Energy: 0}), instability);

mods.thaumcraft.Research.addResearch("draconicAxe", tabName, null, 4, 4, 0, <DraconicEvolution:draconicAxe>);
  game.setLocalization("en_US", "tc.research_name.draconicAxe", "Draconic Axe");
  game.setLocalization("en_US", "tc.research_text.draconicAxe", "Draconic Axe");
  game.setLocalization("ru_RU", "tc.research_name.draconicAxe", "Топор Дракона");
  game.setLocalization("ru_RU", "tc.research_text.draconicAxe", "Топор Дракона");

mods.thaumcraft.Research.addPage("draconicAxe", "derp.research_page.draconicAxe");
  game.setLocalization("en_US", "derp.research_page.draconicAxe", "Draconic Axe");
  game.setLocalization("ru_RU", "derp.research_page.draconicAxe", "Топор Дракона");

mods.thaumcraft.Research.addInfusionPage("draconicAxe", <DraconicEvolution:draconicAxe>.withTag({Energy: 0}));
mods.thaumcraft.Research.setAutoUnlock("draconicAxe", unlock);



# draconicHoe / мотыга
recipes.remove(<DraconicEvolution:draconicHoe:*>);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <minecraft:diamond_hoe>,
  [<DraconicEvolution:draconicIngot>,
  <DraconicEvolution:awakenedCore>,
  <DraconicEvolution:draconicIngot>,
  <DraconicEvolution:draconiumEnergyCore:1>, ],
  "instrumentum 128, meto 128, fabrico 128, perfodio 128", <DraconicEvolution:draconicHoe>.withTag({Energy: 0}), instability);

mods.thaumcraft.Research.addResearch("draconicHoe", tabName, null, 5, 4, 0, <DraconicEvolution:draconicHoe>);
  game.setLocalization("en_US", "tc.research_name.draconicHoe", "Draconic Hoe");
  game.setLocalization("en_US", "tc.research_text.draconicHoe", "Draconic Hoe");
  game.setLocalization("ru_RU", "tc.research_name.draconicHoe", "Мотыга Дракона");
  game.setLocalization("ru_RU", "tc.research_text.draconicHoe", "Мотыга Дракона");

mods.thaumcraft.Research.addPage("draconicHoe", "derp.research_page.draconicHoe");
  game.setLocalization("en_US", "derp.research_page.draconicHoe", "Draconic Hoe");
  game.setLocalization("ru_RU", "derp.research_page.draconicHoe", "Мотыга Дракона");

mods.thaumcraft.Research.addInfusionPage("draconicHoe", <DraconicEvolution:draconicHoe>.withTag({Energy: 0}));
mods.thaumcraft.Research.setAutoUnlock("draconicHoe", unlock);



# draconicDistructionStaff / посох
recipes.remove(<DraconicEvolution:draconicDistructionStaff:*>);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <DraconicEvolution:awakenedCore>,
  [<DraconicEvolution:draconiumEnergyCore:1>,
  <DraconicEvolution:draconicIngot>,
  <DraconicEvolution:draconicSword>,
  <DraconicEvolution:draconicPickaxe>,
  <DraconicEvolution:draconicShovel>,
  <DraconicEvolution:draconicAxe>,
  <DraconicEvolution:draconicHoe>,
  <DraconicEvolution:draconicIngot>,],
  "instrumentum 128, meto 128, fabrico 128, telum 128, mortuus 128, perfodio 128", <DraconicEvolution:draconicDistructionStaff>.withTag({Energy: 0}), instabilityStaff);

mods.thaumcraft.Research.addResearch("draconicDistructionStaff", tabName, null, 5, 3, 0, <DraconicEvolution:draconicDistructionStaff>);
  game.setLocalization("en_US", "tc.research_name.draconicDistructionStaff", "Draconic Staff of Power");
  game.setLocalization("en_US", "tc.research_text.draconicDistructionStaff", "Draconic Staff of Power");
  game.setLocalization("ru_RU", "tc.research_name.draconicDistructionStaff", "Посох силы");
  game.setLocalization("ru_RU", "tc.research_text.draconicDistructionStaff", "Посох силы");

mods.thaumcraft.Research.addPage("draconicDistructionStaff", "derp.research_page.draconicDistructionStaff");
  game.setLocalization("en_US", "derp.research_page.draconicDistructionStaff", "Draconic Staff of Power");
  game.setLocalization("ru_RU", "derp.research_page.draconicDistructionStaff", "Посох силы");

mods.thaumcraft.Research.addInfusionPage("draconicDistructionStaff", <DraconicEvolution:draconicDistructionStaff>.withTag({Energy: 0}));
mods.thaumcraft.Research.setAutoUnlock("draconicDistructionStaff", unlock);