// Если у вас установлен Thermal, то свинцовая броня из GalaxySpace и свинцовая броня из Thermal будут иметь одинаковые крафты
// Выберите, какая броня для вас нужнее, и удалите соответственно ненужную.
# Удаляем из GalaxySpace, оставляем из Thermal
    recipes.remove(<GalaxySpace:item.lead_helmet>);
    recipes.remove(<GalaxySpace:item.lead_plate>);
    recipes.remove(<GalaxySpace:item.lead_leg>);
    recipes.remove(<GalaxySpace:item.lead_boots>);

# Удаляем из Thermal, оставляем из GalaxySpace
    recipes.remove(<ThermalFoundation:armor.helmetLead>);
    recipes.remove(<ThermalFoundation:armor.plateLead>);
    recipes.remove(<ThermalFoundation:armor.legsLead>);
    recipes.remove(<ThermalFoundation:armor.bootsLead>);

# TODO
# Вариант 3: крафт брони из GalaxySpace через броню из Thermal

# TODO
# Вариант 4: крафт брони из Thermal через броню из GalaxySpace