Scriptname MarkekrausCheatToggle extends activemagiceffect  
{Coppyright 2021 Mark E Kraus
A script to toggle various cheats.}

String Property Cheat  Auto  
{The name of the cheat to toggle}

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
endEvent