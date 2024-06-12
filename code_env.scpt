-- Function to wait until a process window is available
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

-- Close Safari, Chrome, and Visual Studio Code if they are open
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

-- Open Google Chrome and position it with the console open
tell application "Google Chrome"
    activate
end tell

-- Wait for Google Chrome window to be available
waitForWindow("Google Chrome")

tell application "System Events"
    tell process "Google Chrome"
        set frontmost to true
        delay 1
        set theWindow to window 1
        set position of theWindow to {0, 0}
        set size of theWindow to {735, 956} -- Left half of a 1470x956 screen
        keystroke "j" using {command down, option down} -- Open Chrome console
    end tell
end tell

-- Open Safari and set up tabs
tell application "Safari"
    activate
    delay 2 -- Allow Safari to launch
    make new document
end tell

-- Wait for Safari window to be available
waitForWindow("Safari")

tell application "Safari"
    tell window 1
        set current tab to tab 1
        set URL of current tab to "https://fullstackopen.com/en/about"
        make new tab with properties {URL:"https://github.com/biponroy47"}
    end tell
end tell


-- Wait for Safari window to be available
waitForWindow("Safari")

tell application "System Events"
    tell process "Safari"
        set frontmost to true
        delay 1
        set theWindow to window 1
        set position of theWindow to {0, 0}
        set size of theWindow to {735, 956} -- Left half of a 1470x956 screen
    end tell
end tell

-- Open Visual Studio Code and position it
tell application "Visual Studio Code"
    activate
end tell

-- Wait for Visual Studio Code window to be available
waitForWindow("Code") -- Note the process name is "Code"

tell application "System Events"
    tell process "Code"
        set frontmost to true
        delay 1
        set theWindow to window 1
        set position of theWindow to {735, 0}
        set size of theWindow to {735, 956} -- Right half of a 1470x956 screen
    end tell
end tell

-- Change directory in the current Terminal window only if not already in it
tell application "Terminal"
    activate
    delay 1
    do script "if [ \"$PWD\" != \"/Users/biponroy/Documents/github/full_stack_open\" ]; then cd ~/Documents/github/full_stack_open; fi" in window 1
end tell

