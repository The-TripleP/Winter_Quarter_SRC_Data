; Wait for 10 seconds
Sleep(10000)

; Get the current mouse position after 10 seconds
$mousePos = MouseGetPos()

; Calculate the middle of the screen
$screenWidth = @DesktopWidth
$screenHeight = @DesktopHeight
$centerX = $screenWidth / 2
$centerY = $screenHeight / 2

; Move the tooltip to the center of the screen
ToolTip("X: " & $mousePos[0] & @CRLF & "Y: " & $mousePos[1], $centerX - 50, $centerY - 30)

; Optional: Keep the ToolTip open for 10 seconds before removing it
Sleep(10000)

; Close the ToolTip after 10 seconds
ToolTip("")  ; This will remove the ToolTip
