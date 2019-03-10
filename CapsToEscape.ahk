#IfWinActive ahk_exe Code.exe
{
    Escape::CapsLock
    CapsLock::Escape
}

#IfWinActive ahk_exe mintty.exe
{
    Escape::CapsLock
    CapsLock::Escape
}

#NoTrayIcon