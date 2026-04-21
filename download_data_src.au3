#SingleInstance Force
HotKeySet("{ESC}", "_Exit")

Func _Exit()
    Exit
EndFunc

While 1
    ; Get the current time and day
    $currentDay = @WDAY  ; Day of the week (1 = Sunday, 7 = Saturday)
    $currentTime = @HOUR * 100 + @MIN  ; Get current time in HHMM format

    ; Check if it’s Monday to Thursday (6:30 AM to 11:00 PM)
    If ($currentDay >= 2 And $currentDay <= 5) And ($currentTime >= 630 And $currentTime <= 2300) Then
        RunSequence()
    ; Check if it’s Friday (6:30 AM to 7:00 PM)
    ElseIf $currentDay = 6 And ($currentTime >= 630 And $currentTime <= 1900) Then
        RunSequence()
    ; Check if it’s Saturday (3:00 PM to 7:00 PM)
    ElseIf $currentDay = 7 And ($currentTime >= 1500 And $currentTime <= 1900) Then
        RunSequence()
    ; Check if it’s Sunday (3:00 PM to 11:00 PM)
    ElseIf $currentDay = 1 And ($currentTime >= 1500 And $currentTime <= 2300) Then
        RunSequence()
    EndIf

    ; Sleep for 30 minutes (1800000 ms) before checking the time again
   Sleep(1800000)  ; 30 minutes = 1800000 milliseconds
Wend

; Function that runs the sequence
Func RunSequence()
    ; Left click at coordinates (1368, 736)
    MouseClick("left", 1368, 736)
    Sleep(500)  ; Wait for 500 milliseconds

    ; Introduce a 5-second delay before the second click
    Sleep(5000)  ; Wait for 5 seconds

    ; Drag mouse from (662, 960) to (547, 960)
    MouseClickDrag("left", 662, 960, 547, 960)
    Sleep(500)  ; Wait for a bit to ensure the drag is complete

    ; Right click at coordinates (547, 960)
    MouseClick("right", 547, 960)
    Sleep(500)

    ; Left click at coordinates (579, 940)
    MouseClick("left", 579, 940)
    Sleep(500)

    ; Left click at coordinates (1543, 94)
    MouseClick("left", 1543, 94)
    Sleep(500)

    Send("^v")
    Sleep(500)  ; Wait for the paste action

    ; Press Enter
    Send("{ENTER}")
    Sleep(500)  ; Wait for the action to complete

    MouseClick("left", 1903, 97)
    Sleep(500)
EndFunc
















