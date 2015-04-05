//Show dialogue sequence
//(All dialogue is stored in this script)
//Arguments: dialogue id (aka marker id)

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
ds_list_add(g_dlg, "Citizen The Lycian Navy is seriously underfunded. That's why all these pirates ships keep getting away with attacking everyone.")
ds_list_add(g_dlg, "Citizen The truth is, the silver mines are so profitable that there's little point diverting funds to hire soldiers or purchase extra ships to defend the trade vessels.")
ds_list_add(g_dlg, "Citizen It's more productive to channel the money into making more money. I guess there's a strange kind of logic there.")
ds_list_add(g_dlg, "Citizen That's what I heard from old Admiral Moran, anyway, after he retired. He's been sitting in our local saloon ever since.")
}

//TODO: This has been removed for now, but it might be put in later.
else if argument0 == 'v2n1' {
ds_list_add(g_dlg, "l This looks familiar.")
ds_list_add(g_dlg, "g Let's go, I think you're starting to see things.")
}

//------ Town 3 unlocked ------

else if argument0 == 't3n1' {
ds_list_add(g_dlg, "Citizen Is that your ship out by the docks? You ought to be more careful. A piece of shit like that could be blasted out of the water by any marauding pirate.")
ds_list_add(g_dlg, "g Ah, she's not so bad. Have to give her credit where it's good.")
ds_list_add(g_dlg, "Citizen That lug? It's a bathtub with sails. Mark my words: Be careful out there.")
}

else if argument0 == 'v3n1' {
ds_list_add(g_dlg, "g Hey, have you seen a man named Frederick Priest?")
ds_list_add(g_dlg, "Drunkard Leave me alone.")
}

//------ Town 4 unlocked ------

else if argument0 == 't4a1' {
ds_list_add(g_dlg, "l ... I hate this place. Let's get out of here and never come back.")
ds_list_add(g_dlg, "goto ocean")
}

//------ Town 5 unlocked ------

else if argument0 == 't5n1' {
ds_list_add(g_dlg, "Woman Hey there, looking for a good time?")
ds_list_add(g_dlg, "l No.")
ds_list_add(g_dlg, "Woman I was talking to the handsome young man there.")
ds_list_add(g_dlg, "l He's not interested either.")
ds_list_add(g_dlg, "g But --")
ds_list_add(g_dlg, "l No thanks!")
}

else if argument0 == 't5n2' {
ds_list_add(g_dlg, "Citizen Can you believe how useless the Navy is? Every other week some poor merchant ship gets tackled by one of these bastard pirates. Then they sail back to shore, and sell the merchant's own goods back to them!")
ds_list_add(g_dlg, "Citizen Watch out, there are pirates out there. Pirates everywhere.")
}

//TODO maybe make this add an actual quest? As is, it's more of a hint.
//TODO only have him say this if we didn't loot the dungeon already?
else if argument0 == 't5q1' {
ds_list_add(g_dlg, "Citizen You see that rotting castle a couple miles east of here? That's Mildred's Keep. Stay away from there.")
ds_list_add(g_dlg, "Citizen There was this mad sorceress who owned the castle.")
ds_list_add(g_dlg, "Citizen Years ago, it was a lively place. Always flickering at night with parties. Fireworks going off. And the night air alive with the sounds of drunken revelry.")
ds_list_add(g_dlg, "Citizen Then, one night, everything went horribly wrong.")
ds_list_add(g_dlg, "Citizen Mildred was attempting a channeling spell for the amusement of the partygoers.")
ds_list_add(g_dlg, "Citizen Tales say that she took on the mind and spirit of the northwestern wind -- the fiercest spirit of the sea, who whips up all the seasonal hurricanes and tempests, to tempt sailors to their doom.")
ds_list_add(g_dlg, "Citizen None left the party alive.")
ds_list_add(g_dlg, "Citizen And from that day onward, the atmosphere of the place diminished considerably. No one goes there these days except pidgeons, poets, and madmen.")
ds_list_add(g_dlg, "g Is there any treasure there?")
ds_list_add(g_dlg, "Citizen Probably. Why not? If so, no one's ever going to find it.")
}

else if argument0 == 'v5n1' {
ds_list_add(g_dlg, "Drunkard I hear there's a skilled mercenary in Brax who's looking to sell his services.")
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
ds_list_add(g_dlg, "showmsg New goal: Collect 500 gold.")

ds_list_add(g_townMarkers, 'gold_goal1')
}

