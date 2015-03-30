//Show dialogue sequence
//(All dialogue is stored in this script)
//Arguments: dialogue sequence id

with dialogueMgr {
bUsable = true

//--------------------
//------ Events ------
//--------------------

if argument0 == 'reef_crash' {
    ds_list_add(g_dlg, "g How about we NOT crash into things?")
}

//----------------------------
//------ Town NPCs etc. ------
//----------------------------

//------ Town 1 unlocked ------

else if argument0 == 'v1n1' {
ds_list_add(g_dlg, "Sailor You all right? You look like you're about to fall down there.")
ds_list_add(g_dlg, "l I'm fine.")
ds_list_add(g_dlg, "g Come on, let's get some air. This place smells like someone threw up and then died.")
ds_list_add(g_dlg, "l Someone did. See over there?")
ds_list_add(g_dlg, "g Jeez. What happened?")
ds_list_add(g_dlg, "l Um, that other guy suspected him of cheating at cards.")
ds_list_add(g_dlg, "g Was he?")
ds_list_add(g_dlg, "l Probably.")
}

else if argument0 == 'v1n2' {
ds_list_add(g_dlg, "l Watch out for the barman, I don't want to talk to him right now.")
ds_list_add(g_dlg, "g How much do you owe him?")
ds_list_add(g_dlg, "l A lot.")
ds_list_add(g_dlg, "g We need to get out of this town. We owe too many people money.")
ds_list_add(g_dlg, "l I'd hate to get Monsieur d'Ogeron after us. You know how he is with people who owe him debts.")
ds_list_add(g_dlg, "g Yeah, I know. There's the head of one sitting right there over the counter.")
ds_list_add(g_dlg, "l Is that real? I thought that was a mummy or something, all this time.")
ds_list_add(g_dlg, "g It's hard to tell, it's so tarred and feathered.")
ds_list_add(g_dlg, "l Come on, let's get back on the ocean.")
}

else if argument0 == 't1p1' {
ds_list_add(g_dlg, "g Hey, where are you going?")
ds_list_add(g_dlg, "l Nowhere.")

}
else if argument0 == 't1n1' {
ds_list_add(g_dlg, "Citizen Hi.")
ds_list_add(g_dlg, "g Not interested.")
//ds_list_add(g_townMarkers, 'v1a1')   //Note: Removed, kept for legacy purpose of illustrating how to add markers.
}

else if argument0 == 't1n2' {
ds_list_add(g_dlg, "Citizen This is Rubina, one of the smallest cities on the eastern seaboard. But you knew that already, didn'tcha? Living here and all.")
ds_list_add(g_dlg, "g She lives in the Stonehead Tavern. But me, I already knew that.")
}

//------ Town 2 unlocked ------

else if argument0 == 't2n1' {
ds_list_add(g_dlg, "g Town 2 dialogue.")
}

else if argument0 == 'v2n1' {
ds_list_add(g_dlg, "l Tavern 2 dialogue.")
}

//------ Town 3 unlocked ------

else if argument0 == 't3n1' {
ds_list_add(g_dlg, "l Town 3 dialogue.")
}

else if argument0 == 'v3n1' {
ds_list_add(g_dlg, "l Tavern 3 dialogue.")
}

//------ Town 4 unlocked ------

else if argument0 == 't4a1' {
ds_list_add(g_dlg, "l ... I hate this place. Let's get out of here and never come back.")
ds_list_add(g_dlg, "goto ocean")
}

//------ Town 5 unlocked ------

else if argument0 == 't5n1' {
ds_list_add(g_dlg, "l Town 5 dialogue.")
}

else if argument0 == 't5n2' {
ds_list_add(g_dlg, "l Town 5 more dialogue.")
}

//------ Main storyline cutscenes ------


else if argument0 == 'v1a1' {
ds_list_add(g_dlg, "l Ugh.")
ds_list_add(g_dlg, "g Lise!")
ds_list_add(g_dlg, "l What is it?")
ds_list_add(g_dlg, "g There's someone here to meet you. Are you still capable of standing up?")
ds_list_add(g_dlg, "l Ugh...")
ds_list_add(g_dlg, "Alan Hello, Lise.")
ds_list_add(g_dlg, "l Oh. Hey, Alan.")
ds_list_add(g_dlg, "g You two know each other?")
ds_list_add(g_dlg, "l Eh. We were shipmates once, on the... the S.S. Alliman. About 5 years ago.")
ds_list_add(g_dlg, "g I remember that ship! What happened to it, anyway?")
ds_list_add(g_dlg, "l It sank. A few too many collisions with cannonballs.")
ds_list_add(g_dlg, "Alan It was a merchant freighter. It was just good enough to sneak up next to another ship and unload a broadside at 40 meters.")
ds_list_add(g_dlg, "l It lasted about one such voyage. Fortunately, we both survived. The captain didn't.")
ds_list_add(g_dlg, "g Captain England?")
ds_list_add(g_dlg, "l He was the first captain I ever sailed under. Terrible, terrible guy in combat. About the only thing he knew how to do was find the nearest pannikin of rum.")
ds_list_add(g_dlg, "l I'm not surprised he sank. It's just, he was so fat, I'm surprised he didn't float.")
ds_list_add(g_dlg, "Alan He stiffed us on our wages, too.")
ds_list_add(g_dlg, "l They never did find a body. In fact, they only ever found splinters of that ship.")
ds_list_add(g_dlg, "l Anyway, Alan. You're here to see us for.. some reason? I assume you're not here just to talk about assholes on ships. I assume you want a drink!")
ds_list_add(g_dlg, "Alan Aye, I'd love one.")
ds_list_add(g_dlg, "g Me too.")
ds_list_add(g_dlg, "l You are... how old are you again? You are not touching a drop of rum. Once we get a drunk navigator, we can't sail, and we end up slamming headlong into the edge of some island.")
ds_list_add(g_dlg, "g We don't have a ship right now. I'm not a navigator of anything. And you're not the captain of anything. Ergo, I can do what I want.")
ds_list_add(g_dlg, "l Like hell you can! No navigator of mine is going to end up a drunk sot by the time he's 20. The thirst is a hundred times worse at sea, too. When the rum runs out, your life runs out.")
ds_list_add(g_dlg, "l The wish for another sip takes over your every thought. And it's an impossible habit to break. Ask anyone. Ask Alan.")
ds_list_add(g_dlg, "Alan Some habits, you don't want to break.")
ds_list_add(g_dlg, "l Enough. Alan, sit down, have a god damn drink. Grant, here's a mineral water. Now, Alan. What is it you want to talk to us about?")
ds_list_add(g_dlg, "Alan It's like this. I know you two have been stranded here for the last few months, ever since the Incarnation got blown half to bits.")
ds_list_add(g_dlg, "g It's not that bad. She still floats.")
ds_list_add(g_dlg, "l She floats, and that's about all she does.")
ds_list_add(g_dlg, "Alan You want to get back on the sea again, right? And everyone would like to see you back on the sea again. Having stranded sailors without any cash flow is bad for business. You take my meaning?")
ds_list_add(g_dlg, "Alan These days, I look more into acquiring assets and trading favors than simply stealing gold and then spending it. I look at you and your young brother here, and I see potential. You could be a worthwhile investment.")
ds_list_add(g_dlg, "Alan What I would like to do is to advance you money, to rent a new ship. Get back out on the water and pluck pretty prizes from the ocean. Keep doing that until you can pay me back. Double.")
ds_list_add(g_dlg, "l Double?")
ds_list_add(g_dlg, "Alan Gotta have some return on investment, you know? With your quality at commanding a ship in battle, and your brother's hopefully competent abilities at navigation, it can't take too long.")
ds_list_add(g_dlg, "g Are you saying we're also under a time limit?")
ds_list_add(g_dlg, "Alan Just a friendly one. Consider it a loan to be repaid at your EARLIEST convenience.")
ds_list_add(g_dlg, "l All this would involve quite a bit of danger. Knocking over one poor merchantman after another... Someone's bound to take notice. Maybe even the Lycian Navy.")
ds_list_add(g_dlg, "l Give us a moment to consider it, huh Alan?")
ds_list_add(g_dlg, "Alan Sure. I'll be right over there.")
ds_list_add(g_dlg, "l What do you think, Grant?")
ds_list_add(g_dlg, "g Sounds good to me.")
ds_list_add(g_dlg, "l Yeah, me too.")
ds_list_add(g_dlg, "l All right then. No time like the present.")
ds_list_add(g_dlg, "l Alan, I think we'll accept your little offer, on one condition. We want a good boat. We want to pick it out ourselves.")
ds_list_add(g_dlg, "Alan Deal. But there's only one ship to choose from. It's sitting right outside in the bay.")
}

else if argument0 == 't1a1' {
ds_list_add(g_dlg, "g Hey, how do you feel? Starting to sober up?")
ds_list_add(g_dlg, "l Yeah, I'm... I'm all right. Better. Ugh... little headachey. I need some fresh sea air.")
ds_list_add(g_dlg, "g Hey, is that our new boat?")
ds_list_add(g_dlg, "l Yeah. Alan! Not bad. You've outdone yourself.")
ds_list_add(g_dlg, "Alan Isn't she pretty? First-class sloop. You'll find a few willing cannoneers already belowdecks, waiting for your command.")
ds_list_add(g_dlg, "g You mean, we should get started immediately?")
ds_list_add(g_dlg, "Alan Why not? As soon as you're ready to leave.")
}

else if argument0 == 'oa1' {
ds_list_add(g_dlg, "g You know, I have a sneaking suspicion that this ship is wanted. Did you see the look that dock officer was giving us as we left?")
ds_list_add(g_dlg, "l You mean that bastard Alan gave us a ship with a price on its head?")
ds_list_add(g_dlg, "g I think so. ... For now, if we see a Navy ship, let's just try to avoid them. Odds are they might be looking for this ship.")
ds_list_add(g_dlg, "l Son of a... all right. Check the map, try to figure out where we're going.")
ds_list_add(g_dlg, "g I figure we should just sail around and look for random merchant ships to loot.")
ds_list_add(g_dlg, "l Suits me.")
}



else
    show_error("Invalid dialogue: " + argument0, 0)

if room == rm_town {
    if townMgr.bMoveReady {
        //Note: If the town manager is not ready, it'll do this itself in a bit.
        bVisible = true
        alarm[0] = alarmTime
    }
}

else if room == rm_ocean {
    //Enable the dialogue manager
    if dialogueMgr.bUsable {
        dialogueMgr.bVisible = true
        dialogueMgr.alarm[0] = dialogueMgr.alarmTime
    }
}

}