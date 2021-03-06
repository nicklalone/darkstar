-----------------------------------
-- Area: Metalworks
--  NPC: Glarociquet, T.K.
-- !pos 19 -16 -28 237
-------------------------------------
package.loaded["scripts/zones/Metalworks/TextIDs"] = nil
-------------------------------------
require("scripts/zones/Metalworks/TextIDs")
require("scripts/globals/conquest")
-------------------------------------

local guardNation = dsp.nation.SANDORIA
local guardType   = dsp.conq.guard.FOREIGN
local guardEvent  = 32763

function onTrade(player,npc,trade)
    dsp.conq.overseerOnTrade(player, npc, trade, guardNation, guardType)
end

function onTrigger(player,npc)
    dsp.conq.overseerOnTrigger(player, npc, guardNation, guardType, guardEvent)
end

function onEventUpdate(player,csid,option)
    dsp.conq.overseerOnEventUpdate(player, csid, option, guardNation)
end

function onEventFinish(player,csid,option)
    dsp.conq.overseerOnEventFinish(player, csid, option, guardNation, guardType)
end