//The first ocean goal event.
else if argument0 == 'gold_goal1_reached' {
ds_list_add(g_dlg, "l Grant, how are we doing?")
ds_list_add(g_dlg, "g Well, we've taken a few hits, there's no denying it. We're listing a little in the water.")
ds_list_add(g_dlg, "l It'll take forever to pay Alan back like this, and half our funds will go towards ship repairs. We need a better plan.")
ds_list_add(g_dlg, "g What do you have in mind?")
ds_list_add(g_dlg, "l Let's go back to Rubina, and see if we can find some slightly more ambitious task than tackling random merchantmen.")

ds_list_add(g_townMarkers, 't1a2')
ds_list_add(g_townMarkers, 'v1i1')
}

else if argument0 == 't1a2' {
ds_list_add(g_dlg, "g So, where to?")
ds_list_add(g_dlg, "l I think the center of all information in the city is a good bet, don't you?")
ds_list_add(g_dlg, "g Of course.")
}

//An important NPC.
else if argument0 == 'v1i1' {
ds_list_add(g_dlg, "Alan Lise, Grant? How are you guys making out?")
ds_list_add(g_dlg, "l You didn't tell us we were sailing a floating deathtrap.")
ds_list_add(g_dlg, "Alan Sorry?")
ds_list_add(g_dlg, "g That ship is wanted by the Navy. They're out for blood!")
ds_list_add(g_dlg, "Alan Oh, I was afraid of that. I'll deduct a suitable sum from the amount you owe me as compensation, of course.")
ds_list_add(g_dlg, "l How about you reduce the amount we owe you by half. We could have died out there.")
ds_list_add(g_dlg, "Alan You drive a hard bargain. Fine. Instead of owing me double the cost of the boat, you only owe me one-and-a-half times that figure.")
ds_list_add(g_dlg, "l How much do we owe you again?")
ds_list_add(g_dlg, "Alan It's still a lot more than you have, I can tell you that.")
ds_list_add(g_dlg, "l Do you have any intelligence on how we could earn the money a little faster?")
ds_list_add(g_dlg, "Alan You mean, a job?")
ds_list_add(g_dlg, "l Something that could help us pay you back a little more efficiently.")
ds_list_add(g_dlg, "Alan Well, I didn't tell you this, but: Rumors are, there's a brig, the Arabella, out of Brax, sailing for Saint Jace with two thousand pounds in gold bullion.")
ds_list_add(g_dlg, "Alan It should be easy to spot. The masthead is painted in an exquisite crimson red.")
ds_list_add(g_dlg, "l And you would just give us this information for free?")
ds_list_add(g_dlg, "Alan Well, no. It'll cost you a finder's fee, of course.")
ds_list_add(g_dlg, "l But we already know the information.")
ds_list_add(g_dlg, "Alan Don't worry, I'll add the finder's fee to the amount you already owe me.")

ds_list_add(g_townMarkers, 't1a3')
}

else if argument0 == 't1a3' {
ds_list_add(g_dlg, "l The Arabella should be heading from Brax to Saint Jace. Let's get her before she docks, I don't want to go anywhere near that hellhole.")
ds_list_add(g_dlg, "l Check the map, and let's go catch that ship!")
ds_list_add(g_dlg, "l Alan said it had a noticeable blue masthead.")
ds_list_add(g_dlg, "g You mean red.")
ds_list_add(g_dlg, "l That's what I said. Red.")
ds_list_add(g_dlg, "showmsg Brax has now been unlocked. Hunt down the Arabella!")

g_town2Unlocked = true
ds_list_add(g_townMarkers, 'ship_spawn1')
}

else if argument0 == 't2a1' {
if not g_town2Unlocked {
ds_list_add(g_dlg, "l Why are we here?")
ds_list_add(g_dlg, "g Nevermind. Maybe we'll come back later.")
ds_list_add(g_dlg, "goto ocean")
}
else {
ds_list_add(g_dlg, "g There's not much to do here, is there?")
ds_list_add(g_dlg, "l At least no one is trying to kill us.")
RemoveMarker('t2a1')
}
}

else if argument0 == 'ship_spawn1_lost' {
ds_list_add(g_dlg, "g That ship got away.")
ds_list_add(g_dlg, "l He's traveling between Brax and Saint Jace, right?")
ds_list_add(g_dlg, "l Let's go to Brax and see if he repeats the voyage.")
}

