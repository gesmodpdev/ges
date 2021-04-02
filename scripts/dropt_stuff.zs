import mods.dropt.Dropt;

//Leaves drop sticks
Dropt.list("leaves")
  .add(Dropt.rule()
      .matchBlocks(["minecraft:leaves:*"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
        .selector(Dropt.weight(85)))
      .addDrop(Dropt.drop()
        .selector(Dropt.weight(15))
        .items([<minecraft:stick>])
      )
  );

Dropt.list("leaves")
  .add(Dropt.rule()
      .matchBlocks(["biomesoplenty:leaves:*"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
        .selector(Dropt.weight(85)))
      .addDrop(Dropt.drop()
        .selector(Dropt.weight(15))
        .items([<minecraft:stick>])
      )
  );

Dropt.list("leaves")
  .add(Dropt.rule()
      .matchBlocks(["forestry:leaves:*"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
        .selector(Dropt.weight(85)))
      .addDrop(Dropt.drop()
        .selector(Dropt.weight(15))
        .items([<minecraft:stick>])
      )
  );

Dropt.list("leaves")
  .add(Dropt.rule()
      .matchBlocks(["natura:leaves:*"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
        .selector(Dropt.weight(85)))
      .addDrop(Dropt.drop()
        .selector(Dropt.weight(15))
        .items([<minecraft:stick>])
      )
  );

//Gravel does not drop flint
Dropt.list("gravel")
  .add(Dropt.rule()
    .matchBlocks(["minecraft:gravel"])
    .matchDrops([<minecraft:flint>])
    .replaceStrategy("REPLACE_ITEMS")
    .addDrop(Dropt.drop())
  );