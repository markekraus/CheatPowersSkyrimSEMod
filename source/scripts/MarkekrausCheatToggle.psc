Scriptname MarkekrausCheatToggle extends activemagiceffect
{Coppyright 2021 Mark E Kraus
A script to toggle various cheats.}

String Property Cheat  Auto
{The name of the cheat to toggle}

FormList Property MEKCHPAllShouts Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
    If (Cheat == "collisions")
        ConsoleUtil.ExecuteCommand("TCL")
    EndIf
    If (Cheat == "godmode")
        ConsoleUtil.ExecuteCommand("TGM")
    EndIf
    If (Cheat == "aidetect")
        ConsoleUtil.ExecuteCommand("TDetect")
    EndIf
    If (Cheat == "addgold")
        ConsoleUtil.ExecuteCommand("player.AddItem 0000000F 10000")
    EndIf
    If (Cheat == "adddaedricweps")
        ConsoleUtil.ExecuteCommand("player.AddItem 000139B6 1")
        ConsoleUtil.ExecuteCommand("player.AddItem 000139B9 1")
        ConsoleUtil.ExecuteCommand("player.AddItem 000139B4 1")
        ConsoleUtil.ExecuteCommand("player.AddItem 000139B5 1")
        ConsoleUtil.ExecuteCommand("player.AddItem 000139B7 1")
        ConsoleUtil.ExecuteCommand("player.AddItem 000139B8 1")
        ConsoleUtil.ExecuteCommand("player.AddItem 000139B3 1")
        ConsoleUtil.ExecuteCommand("player.AddItem 000139BA 1")
        ConsoleUtil.ExecuteCommand("player.AddItem 000139C0 9999")
    EndIf
    If (Cheat == "adddaedricarmor")
        ConsoleUtil.ExecuteCommand("player.AddItem 0001396B 1")
        ConsoleUtil.ExecuteCommand("player.AddItem 0001396A 1")
        ConsoleUtil.ExecuteCommand("player.AddItem 0001396C 1")
        ConsoleUtil.ExecuteCommand("player.AddItem 0001396D 1")
        ConsoleUtil.ExecuteCommand("player.AddItem 0001396E 1")
    EndIf
    If (Cheat == "addallspells")
        ConsoleUtil.ExecuteCommand("psb")
    EndIf
    If (Cheat == "killtarget")
        akTarget.Kill(akCaster)
    EndIf
    If (Cheat == "addperkpoint")
        Game.AddPerkPoints(1)
    EndIf
    If (Cheat == "maxstats")
        Game.GetPlayer().SetActorValue("OneHanded",   100)
        Game.GetPlayer().SetActorValue("TwoHanded",   100)
        Game.GetPlayer().SetActorValue("Marksman",    100)
        Game.GetPlayer().SetActorValue("Block",       100)
        Game.GetPlayer().SetActorValue("Smithing",    100)
        Game.GetPlayer().SetActorValue("HeavyArmor",  100)
        Game.GetPlayer().SetActorValue("LightArmor",  100)
        Game.GetPlayer().SetActorValue("Pickpocket",  100)
        Game.GetPlayer().SetActorValue("Lockpicking", 100)
        Game.GetPlayer().SetActorValue("Sneak",       100)
        Game.GetPlayer().SetActorValue("Alchemy",     100)
        Game.GetPlayer().SetActorValue("Speechcraft", 100)
        Game.GetPlayer().SetActorValue("Alteration",  100)
        Game.GetPlayer().SetActorValue("Conjuration", 100)
        Game.GetPlayer().SetActorValue("Destruction", 100)
        Game.GetPlayer().SetActorValue("Illusion",    100)
        Game.GetPlayer().SetActorValue("Restoration", 100)
        Game.GetPlayer().SetActorValue("Enchanting",  100)

        Game.GetPlayer().SetActorValue("Health",  9999)
        Game.GetPlayer().SetActorValue("Magicka", 9999)
        Game.GetPlayer().SetActorValue("Stamina", 9999)
    EndIf
    If (Cheat == "maxcarryweight")
        Game.GetPlayer().SetActorValue("CarryWeight", 9999)
    EndIf
    If (Cheat == "maxrecoveryrates")
        Game.GetPlayer().SetActorValue("HealRate",      9999)
        Game.GetPlayer().SetActorValue("MagickaRate",   9999)
        Game.GetPlayer().SetActorValue("StaminaRate",   9999)
        Game.GetPlayer().SetActorValue("ShoutRecoveryMult",   0)
        Game.GetPlayer().SetActorValue("CombatHealthRegenMult",   1)
    EndIf
    If (Cheat == "levelup")
        int NewLevel = Game.GetPlayer().GetLevel() + 1
        Game.SetPlayerLevel(NewLevel)
    EndIf
    If (Cheat == "adddragonsoul")
        Game.GetPlayer().ModActorValue("DragonSouls", 1)
    EndIf
    If (Cheat == "addallshouts")
        int index = 0
        While (index < MEKCHPAllShouts.GetSize())
            WordOfPower curShout = MEKCHPAllShouts.GetAt(index) as WordOfPower
            Game.TeachWord(curShout)
            Game.UnlockWord(curShout)
            index += 1
        EndWhile
    EndIf
endEvent