VERSION 5.00
Begin VB.Form Form12 
   Caption         =   "Form12"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form12"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   495
      Left            =   1680
      TabIndex        =   0
      Top             =   1320
      Width           =   1215
   End
End
Attribute VB_Name = "Form12"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private a As Integer
Private b As Integer
Private c As Integer


Private Sub command1_CLICK()

    getTextValue
    compute
    setResultValue
    
    
End Sub

Sub getTextValue()
    a = Val(Text1.Text)
    b = Val(Text2.Text)
End Sub


Sub compute()
    c = a + b
End Sub

Sub setResultValue()
    Text3.Text = c
End Sub
