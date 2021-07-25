function MCM_getMaterialMultiplier(item_name: name): int {
  // MCMLOG("item name = " + item_name);

  // kaer morhen armor
  if (item_name == 'Starting Armor') {
    return 1;
  }

  return 2;
}