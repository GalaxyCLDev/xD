    if playerVocation == 1 or playerVocation == 5 then -- sorcerer - master sorcerer
        if playerLevel == 1 and playerPoints >= levels[playerLevel].requiredPoints then
		print("Applying Level 1 Bonus")
            aplicarBonusAlJugador(conditions.sorcerer, "Conseguiste el Nivel 1 de Buffos de Sorcerer. (50+ velocidad, +500hp +500mana)!")
        elseif playerLevel >= 2 and playerPoints >= levels[2].requiredPoints then
		print("Applying Level 2 Bonus")
            aplicarBonusAlJugador(conditions.sorcerer2, "Conseguiste el Nivel 2 de Buffos de Sorcerer. (120+ velocidad, +1500hp +1500mana)!")
        end
