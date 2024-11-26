#Persistent
SetTimer, CheckClipboard, 200
return

CheckClipboard:
global lastClipboard
if (Clipboard != lastClipboard) {
    lastClipboard := Clipboard
    if (RegExMatch(Clipboard, "https://(x\.com|twitter\.com)/")) {
        newClipboard := RegExReplace(Clipboard, "https://(x\.com|twitter\.com)/", "https://fxtwitter.com/")
        Clipboard := newClipboard
    }
}
return
