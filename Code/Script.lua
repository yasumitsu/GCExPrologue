
function OnMsg.PreLoadSessionData()
    for _, mod in ipairs(ModsLoaded) do
        mod:ForEachModItem("ModItemSector", function(item)
            local id = item.sectorId
            local sector = item.SatelliteSectorObj
            if id and sector and gv_Sectors[id] then
                gv_Sectors[id].template_key = "Sectors"
                CampaignObject.SetId(gv_Sectors[id], id)
            end
        end)
    end
end 
