; https://autohotkey.com/docs/Hotkeys.htm
; ^ = Ctrl
; ! = Alt
; + = Shift
; # = Windows

; Liste de tous les touches du clavier que nous pouvons utiliser
; https://autohotkey.com/docs/KeyList.htm

^+A::
   Run, https://collegeahuntsic.omnivox.ca/intr/Module/Identification/Login/Login.aspx
   Sleep, 5000 ; ms
   Send, 1047892
   Send, {Tab}
   Send, giro1979
   Send, {Tab}
   Send, {Enter}
Return

^+W::
   Run, https://www.watchcartoononline.io/last-50-recent-release
Return

^+Y::
   Run, https://www.youtube.com/
Return

^+E::
if WinExist("ahk_exe chrome.exe") {
      WinActivate, ahk_exe chrome.exe
      Sleep, 1000 ;ms
      Send, ^t
   } else  {
      Run, C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
   }
   Sleep, 5000 ;ms
   Send, https://mail.google.com/mail/u/0/#inbox
   Send, {Enter}
   /*
   Sleep, 5000 ;ms
   Send, samnangsuon.ss@gmail.com
   Send, {Tab}
   Send, Khmer24Kid
   Send, {Tab}
   Send, {Enter}
   Sleep, 5000 ;ms
   */
Return   

^+F::
   if WinExist("ahk_exe chome.exe") {
      WinActivate, ahk_exe chrome.exe
      Sleep, 1000 ;ms
      Send, ^t
   } else  {
      Run, C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
   }
   Sleep, 5000 ;ms
   Send, https://www.facebook.com/
   Send, {Enter}
   Sleep, 5000 ;ms
   Send, samnangsuon.ss@gmail.com/
   Send, {Tab}
   Send, (-Khmer24Kid-)
   Send, {Tab}
   Send, {Enter}
   Sleep, 2000 ;ms
   Send, ^l ;L
   Send, https://www.facebook.com//messages/t
   Send, {Enter}
Return

^+G::
   Run, https://www.google.ca/
Return
^!+G::
   Send, ^c
   ClipWait, 1
   Run, https://www.google.ca/search?q=%clipboard%
   Sleep, 2
   ; MsgBox, %clipboard%
Return

^+L::
   if WinExist("ahk_exe chrome.exe") {
      WinActivate, ahk_exe chrome.exe
      Sleep, 1000 ;ms
      Send, ^t
   } else  {
      Run, C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
   }
   Sleep, 5000 ;ms
   Send, https://www.linkedin.com/uas/login
   Send, {Enter}
   Sleep, 5000 ;ms
   Send, samnangsuon.ss@gmail.com
   Send, {Tab}
   Send, Khmer24Kid
   Send, {Tab}
   Send, {Enter}
   Sleep, 5000 ;ms

   ; Source de : https://autohotkey.com/boards/viewtopic.php?t=23984
   ;var BoutonACliquer = document.getElementById("nav-settings__dropdown-trigger")
   ;BoutonACliquer.click()
   
   ;(document.getElementById("nav-settings__dropdown-trigger")).click
   
   ;((document.getElementById("inbug-nav-item")).getElementsByTagName("a"))[0].click()
   
   /*
   ; Source de : https://autohotkey.com/board/topic/47052-basic-webpage-controls-with-javascript-com-tutorial/
   wb := ComObjCreate("InternetExplorer.Application")  ;// Create an IE object
   wb.Visible := true                                  ;// Make the IE object visible
   wb.Navigate("www.AutoHotkey.com")                   ;// Navigate to a webpage
   while wb.busy or wb.ReadyState != 4
      Sleep 10
   wb.document.getElementsByClassName("mbr-buttons__btn btn btn-lg btn-default animated fadeInUp delay")[0].click()
   MsgBox, DONE!
   */
Return   

^+Q::
   Inputbox, website, Launch Website, Veuillez saisir le nom du site website
   if ErrorLevel { ;https://autohotkey.com/docs/commands/InputBox.htm
      MsgBox, CANCEL was pressed.
   } else {
      if (website ="google") {
         Run, https://www.%website%.com/
      }
      else if (website ="cartoon") {
         Run, https://www.watchcartoononline.io/last-50-recent-release
      }
      else if (website = "ahk") {
         Run, https://autohotkey.com/docs/AutoHotkey.htm
      }
      else if (website = "youtube") {
         Run, https://www.youtube.com/
      }
      else if (website ="facebook") {
         Run, https://www.facebook.com/
      }
      else if (website = "amazon") {
         Run, https://www.amazon.ca/
      } else {
         Run, https://www.%website%.com/
      }
   }
Return

^+R::
   if WinExist("ahk_exe chrome.exe") {
      WinActivate, ahk_exe chrome.exe
      Sleep, 1000 ;ms
      Send, ^t
   } else  {
      Run, C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
   }
   Sleep, 5000 ;ms
   Send, https://crosemont.omnivox.ca/intr/Module/Identification/Login/Login.aspx
   Send, {Enter}
   Sleep, 5000 ;ms
   Send, 1047892
   Send, {Tab}
   Send, nuance1992
   Send, {Tab}
   Send, {Enter}
   Sleep, 5000 ;ms
Return   

^F12::
   InputBox, nom_program, Program Launcher, Quel logiciel voulez-vous démarrer ?
   if ErrorLevel {
      MsgBox, CANCEL was pressed.
   } else {
      if (nom_program = "powershell") {
         ; https://autohotkey.com/docs/commands/WinMaximize.htm
         if WinExist("ahk_exe powershell.exe")
            WinActivate, ahk_exe powershell.exe
         else
            Run, powershell
      } else if (nom_program = "firefox") {
         Run, Firefox
      } else {
         MsgBox, I'm sorry. I wasn't able to find your program...
      }      
   }
Return
   