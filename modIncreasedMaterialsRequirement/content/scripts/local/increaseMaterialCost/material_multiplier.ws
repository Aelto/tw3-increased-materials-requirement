function MCM_getMaterialMultiplier(item_name: name, dm: CDefinitionsManagerAccessor): int {
  // MCMLOG("item name = " + item_name);

  // kaer morhen armor
  if (item_name == 'Starting Armor'
   || item_name == 'Starting Gloves'
   || item_name == 'Starting Pants'
   || item_name == 'Starting Boots'
   || item_name == 'Starting Armor 1') {
    return 1;
  }

  if (dm.ItemHasTag(item_name, 'Artifact_weapon')) {
    return 1;
  }

  return 2;
}