-- Export Numbers to Excel AppleScript
on run {input, parameters}
    tell application "Numbers"
        repeat with i in input
            set filePOSIX to POSIX path of i
            open POSIX file filePOSIX
            delay 1 -- Allow time to open

            -- Get file name and folder
            set fileName to do shell script "basename " & quoted form of filePOSIX
            set folderPath to do shell script "dirname " & quoted form of filePOSIX

            -- Remove .numbers extension
            set baseName to text 1 thru ((offset of "." in fileName) - 1) of fileName
            set outputPOSIX to folderPath & "/" & baseName & ".xlsx"

            -- Export to Excel
            export document 1 to POSIX file outputPOSIX as Microsoft Excel
            close document 1 saving no
        end repeat
    end tell
end run
