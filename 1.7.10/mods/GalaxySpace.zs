# Исправляем дублирование рецепта (свинцовая броня из GalaxySpace и свинцовая броня из Thermal)
 # Вариант 1: удаляем из GalaxySpace, оставляем из Thermal
  recipes.remove(<GalaxySpace:item.lead_helmet>);
  recipes.remove(<GalaxySpace:item.lead_plate>);
  recipes.remove(<GalaxySpace:item.lead_leg>);
  recipes.remove(<GalaxySpace:item.lead_boots>);

 # Вариант 2: удаляем из Thermal, оставляем из GalaxySpace
  recipes.remove(<ThermalFoundation:armor.helmetLead>);
  recipes.remove(<ThermalFoundation:armor.plateLead>);
  recipes.remove(<ThermalFoundation:armor.legsLead>);
  recipes.remove(<ThermalFoundation:armor.bootsLead>);
