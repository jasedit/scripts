migrate :aggressive_npc, :undead do
  insert(:name, %{ancient ghoul horror})
  insert(:name, %{contorted ghoul master})
  insert(:name, %{ethereal battlemaster})
  insert(:name, %{fanged nebulous figure})
  insert(:name, %{fiery-eyed eidolon})
  insert(:name, %{hunchbacked arch wight})
  insert(:name, %{inky-wisped gaunt figure})
  insert(:name, %{massive-armed hulking dybbuk})
  insert(:name, %{mindless abomination})
  insert(:name, %{multi-headed rotting chimera})
  insert(:name, %{phantasmal combatant})
  insert(:name, %{rotting dwarven guard})
  insert(:name, %{sore-covered zombie})
  insert(:name, %{spectral dwarven miner})
end

migrate :boon do
  insert(:exclude, %{wispy phantasma})
end
