require 'lich/gameobj'
require 'spec/factories'

describe GameObj do
  describe "herbs" do
    [
      %{angelica root potion},
      %{barrel of Aged Schooner ale},
      %{barrel of Agrak's Amber ale},
      %{barrel of Bearded Ladies' ale},
      %{barrel of Bloody Krolvin ale},
      %{barrel of Captn' Pegleg's ale},
      %{barrel of Dacra's Dream ale},
      %{barrel of Dark Swampwater ale},
      %{barrel of Gert's Homemade ale},
      %{barrel of Golden Goose ale},
      %{barrel of Kenar's Dropjaw ale},
      %{barrel of Lost Dogwater ale},
      %{barrel of Mad Mutt Frothy ale},
      %{barrel of Mama Dwarf's ale},
      %{barrel of Miner's Muddy ale},
      %{barrel of Olak's Ol'style ale},
      %{barrel of Orc's Head ale},
      %{barrel of Reaper's Red ale},
      %{barrel of Semak's Smooth ale},
      %{barrel of Volcano Vision ale},
      %{barrel of Wort's Winter ale},
      %{bolmara potion},
      %{brostheras potion},
      %{brown weedroot ale},
      %{bubbling brown ale},
      %{bur-clover potion},
      %{chunky black ale},
      %{crushed cavegrass tea},
      %{crystalline bolmara elixir},
      %{crystalline brostheras elixir},
      %{crystalline bur-clover elixir},
      %{crystalline rose-marrow elixir},
      %{crystalline talneo elixir},
      %{crystalline wingstem elixir},
      %{Dabbings Family special tart},
      %{daggit root potion},
      %{dark frothing ale},
      %{dirty crevice brew},
      %{dirty rat fur potion},
      %{dull crimson ale},
      %{earthworm potion},
      %{elk horn potion},
      %{feverfew potion},
      %{flagon of Aged Schooner ale},
      %{flagon of Agrak's Amber ale},
      %{flagon of Bearded Ladies' ale},
      %{flagon of Bloody Krolvin ale},
      %{flagon of Captn' Pegleg's ale},
      %{flagon of Dacra's Dream ale},
      %{flagon of Dark Swampwater ale},
      %{flagon of Gert's Homemade ale},
      %{flagon of Golden Goose ale},
      %{flagon of Kenar's Dropjaw ale},
      %{flagon of Lost Dogwater ale},
      %{flagon of Mad Mutt Frothy ale},
      %{flagon of Mama Dwarf's ale},
      %{flagon of Miner's Muddy ale},
      %{flagon of Olak's Ol'style ale},
      %{flagon of Orc's Head ale},
      %{flagon of Reaper's Red ale},
      %{flagon of Semak's Smooth ale},
      %{flagon of Volcano Vision ale},
      %{flagon of Wort's Winter ale},
      %{gelatinous elk fat tart},
      %{ginkgo nut potion},
      %{glowing mold tea},
      %{gooey ball of ephlox moss},
      %{grainy black potion},
      %{grey mushroom potion},
      %{iceberry tart},
      %{Leaftoe's lichen tart},
      %{Ma Leaftoe's spiced torban tart},
      %{manroot potion},
      %{manroot tea},
      %{pennyroyal potion},
      %{pennyroyal tea},
      %{red lichen potion},
      %{roasted ratweed tea},
      %{rock lizard potion},
      %{rose-marrow potion},
      %{rusty red ale},
      %{slice of Ma Leaftoe's Special},
      %{slice of pickled walrus blubber},
      %{slice of sparrowhawk pie},
      %{small egg and tundra grass tart},
      %{small sovyn clove},
      %{snowflake elixir},
      %{some acantha leaf},
      %{some acantha leaf tea},
      %{some aloeas stem},
      %{some ambrominas leaf},
      %{some basal moss},
      %{some bright green pothinir grass},
      %{some cactacae spine},
      %{some calamia fruit},
      %{some dirty haphip root},
      %{some dry wolifrew lichen},
      %{some elk fat gel},
      %{some ephlox moss},
      %{some feverfew tea},
      %{some fragrant woth flower},
      %{some fresh torban leaf},
      %{some frog's bone porridge},
      %{some ginkgo nut tea},
      %{some haphip root},
      %{some polar bear fat soup},
      %{some pothinir grass},
      %{some prickly cactacae spine},
      %{some red lichen tea},
      %{some ripe calamia fruit},
      %{some sovyn clove},
      %{some spicy acantha leaf},
      %{some sugary ambrominas leaf},
      %{some sweetfern tea},
      %{some torban leaf},
      %{some tundra grass},
      %{some walrus blubber},
      %{some withered aloeas stem},
      %{some wolifrew lichen},
      %{some woth flower},
      %{sovyn clove},
      %{sparrowhawk pie},
      %{spotted toadstool ale},
      %{stalactite brew},
      %{stalagmite brew},
      %{starfish potion},
      %{sticky ball of basal moss},
      %{sticky lichen tea},
      %{stone soot brew},
      %{sweetfern potion},
      %{talneo potion},
      %{thick foggy ale},
      %{tincture of acantha},
      %{tincture of aloeas},
      %{tincture of ambrominas},
      %{tincture of basal},
      %{tincture of bolmara},
      %{tincture of brostheras},
      %{tincture of bur-clover},
      %{tincture of cactacae},
      %{tincture of calamia},
      %{tincture of ephlox},
      %{tincture of haphip},
      %{tincture of moss},
      %{tincture of pothinir},
      %{tincture of rose-marrow},
      %{tincture of sovyn},
      %{tincture of talneo},
      %{tincture of torban},
      %{tincture of wingstem},
      %{tincture of wolifrew},
      %{tincture of woth},
      %{tincture of yabathilium},
      %{tiny cup of polar bear fat soup},
      %{tiny flower-shaped tart},
      %{tiny musk ox tart},
      %{tiny ram's bladder tart},
      %{valerian root potion},
      %{valerian root tea},
      %{wingstem potion},
      %{wyrmwood root potion},
      %{wyrmwood root tea},
      %{yabathilium fruit},
    ].each do |herb_name|
      it "recognizes #{herb_name} as an herb" do
        herb = GameObjFactory.item_from_name(herb_name)
        expect(herb.type).to eq "herb"
      end
    end

    describe "herbs with data issues" do
      describe "herbs that need to be excluded from skins" do
        [
          %{candied ptarmigan feather},
          %{some rock ptarmigan feathers},
        ].each do |herb_name|
          it "recognizes #{herb_name} as an herb" do
            herb = GameObjFactory.item_from_name(herb_name)
            expect(herb.type).to include "herb"
          end

          xit "recognizes #{herb_name} as NOT a skin" do
            herb = GameObjFactory.item_from_name(herb_name)
            expect(herb.type).to_not include "skin"
          end
        end
      end

      describe "herbs that need to be excluded from food" do
        [
          %{flower-shaped tart},
          %{musk ox tart},
        ].each do |herb_name|
          it "recognizes #{herb_name} as an herb" do
            herb = GameObjFactory.item_from_name(herb_name)
            expect(herb.type).to include "herb"
          end

          xit "recognizes #{herb_name} as NOT food" do
            herb = GameObjFactory.item_from_name(herb_name)
            expect(herb.type).to_not include "food"
          end
        end
      end
    end
  end
end
