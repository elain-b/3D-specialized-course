VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5475
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8940
   LinkTopic       =   "Form1"
   ScaleHeight     =   5475
   ScaleWidth      =   8940
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   495
      Left            =   5880
      TabIndex        =   0
      Top             =   3480
      Width           =   1815
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub command1_click()

    Dim i As Integer
    Dim j As Integer
    
    For i = 1 To 9
    
        For j = 1 To 9
        
            Print (i & "*" & j & "=" & i * j & "")
        
        Next
        
    Next
        

End Sub
