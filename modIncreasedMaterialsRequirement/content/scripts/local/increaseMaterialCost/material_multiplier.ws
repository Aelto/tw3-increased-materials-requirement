function MCM_getMaterialMultiplier(item_name: name, dm: CDefinitionsManagerAccessor): int {
  // Don't modify price for Kaer Morhen armor
  if (item_name == 'Starting Armor'
   || item_name == 'Starting Gloves'
   || item_name == 'Starting Pants'
   || item_name == 'Starting Boots'
   || item_name == 'Starting Armor 1'
   || item_name == 'Starting Pants 1'
   || item_name == 'Starting Boots 1'
   || item_name == 'Starting Gloves 1'
   || item_name == 'Long Steel Sword 1'
   || item_name == 'Witcher Silver Sword 1') {
    return 1;
  }

  // Don't modify price for artifact weapons (EE)
  if (dm.ItemHasTag(item_name, 'Artifact_weapon')) {
    return 1;
  }

  // Double price for all other items
  return 2;
}
