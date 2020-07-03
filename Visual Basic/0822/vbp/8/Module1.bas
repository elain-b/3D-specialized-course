Attribute VB_Name = "Module1"

Public Function sum(a As Double, b As Integer) As Integer
    Dim c As Integer
    a = sum(10, 20)
    MsgBox a
    sum 10, 20
End Function
Private Sub Command1_Click()
 Dim v As Integer
 Dim a As Integer
 
    a = 10
    b = 10
    
    ref a, b
    
    Print "a=" & a
    Print "b=" & b
End Sub

