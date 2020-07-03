VERSION 5.00
Begin VB.Form Form17 
   Caption         =   "Form17"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form17"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "Form17"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Private Sub command1_CLICK()

    Dim i As Integer
    Dim sum(9) As Integer
    
    i = 200
    Dim a As Integer
    
    a = 1000
    
    Do
    
        If a = 1000 Then
            Exit Do
        End If
        
    Loop Until i = 100
        

End Sub
