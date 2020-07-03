VERSION 5.00
Begin VB.Form Form9 
   Caption         =   "Form9"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form9"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text3 
      Height          =   615
      Left            =   840
      TabIndex        =   3
      Text            =   "³ª"
      Top             =   2040
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "+"
      Height          =   375
      Left            =   2640
      TabIndex        =   2
      Top             =   1080
      Width           =   495
   End
   Begin VB.TextBox Text2 
      Height          =   615
      Left            =   840
      TabIndex        =   1
      Top             =   960
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   615
      Left            =   840
      TabIndex        =   0
      Top             =   120
      Width           =   1215
   End
   Begin VB.Line Line1 
      BorderWidth     =   3
      X1              =   480
      X2              =   3480
      Y1              =   1800
      Y2              =   1800
   End
End
Attribute VB_Name = "Form9"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub command1_CLICK()

    Dim firstText
    Dim secondText
    Dim resultText

    firstText = Val(Text1.Text)
    secondText = Val(Text2.Text)
    resultText = firstText + secondText
    
    Text3.Text = resultText
End Sub

