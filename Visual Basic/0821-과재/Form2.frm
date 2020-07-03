VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form2"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox sung 
      Height          =   495
      Index           =   2
      Left            =   240
      TabIndex        =   5
      Text            =   "Text1"
      Top             =   1680
      Width           =   1455
   End
   Begin VB.TextBox sung 
      Height          =   495
      Index           =   1
      Left            =   240
      TabIndex        =   4
      Text            =   "Text1"
      Top             =   960
      Width           =   1455
   End
   Begin VB.TextBox sung 
      Height          =   495
      Index           =   0
      Left            =   240
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   360
      Width           =   1455
   End
   Begin VB.Label Label3 
      Caption         =   "입니다"
      Height          =   255
      Left            =   2160
      TabIndex        =   3
      Top             =   1800
      Width           =   1815
   End
   Begin VB.Label Label2 
      Caption         =   "이고 평균은"
      Height          =   375
      Left            =   2160
      TabIndex        =   2
      Top             =   1080
      Width           =   1815
   End
   Begin VB.Label Label1 
      Caption         =   "학생의 총점은"
      Height          =   375
      Left            =   2160
      TabIndex        =   1
      Top             =   480
      Width           =   1815
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    txtName2.Text = na
    txtTot.Text = tot
    txtAvg.Text = avg
End Sub

Private Sub Label3_Click()

End Sub
