# Удаляем следы от Тессеракта, если он запрещен на сервере
 # Удаляем рецепт тессеракта
  recipes.remove(<ThermalExpansion:Tesseract>);

 # Удаляем рецепты рамок
  recipes.remove(<ThermalExpansion:Frame:10>);
  mods.thermalexpansion.Transposer.removeFillRecipe(<ThermalExpansion:Frame:10>, <liquid:ender>);

 # Удаляем рецепты рамок в TConstruct
  mods.tconstruct.Casting.removeBasinRecipe(<ThermalExpansion:Frame:11>);
  
 # Это также можно выключить в конфиге \cofh\thermalexpansion\common.cfg, для этого выключаем всё в параметре Tesseract {...}