-----------------------------------
-- Area: Mine_Shaft_2716
-- NPC:  Shaft entrance
-----------------------------------
package.loaded["scripts/zones/Mine_Shaft_2716/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/bcnm");
require("scripts/globals/quests");
require("scripts/globals/missions");
require("scripts/zones/Mine_Shaft_2716/TextIDs");

function onTrade(player,npc,trade)
    if (player:getCurrentMission(COP) == THREE_PATHS and ( player:getVar("COP_Louverance_s_Path") == 7 or player:getVar("COP_Louverance_s_Path") == 8 )) then
        if (trade:getItemCount() == 1 and trade:hasItemQty(1684,1)) then
            player:startEvent(3);
        end
    elseif (TradeBCNM(player,player:getZoneID(),trade,npc)) then
        return;
    end
    
end;

function onTrigger(player,npc)

    if (player:getCurrentMission(COP) ==FIRE_IN_THE_EYES_OF_MEN and player:getVar("PromathiaStatus")==0) then
        player:startEvent(4);
    elseif (EventTriggerBCNM(player,npc)) then
    end
    return 1;
end;

function onEventUpdate(player,csid,option)
    -- printf("onUpdate CSID: %u",csid);
    -- printf("onUpdate RESULT: %u",option);

    if (EventUpdateBCNM(player,csid,option)) then
        return;
    end
    
end;

function onEventFinish(player,csid,option)
    -- printf("onFinish CSID: %u",csid);
    -- printf("onFinish RESULT: %u",option);
    if (csid ==3) then
        player:setVar("COP_Louverance_s_Path",9);
        player:tradeComplete();
    elseif (csid ==4) then
        player:setVar("PromathiaStatus",1);
    elseif (EventFinishBCNM(player,csid,option)) then
        return;
    end
    
end;