else if argument0 == 'ship_spawn1_defeated' {
ds_list_add(g_dlg, "l Anyone aboard? We're coming over.")
ds_list_add(g_dlg, "Betsy Go away!")
ds_list_add(g_dlg, "l Who are you?")
ds_list_add(g_dlg, "Betsy I'm the cook. Captain Saintalmain is already gone. See that lifeboat off in the distance?")
ds_list_add(g_dlg, "l What a coward!")
ds_list_add(g_dlg, "g Hello, Betsy.")
ds_list_add(g_dlg, "Betsy Grant? What are you doing here? I finally get gainful employment, and then you pirates come along and ruin everything.")
ds_list_add(g_dlg, "Betsy Do you have any idea how long it took me to get this job?")
ds_list_add(g_dlg, "g Sorry. Where's everyone else?")
ds_list_add(g_dlg, "Betsy Hiding belowdecks.")
ds_list_add(g_dlg, "l Do you know where the gold on this ship is?")
ds_list_add(g_dlg, "Betsy Sure, I have a couple ideas.")
ds_list_add(g_dlg, "Betsy ...")
ds_list_add(g_dlg, "Betsy This is the galley. I often saw the captain come in here after trading goods with other merchants.")
ds_list_add(g_dlg, "l Take a look. That sack's not potatoes.")
ds_list_add(g_dlg, "l Potatoes don't jingle. Yes!")
ds_list_add(g_dlg, "g All right! With this, we could buy enough rum to drown a whale.")
ds_list_add(g_dlg, "l Look at this.")
ds_list_add(g_dlg, "g What is it?")
ds_list_add(g_dlg, "l A logbook. It's pretty thick. Goes back almost 20 years.")
ds_list_add(g_dlg, "g So what?")
ds_list_add(g_dlg, "l Listen to this.")
ds_list_add(g_dlg, "l " + '"' + "A record by one John H. Saintalmain, Private, 1st Class, Lycian Army, 1622." + '"')
ds_list_add(g_dlg, "l " + '"' + "An account of 4 years in Ironworth Prison." + '"')
ds_list_add(g_dlg, "g So he was in prison. We don't need to feel too guilty about relieving him of all his stuff.")
ds_list_add(g_dlg, "l I think we should take this.")
ds_list_add(g_dlg, "g When did you learn how to read, anyway?")
ds_list_add(g_dlg, "l Let's go back to Rubina. Don't say anything about this to Alan.")
ds_list_add(g_dlg, "Betsy Hey, I'm coming with you!")
ds_list_add(g_dlg, "blankperson (Betsy has joined you. With her skills as a cook, the crewmen will work twice as hard, helping improve your ship's speed.)")

g_shipMaxSpeed += CREW_SPEED_BOOST
ds_list_add(g_townMarkers, 't1a4')
}

else if argument0 == 't1a4' {
ds_list_add(g_dlg, "g That was the most refreshing voyage I've had in a long time.")
ds_list_add(g_dlg, "Betsy Amazing what a good cook can do for you, right?")
ds_list_add(g_dlg, "Alan A pleasant voyage, I trust?")
ds_list_add(g_dlg, "l We managed to salvage this useful cook, but there was no treasure on board that ship. Just some excellent ingredients.")
ds_list_add(g_dlg, "Alan That's unfortunate.")
ds_list_add(g_dlg, "l Grant, let's head back to the tavern. I want to show you something.")

ds_list_add(g_townMarkers, 'v1a2')
}

