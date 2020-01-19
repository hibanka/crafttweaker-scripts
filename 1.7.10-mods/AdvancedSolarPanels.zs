// ИСПРАВЛЕНИЕ РЕЦЕПТА: ультимейт солнечный шлем
	recipes.remove(<AdvancedSolarPanel:ultimate_solar_helmet>);
	recipes.addShaped(<AdvancedSolarPanel:ultimate_solar_helmet>,
		[[null, <AdvancedSolarPanel:BlockAdvSolarPanel:2>, null],
		[<IC2:itemPartCircuitAdv>, <IC2:itemArmorQuantumHelmet:*>, <IC2:itemPartCircuitAdv>],
		[<IC2:itemCable:9>, <IC2:blockElectric:5>, <IC2:itemCable:9>]]);
	recipes.addShapeless(<AdvancedSolarPanel:ultimate_solar_helmet>,
		[<AdvancedSolarPanel:BlockAdvSolarPanel:2>, <AdvancedSolarPanel:hybrid_solar_helmet:*>]);

// Вспомогательные описания к панелям об их параметрах
// Если изменяли параметры энергии в конфиге мода, измените это и здесь

########## ВАРИАНТ 1 
########## Характеристики видны сразу

	var GenDay = "Генерация днём: ";
	var GenNight = "Генерация ночью: ";
	var MaxOutput = "Макс. выход: ";
	// var MaxOutput = "Максимальный выход: ";
	var Energy = "Хранилище: ";
	// var Energy = "Хранилище энергии: ";

	var Panel0 = <AdvancedSolarPanel:BlockAdvSolarPanel>;
	var Panel1 = <AdvancedSolarPanel:BlockAdvSolarPanel:1>;
	var Panel2 = <AdvancedSolarPanel:BlockAdvSolarPanel:2>;
	var Panel3 = <AdvancedSolarPanel:BlockAdvSolarPanel:3>;

	# Улучшенная солнечная панель
	Panel0.addTooltip(GenDay + format.green("8 EU/t"));
	Panel0.addTooltip(GenNight + format.green("1 EU/t"));
	Panel0.addTooltip(MaxOutput + format.green("32 EU/t"));
	Panel0.addTooltip(Energy + format.green("32k EU"));

	# Гибридная солнечная панель
	Panel1.addTooltip(GenDay + format.green("64 EU/t"));
	Panel1.addTooltip(GenNight + format.green("8 EU/t"));
	Panel1.addTooltip(MaxOutput + format.green("128 EU/t"));
	Panel1.addTooltip(Energy + format.green("100k EU"));

	# Ультимейт солнечная панель
	Panel2.addTooltip(GenDay + format.green("512 EU/t"));
	Panel2.addTooltip(GenNight + format.green("64 EU/t"));
	Panel2.addTooltip(MaxOutput + format.green("512 EU/t"));
	Panel2.addTooltip(Energy + format.green("1M EU"));

	# Квантовая солнечная панель
	Panel3.addTooltip(GenDay + format.green("4096 EU/t"));
	Panel3.addTooltip(GenNight + format.green("2048 EU/t"));
	Panel3.addTooltip(MaxOutput + format.green("8192 EU/t"));
	Panel3.addTooltip(Energy + format.green("10M EU"));

########## ВАРИАНТ 2
########## Характеристики видны только если навести на панель и зажать LShift
########## На самих панелях будет надпись "Зажмите LShift для подробной информации"

	var GenDay = "Генерация днём: ";
	var GenNight = "Генерация ночью: ";
	var MaxOutput = "Макс. выход: ";
	// var MaxOutput = "Максимальный выход: ";
	var Energy = "Хранилище: ";
	// var Energy = "Хранилище энергии: ";

	var Panel0 = <AdvancedSolarPanel:BlockAdvSolarPanel>;
	var Panel1 = <AdvancedSolarPanel:BlockAdvSolarPanel:1>;
	var Panel2 = <AdvancedSolarPanel:BlockAdvSolarPanel:2>;
	var Panel3 = <AdvancedSolarPanel:BlockAdvSolarPanel:3>;

	# Улучшенная солнечная панель
	Panel0.addTooltip("Зажмите " + format.aqua("LShift") + format.gray(" для подробной информации"));
	Panel0.addShiftTooltip(GenDay + format.green("8 EU/t"));
	Panel0.addShiftTooltip(GenNight + format.green("1 EU/t"));
	Panel0.addShiftTooltip(MaxOutput + format.green("32 EU/t"));
	Panel0.addShiftTooltip(Energy + format.green("32k EU"));

	# Гибридная солнечная панель
	Panel1.addTooltip("Зажмите " + format.aqua("LShift") + format.gray(" для подробной информации"));
	Panel1.addShiftTooltip(GenDay + format.green("64 EU/t"));
	Panel1.addShiftTooltip(GenNight + format.green("8 EU/t"));
	Panel1.addShiftTooltip(MaxOutput + format.green("128 EU/t"));
	Panel1.addShiftTooltip(Energy + format.green("100k EU"));

	# Ультимейт солнечная панель
	Panel2.addTooltip("Зажмите " + format.aqua("LShift") + format.gray(" для подробной информации"));
	Panel2.addShiftTooltip(GenDay + format.green("512 EU/t"));
	Panel2.addShiftTooltip(GenNight + format.green("64 EU/t"));
	Panel2.addShiftTooltip(MaxOutput + format.green("512 EU/t"));
	Panel2.addShiftTooltip(Energy + format.green("1M EU"));

	# Квантовая солнечная панель
	Panel3.addTooltip("Зажмите " + format.aqua("LShift") + format.gray(" для подробной информации"));
	Panel3.addShiftTooltip(GenDay + format.green("4096 EU/t"));
	Panel3.addShiftTooltip(GenNight + format.green("2048 EU/t"));
	Panel3.addShiftTooltip(MaxOutput + format.green("8192 EU/t"));
	Panel3.addShiftTooltip(Energy + format.green("10M EU"));