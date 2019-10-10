// Если на сервере запрещен тессеракт, скрипт поможет убрать рецепты его рамок и самого тессеракта
// Нужно для того, чтобы предотвратить случаи, когда игрок сначала создаёт рамки, а потом узнает, что сам тессеракт запрещен
	# Удаление крафта рамок
    recipes.remove(<ThermalExpansion:Frame:10>);
    mods.thermalexpansion.Transposer.removeFillRecipe(<ThermalExpansion:Frame:10>, <liquid:ender>);

	# Удаление крафта рамки через Tinkers Construct
	mods.tconstruct.Casting.removeBasinRecipe(<ThermalExpansion:Frame:11>);

	# Удаление крафта самого тессеракта
	recipes.remove(<ThermalExpansion:Tesseract>);