EXTEND_BOTTOM WSMITH01 13
	IF ~PartyHasItem("boot04")~ THEN GOTO XO#ItemUp00
END

APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123447
		IF ~~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("boot04")
			PartyHasItem("boot01")
			PartyHasItem("misc45")~ THEN GOTO XO#ItemUp02
		IF ~PartyHasItem("boot04")
			PartyHasItem("bdboot05")
			PartyHasItem("misc45")~ THEN GOTO XO#ItemUp03
	END

	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234847
		IF ~~ THEN GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234947
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",8)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("boot04",1)
													 DestroyItem("boot04")
													 TakePartyItemNum("boot01",1)
													 DestroyItem("boot01")
													 TakePartyItemNum("misc45",1)
													 DestroyItem("misc45")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp03 SAY @1234947
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",8)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("boot04",1)
													 DestroyItem("boot04")
													 TakePartyItemNum("bdboot05",1)
													 DestroyItem("bdboot05")
													 TakePartyItemNum("misc45",1)
													 DestroyItem("misc45")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END