else if argument0 == 'v1a2' {
ds_list_add(g_dlg, "Tavern-master Oh, you look happy.")
ds_list_add(g_dlg, "g We should be. We just got away with the haul of a lifetime. And then she lied about it.")
ds_list_add(g_dlg, "g Two pints of rum, please!")
ds_list_add(g_dlg, "l A half-sized one for him.")
ds_list_add(g_dlg, "Tavern-master Here you go. Privateers, huh?")
ds_list_add(g_dlg, "g No, we're not.")
ds_list_add(g_dlg, "l Yes, that's right.")
ds_list_add(g_dlg, "Tavern-master It's all right. Privateers are respectable. Although some folks will say that privateers are basically pirates in the service of some nation.")
ds_list_add(g_dlg, "Tavern-master Since Lycia and Englia are constantly at war, there's a lot of call for privateers from both nations, to take out the other nation's ships. Which side are you fighting for?")
ds_list_add(g_dlg, "l I think we're a little bit freelance at the moment.")
ds_list_add(g_dlg, "Tavern-master Whoever pays the highest, eh? Wise, wise.")
ds_list_add(g_dlg, "l Grant, let's sit down over there.")
ds_list_add(g_dlg, "l ...")
ds_list_add(g_dlg, "l Truth is, we couldn't get a privateer commision, even if we wanted it. They know my face, Grant. And they know yours by now too, probably.")
ds_list_add(g_dlg, "g ... I was wondering why you took that logbook.")
ds_list_add(g_dlg, "g Ever wish you had written one of your own?")
ds_list_add(g_dlg, "l It's not like I was there that long. Six months. It's a pittance compared to what Saintalmain or a thousand other pirates have endured.")
ds_list_add(g_dlg, "g You never talked about what it was like in there for you.")
ds_list_add(g_dlg, "l It wasn't too bad, to be honest. There was none of the torture or, well, mutilation that was everywhere in the men's prisons. There aren't a lot of female pirates, so... I was in pretty pathetic company.")
ds_list_add(g_dlg, "l Nursemaids accused of abducting babies, servants who had stolen off with one of their master's coins or something...")
ds_list_add(g_dlg, "l We can never let ourselves be caught again. We don't want to be out here forever. If we didn't eventually have to pay Alan back, I'd say we should skip town already.")
ds_list_add(g_dlg, "l But we have to pay Alan back. He's connected now, we can't risk cheating him.")
ds_list_add(g_dlg, "l There's something else. That diary I found. Read this.")
ds_list_add(g_dlg, "g " + '"' + "July 14th: Maury was a thousand times worse today." + '"')
ds_list_add(g_dlg, "g " + '"' + "His mind is fleeing, but the few snatches of sanity he has left, he devotes to mordant thoughts. The two years we've spent together are nothing to the seven he spent in prison before being transferred here." + '"')
ds_list_add(g_dlg, "g " + '"' + "He's hinted at past at some great and illusory treasure that he would have access to upon leaving here. But today, in his vacant state, he began to talk rapidly about piles of gold doublooons, caches of emerald necklaces thrown carelessly in a heap." + '"')
ds_list_add(g_dlg, "g " + '"' + "And all within easy reach, he seemed to think, as his eyes stared beyond the bars, and his hand reached out as if to grasp." + '"')
ds_list_add(g_dlg, "g " + '"' + "July 23rd: Maury couldn't get up to eat today. The jailors made me feed him. They can't allow us to die in peace." + '"')
ds_list_add(g_dlg, "g " + '"' + "Yesterday, he kept fervently muttering the names of old comrades of his, who he seemed alternately to revere and despise. Jean Lafitte, Robin Bright, Cesar de la Sain." + '"')
ds_list_add(g_dlg, "g " + '"' + "The first and last of these are already dead, apparently. This seemed to increase their estimation in his mind. He wishes to join them." + '"')
ds_list_add(g_dlg, "g " + '"' + "July 25th: Maury died this morning. A few hours before, he rose from his stupor and said: '104.8',  with a horizontal cut of his finger through the air. And then a name. And his words after that were only mumbles." + '"')
ds_list_add(g_dlg, "g " + '"' + "It's a latitude. And the name, Frederick Priest, belongs to the man who knows the longitude." + '"')
ds_list_add(g_dlg, "g " + '"' + "Somehow, in the distant past, Maury's crew came into treasure. They buried it for later recollection. So that all of them could only go together, they split the coordinates up between them." + '"')
ds_list_add(g_dlg, "g " + '"' + "I don't know the full story. But it's clear that this treasure is still out there, waiting. If I ever get out of this place, maybe I can go and find it." + '"')
ds_list_add(g_dlg, "g Wow. And did he?")
ds_list_add(g_dlg, "l Saintalmain got out of prison two years later, went searching for this Frederick Priest, never found him, gave up, and went back to life as an ordinary merchant trader.")
ds_list_add(g_dlg, "l But what if that treasure was never found? In later notes, Saintalmain mentions that Maury told him that, of Maury Baxter's pirate crew, the captain, alone, had taken the reckoning of the island where they'd buried the treasure.")
ds_list_add(g_dlg, "l And the captain, alone, knew both coordinates. He died soon afterwards. He gave the latitude to Baxter, the quartermaster. The longitude went to Priest, the first mate.")
ds_list_add(g_dlg, "l The plan was to regroup in a year, after the heat had died down, sell the gold and jewels, and retire wealthy men.")
ds_list_add(g_dlg, "l Somehow that never happened. But if Priest never told the coordinates to anyone else, that means that this treasure is still out there waiting. We just need to find Priest.")
ds_list_add(g_dlg, "g It's been almost... what, twenty years since they stole the treasure.")
ds_list_add(g_dlg, "l True, but look at this: In one of his latest entries, Saintalmain mentions that while trading in the city of Lys, he fell back to old habits and began inquiring about Frederick Priest.")
ds_list_add(g_dlg, "l And he actually got a response to that name.")
ds_list_add(g_dlg, "l Some drunken prostitute in a tavern told him that she had actually met this man, in Tabriel, of all places.")
ds_list_add(g_dlg, "g That's less than 100 miles from here!")
ds_list_add(g_dlg, "l Saintamain never had a chance to visit Tabriel.")
ds_list_add(g_dlg, "g Then let's go there.")
ds_list_add(g_dlg, "g Time for another drink first?")
ds_list_add(g_dlg, "l You know, maybe it is time to celebrate. Fine, just one. But it's on me.")
ds_list_add(g_dlg, "showmsg Tabriel has now been unlocked.")

g_town5Unlocked = true
}

