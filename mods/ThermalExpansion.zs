// Если на сервере запрещен тессеракт, скрипт поможет убрать рецепты его рамок и самого тессеракта
// Нужно для того, чтобы предотвратить случаи, когда игрок сначала создаёт рамки, а потом узнает, что сам тессеракт запрещен
// Вообще, это можно отключить в конфиге мода, что я и рекомендую. Ниже предоставлена инструкция
	# Удаление крафта рамок
	recipes.remove(<ThermalExpansion:Frame:10>);
	mods.thermalexpansion.Transposer.removeFillRecipe(<ThermalExpansion:Frame:10>, <liquid:ender>);

	# Удаление крафта рамки через Tinkers Construct
	mods.tconstruct.Casting.removeBasinRecipe(<ThermalExpansion:Frame:11>);

	# Удаление крафта самого тессеракта
	recipes.remove(<ThermalExpansion:Tesseract>);
    
// Выключаем тессеракт и всё, что с ним связано в конфиге ThermalExpansion
// Заходим в config\cofh\thermalexpansion\common.cfg
// Ставим все эти значения на false
//	Tesseract {
//			B:Recipe.Enable=false
//			B:Recipe.Frame=false
//			B:Show.Block=false
//			B:Show.Frame=false
//	} 