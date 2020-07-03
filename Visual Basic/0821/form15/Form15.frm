VERSION 5.00
Begin VB.Form Form15 
   Caption         =   "Form15"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form15"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "Form15"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Private Sub command1_CLICK()
    Dim eng As Integer
    Dim mat As Integer
    
    eng = Text1.Text
    
    Select Case Val(eng)
    
        Case 90 To 100
            MsgBox "A"
        Case 80 To 89
            MsgBox "B"
        Case 70 To 79
            MsgBox "C"
        Case Else
            MsgBox "F"

    End Select
    
End Sub
