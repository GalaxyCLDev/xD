-- Verificar si el jugador tiene suficientes puntos y el nivel requerido para las bonificaciones
if playerLevel > 0 then
    -- Aplicar la bonificación correspondiente para la vocación del jugador
    local function applyBonus(condition, message)
        player:addCondition(condition)
        player:getPosition():sendMagicEffect(math.random(CONST_ME_FIREWORK_YELLOW, CONST_ME_FIREWORK_BLUE))
        player:say(message, TALKTYPE_MONSTER_SAY)
    end

    if playerVocation == 1 then -- sorcerer
        if playerLevel == 1 and playerPoints >= levels[playerLevel].requiredPoints then
            applyBonus(conditions.sorcerer, "Conseguiste el Nivel 1 de Buffos de Sorcerer. (50+ velocidad, +500hp +500mana)!")
        elseif playerLevel >= 2 and playerPoints >= levels[2].requiredPoints then
            applyBonus(conditions.sorcerer2, "Conseguiste el Nivel 2 de Buffos de Sorcerer. (120+ velocidad, +1500hp +1500mana)!")
        end
