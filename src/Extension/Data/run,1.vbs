Option Explicit

Dim Args, S, A, S1, oWMI, Procs

Set Args = WScript.Arguments
S = ""
For A = 0 To Args.Count - 1
S1 = Trim(Args(A))
If Not Left(S1, 1) = """" And ((InStr(S1, " ") + InStr(S1, Chr(9))) > 0) Then S1 = """" + S1 + """"
If Len(S) > 0 Then S = S + " "
S = S + S1
Next
S1 = Trim(Args(0))
If Left(S1, 1) = """" Then S1 = Mid(S1, 2, Len(S1) - 2)
A = InStrRev(S1, "\")
If A > 0 Then S1 = Right(S1, Len(S1) - A)
Set oWMI = GetObject("winmgmts:\\.\root\cimv2")
Set Procs = oWMI.ExecQuery("Select * From Win32_Process where name='" + S1 + "'")
If Procs.Count = 0 Then CreateObject("WScript.Shell").Run S, 1, False