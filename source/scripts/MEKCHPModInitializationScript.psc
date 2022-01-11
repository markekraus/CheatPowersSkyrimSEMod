Scriptname MEKCHPModInitializationScript extends ReferenceAlias  
{Copyright 2021 Mark E. Kraus
Adds cheat powers to the player on the next game load.}

FormList Property MEKCHPAllPowers  Auto  
{Array of powers to add to the player}

string LogPrefix = "[MEKCHP] "

Event OnInit()
    RegisterForSingleUpdate(1.0)
EndEvent

Event OnPlayerLoadGame()
    RegisterForSingleUpdate(1.0)
EndEvent

Event OnUpdate()
        Maintenance()
EndEvent

Function TraceLog(string logEntry)
    Debug.Trace(LogPrefix + logEntry)
EndFunction

Function Maintenance()
    TraceLog("=================Maintenance Start=================")
    Actor player = Game.GetPlayer()
    int index = 0
    While (index < MEKCHPAllPowers.GetSize())
        Spell curPower = MEKCHPAllPowers.GetAt(index) as Spell
        if (!player.HasSpell(curPower))
            TraceLog("Adding '" + curPower + "' to player.")
            player.AddSpell(curPower)
        EndIf
        index += 1
    EndWhile
    TraceLog("=================Maintenance End===================")
EndFunction
