VERSION 5.00
Begin VB.Form Form3 
   Caption         =   "Form3"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form3"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   1080
      TabIndex        =   2
      Text            =   "Text2"
      Top             =   1200
      Width           =   2775
   End
   Begin VB.Timer Timer1 
      Left            =   3960
      Top             =   480
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   375
      Left            =   1200
      TabIndex        =   1
      Top             =   2040
      Width           =   2655
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   720
      TabIndex        =   0
      Text            =   "지금 시간"
      Top             =   480
      Width           =   3135
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub command1_CLICK()

    Timer1.Interval = 1000

End Sub

Private Sub Timer1_Timer()

    Text2.Text = Time

End Sub
