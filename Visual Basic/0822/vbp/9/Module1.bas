Attribute VB_Name = "Module1"
Option Explicit

Private Sub Command1_Click()
    Dim s As String
    s = Left("ABCDFG", 3)
    s = Right("ABCDEFG", 3)
    s = Mid("ABCDEFG", 4, 3)
    
    MsgBox s
End Sub
