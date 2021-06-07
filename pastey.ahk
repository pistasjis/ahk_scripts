#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; PASTEY SCRIPT - (c) Odyssey346 2021

#MaxThreadsPerHotkey 3
MsgBox,0,, Script started. Press F2 to toggle script.
*f2::
#MaxThreadsPerHotkey 1
If SpamLoop {
    SpamLoop := False
    return
}
SpamLoop := True
Loop {                      ; Add a number after "Loop" if you want it to loop a specific number of times
    Loop 9 {                ; The amount of messages it sends before waiting (default = 9)
        SendInput ^v   ; ^v pastes from clipboard
        SendInput {Enter}
        Sleep, 100
        if not SpamLoop
            break
    }
    Sleep, 0             ; How long in milliseconds it will wait before it starts sending messages again
    if not SpamLoop
        break
}
TrayTip, Pastey, Script disabled. Press F2 to start the script again., 3