else if argument0 == 't5a1' {
if not g_town5Unlocked {
ds_list_add(g_dlg, "l There's no reason to be here. Let's try not to draw attention.")
ds_list_add(g_dlg, "goto ocean")
}
else {
ds_list_add(g_dlg, "l Let's ask at the tavern if anyone has seen Priest.")
RemoveMarker('t5a1')
}
}

else if argument0 == 'v5i1' {
ds_list_add(g_dlg, "l A pint of grog, please, and some information.")
ds_list_add(g_dlg, "Tavern-master Sure. The information's free. The pint will cost you.")
ds_list_add(g_dlg, "g Two pints.")
ds_list_add(g_dlg, "l We're looking for a man named Frederick Priest. He's an old sailor, mid-fifties or so.")
ds_list_add(g_dlg, "Tavern-master Priest? You just missed him! He was in here not a week ago.")
ds_list_add(g_dlg, "Tavern-master He's been here most nights for the last three years.")
ds_list_add(g_dlg, "Tavern-master You know, it's funny, you asking about him. Just another day, there was another couple in here, looking for him. Looked a mite bit fiercer than you two.")
ds_list_add(g_dlg, "l Another couple?")
ds_list_add(g_dlg, "Tavern-master Yeah. Seafarers, of course. A man and woman. Yes, they were asking some very pertinent questions about Priest. Where he was, how long he'd been here... And they only missed him by one day.")
ds_list_add(g_dlg, "g Well, the bad luck just keeps piling up.")
ds_list_add(g_dlg, "l Where did this man Priest sail to?")
ds_list_add(g_dlg, "Tavern-master Depends. Why are you asking?")
ds_list_add(g_dlg, "l He's our grandfather. An old shipmate of his, Maury Baxter, told us he was here.")
ds_list_add(g_dlg, "Tavern-master Priest used to mention a man named Baxter sometimes. They were shipmates together back in the day. But Priest has reformed and all that.")
ds_list_add(g_dlg, "l So where did Priest -- our grandfather -- go off to?")
ds_list_add(g_dlg, "Tavern-master He took off a week ago for Phrain, a small spit of a city on the edge of the Lycian sea. The ship's name is the Mirella. It's traveling with a fleet of rug traders or some crap.")
ds_list_add(g_dlg, "l Thanks for your help. Here's a little something for your time.")
ds_list_add(g_dlg, "Tavern-master Good luck finding your grandfather.")
ds_list_add(g_dlg, "l Should we head off immediately?")
ds_list_add(g_dlg, "g Maybe. I've been talking with the locals, and there's this haunted old castle a few miles east of here that's rumored to have some treasure.")
ds_list_add(g_dlg, "l Might be worth a look.")

//TODO maybe only say that if we haven't looted that castle yet.

ds_list_add(g_dlg, "showmsg Phrain has now been unlocked.")

g_town3Unlocked = true
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
    //TODO I could probably make this statement a little simpler.
    if dialogueMgr.bUsable {
        dialogueMgr.bVisible = true
        dialogueMgr.alarm[0] = dialogueMgr.alarmTime
    }
}

}