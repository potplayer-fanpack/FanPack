Option Explicit

Const FName = "ace_engine.exe", FFolder = "%APPDATA%\.ACEStream"

Dim oWMI, WSh, FDir, A, Cnt, Procs, Proc, cmd

Set WSh = WScript.CreateObject("WScript.Shell")
FDir = WSh.ExpandEnvironmentStrings(FFolder)
Set oWMI = GetObject("winmgmts:\\.\root\cimv2")
For A = 0 To 9
Cnt = 0
Set Procs = oWMI.ExecQuery("Select * From Win32_Process where name='" + FName + "'")
For Each Proc In Procs
Cnt = Cnt + 1
Proc.Terminate(0)
Next
If Cnt = 0 Then Exit For
WScript.Sleep(1000)
Next
If Cnt = 0 Then
cmd = WSh.ExpandEnvironmentStrings("%COMSPEC%")
A = WSh.Run(cmd & " /c rmdir /s /q """ & FDir & """", 0, True)
If A = 0 Or A = 2 Then
WSh.Run cmd & " /c mkdir """ & FDir & """", 0, True
WSh.Run cmd & " /c copy playerconf.pickle """ & FDir & """", 0, True
MsgBox "Настройки программы сброшены!", 64, "AceStream Engine"
Else
MsgBox "Не удалось удалить папку AceStream!" & Chr(13) & "Код ошибки: " & CStr(A), 16, "Ошибка удаления"
End If
Else
MsgBox "Не удалось завершить процесс AceStream!" & Chr(13) & "Количество процессов: " & CStr(Cnt), 16, "Ошибка завершения"
End If