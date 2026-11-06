local mod = RegisterMod("Isaac's Tomb", 1)

local ID37A = Isaac.GetEntityTypeByName("Wrapper")
local game = Game()

local BULLET_SPEED = 6

---@param wrapper EntityNPC
function mod:WrapperInit(wrapper)
    wrapper:AddEntityFlags(EntityFlag.FLAG_APPEAR | EntityFlag.FLAG_NO_KNOCKBACK)
end
mod:AddCallback(ModCallbacks.MC_POST_NPC_INIT, mod.WrapperInit, ID37A)

---@param wrapper EntityNPC
function mod:WrapperInit(wrapper)
    local sprite = wrapper:GetSprite()
    local filename = sprite:GetFilename()
    local target = wrapper:GetPlayerTarget()
    print(filename)
end
