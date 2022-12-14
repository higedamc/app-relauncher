on run
	doit()
    doit2()
	doit3()
	doit4()
	doit5()
end run

on idle
	doit()
    doit2()
	doit3()
	doit4()
	doit5()
	
	return 60 -- checking process every 60 seconds
end idle

on doit()
	tell application "System Events"
		-- set a variable for the bundle identifier of app
		set pockApp to every application process whose bundle identifier is "Pock"
		-- set a conditional branch
		if (count of pockApp) is 0 then
			tell application "Finder"
				launch application "Pock"
			end tell
		end if
	end tell
end doit

on doit2()
	tell application "System Events"
		set onlySwitch to every application process whose bundle identifier is "Only Switch"
		if (count of onlySwitch) is 0 then
			tell application "Finder"
				launch application "Only Switch"
			end tell
		end if
	end tell
end doit2

on doit3()
	tell application "System Events"
		set neptunesApp to every application process whose bundle identifier is "NepTunes"
		if (count of neptunesApp) is 0 then
			tell application "Finder"
				launch application "NepTunes"
			end tell
		end if
	end tell
end doit3

-- on doit3()
-- 	tell application "System Events"
-- 		set  to every application process whose bundle identifier is "checkAutoMounter"
-- 		if (count of checkAutoMounterApp) is 0 then
-- 			tell application "Finder"
-- 				launch application "checkAutoMounter"
-- 			end tell
-- 		end if
-- 	end tell
-- end doit3

on doit4()
	tell application "System Events"
		set ghostTileApp to every application process whose bundle identifier is "GhostTile"
		if (count of ghostTileApp) is 0 then
			tell application "Finder"
				launch application "GhostTile"
			end tell
		end if
	end tell
end doit4

on doit5()
	tell application "System Events"
		set vanillaApp to every application process whose bundle identifier is "Vanilla"
		if (count of vanillaApp) is 0 then
			tell application "Finder"
				launch application "Vanilla"
			end tell
		end if
	end tell
end doit5