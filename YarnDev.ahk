CoordMode, Mouse, Client
flip := False

~^r::
    If (flip = False) {
        flip := True
        ifWinExist, ahk_exe Code.exe
        {
            WinActivate, ahk_exe Code.exe
            Sleep, 100
            MouseClick, Left, 900, 1200
            Send, {Ctrl Down}ø{Ctrl Up}
            Sleep, 100
            Send, {Ctrl Down}c{Ctrl Up}
            Send, {Ctrl Down}c{Ctrl Up}
            sleep, 100
            Send, {Enter}
            Send, yarn dev{Enter}
            Sleep, 100
            Run, http://localhost:3000
        }
        return
    }
    If (flip = True) {
        flip := False
        ifWinExist, ahk_exe Code.exe
        {
            WinActivate, ahk_exe Code.exe
            Sleep, 100
            MouseClick, Left, 900, 1200
            Send, {Ctrl Down}ø{Ctrl Up}
            Sleep, 100
            Send, {Ctrl Down}c{Ctrl Up}
            Send, {Ctrl Down}c{Ctrl Up}
            sleep, 100
            Send, {Enter}.
        }
        return
    }
return
