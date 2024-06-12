tell application "Google Chrome"
	activate
end tell

tell application "System Events"
	tell process "Google Chrome"
		set frontmost to true
		delay 1 -- Adjust if needed for app to fully launch
		set theWindow to window 1
		set position of theWindow to {0, 0}
		set size of theWindow to {800, 600}
	end tell
end tell

tell application "Safari"
	activate
	delay 2 -- Allow Safari to launch
	make new document
	tell window 1
		set current tab to (make new tab with properties {URL:"https://fullstackopen.com/en/about"})
		set current tab to (make new tab with properties {URL:"https://github.com/biponroy47"})
	end tell
end tell

tell application "System Events"
	tell process "Safari"
		set frontmost to true
		delay 1
		set theWindow to window 1
		set position of theWindow to {0, 0}
		set size of theWindow to {960, 1200} -- Left half of a 1920x1200 screen
	end tell
end tell

tell application "Visual Studio Code"
	activate
end tell

tell application "System Events"
	tell process "Visual Studio Code"
		set frontmost to true
		delay 1
		set theWindow to window 1
		set position of theWindow to {960, 0}
		set size of theWindow to {960, 1200} -- Right half of a 1920x1200 screen
	end tell
end tell

tell application "Terminal"
	activate
	delay 1
	do script "cd /Documents/github/full_stack_open" in front window
end tell
