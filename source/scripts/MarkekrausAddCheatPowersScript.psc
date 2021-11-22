Scriptname MarkekrausAddCheatPowersScript extends Quest  
{Copyright 2021 Mark E. Kraus
Adds cheat powers to the player on the next game load.}

SPELL[] Property POWERS  Auto  
{Array of powers to add to the player}

Event OnInit()
    Actor player = Game.GetPlayer()
    int index = 0
    While (index < POWERS.Length)
        Spell curPower = POWERS[index]
        if !player.HasSpell(curPower)
            player.AddSpell(curPower)
        EndIf
        index += 1
    EndWhile
EndEvent