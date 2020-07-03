VERSION 5.00
Begin VB.Form Form13 
   Caption         =   "Form13"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form13"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   735
      Left            =   1320
      TabIndex        =   1
      Top             =   2040
      Width           =   1695
   End
   Begin VB.TextBox Text1 
      Height          =   735
      Left            =   1200
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   720
      Width           =   1815
   End
End
Attribute VB_Name = "Form13"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Public b As Integer
Dim d As Integer

Private Sub command1_CLICK()
    Dim a As Integer
    
    If IsNumeric(Text1.Text) Then
    
        MsgBox "문자가 들어가 있습니다"
    
    End If
    
    a = Val(Text1.Text)
    
    If a >= 90 Then '90->
        MsgBox "A"
        
'    End If
'
'    If a < 90 And a >= 80 Then
'        MsgBonx "B"
    
    ElseIf a >= 80 Then '89<->80
        MsgBox "B"
    ElseIf a >= 70 Then '79<->70
        MsgBox "C"
    Else    '69<-
        MsgBox "F"
    End If
'
    
End Sub
