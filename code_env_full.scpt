on waitForWindow(processName)
    repeat
        tell application "System Events"
            if (count of windows of process processName) > 0 then
                exit repeat
            end if
        end tell
        delay 1
    end repeat
end waitForWindow

tell application "Safari"
    if it is running then
        quit
    end if
end tell

tell application "Google Chrome"
    if it is running then
        quit
    end if
end tell

tell application "Visual Studio Code"
    if it is running then
        quit
    end if
end tell

delay 2

tell application "Google Chrome"
    activate
end tell

waitForWindow("Google Chrome")

tell application "System Events"
    tell process "Google Chrome"
        set frontmost to true
        delay 1
        set theWindow to window 1
        set position of theWindow to {1920, 0}
        set size of theWindow to {960, 1080} 
        keystroke "j" using {command down, option down} 
    end tell
end tell

tell application "Safari"
    activate
    delay 2 -- Allow Safari to launch
end tell

waitForWindow("Safari")

tell application "Safari"
    tell window 1
        set current tab to tab 1
        set URL of current tab to "https://fullstackopen.com/en/about"
        make new tab with properties {URL:"https://github.com/biponroy47"}
    end tell
end tell


waitForWindow("Safari")

tell application "System Events"
    tell process "Safari"
        set frontmost to true
        delay 2
        set theWindow to window 1
        set position of theWindow to {0, 0}
        set size of theWindow to {960, 1080} 
    end tell
end tell

tell application "Visual Studio Code"
    activate
end tell

waitForWindow("Code") -- Note the process name is "Code"

tell application "System Events"
    tell process "Code"
        set frontmost to true
        delay 1
        set theWindow to window 1
        set position of theWindow to {960, 0}
        set size of theWindow to {960, 1080} 
    end tell
end tell

tell application "Terminal"
    activate
    delay 1
end tell

