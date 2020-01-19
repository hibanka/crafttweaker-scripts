// ДОПОЛНИТЕЛЬНЫЙ РЕЦЕПТ: плитка плотника (крафт из обычной обнажённой глины, а не только раскрашенной)
  recipes.remove(<CarpentersBlocks:itemCarpentersTile>);
  recipes.addShaped(<CarpentersBlocks:itemCarpentersTile> *12,
    [[<minecraft:stained_hardened_clay:*>, <minecraft:stained_hardened_clay:*>, <minecraft:stained_hardened_clay:*>],
    [<CarpentersBlocks:blockCarpentersBlock:*>, <CarpentersBlocks:blockCarpentersBlock:*>, <CarpentersBlocks:blockCarpentersBlock:*>]]);
  recipes.addShaped(<CarpentersBlocks:itemCarpentersTile> *12,
    [[<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>],
    [<CarpentersBlocks:blockCarpentersBlock:*>, <CarpentersBlocks:blockCarpentersBlock:*>, <CarpentersBlocks:blockCarpentersBlock:*>]]);