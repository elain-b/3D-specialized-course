VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5655
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   8490
   LinkTopic       =   "Form1"
   ScaleHeight     =   5655
   ScaleWidth      =   8490
   StartUpPosition =   3  'Windows 기본값
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   735
      Left            =   6720
      TabIndex        =   0
      Top             =   4800
      Width           =   1695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
For a = 1 To 9
Print
Print a & "단"
For b = 1 To 9
출력문자 = a & "*" & b & "=" & a * b & ""
Print Format(출력문자, "@@@@@@@@@");
Next b
Next a
End Sub


