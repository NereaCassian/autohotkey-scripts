#Persistent
SetTimer, CheckClipboard, 200
return

CheckClipboard:
global lastClipboard
if (Clipboard != lastClipboard) {
    lastClipboard := Clipboard
    if (RegExMatch(Clipboard, "https://([a-zA-Z0-9]+\.)*tiktok\.com/")) {
        newClipboard := RegExReplace(Clipboard, "https://([a-zA-Z0-9]+\.)*tiktok\.com/", "https://tfxktok.com/")
        Clipboard := newClipboard
    }
}
return