-----------------------------------
-- Area: Selbina
--  NPC: Naillina
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Selbina/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Selbina/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:startEvent(14);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;

