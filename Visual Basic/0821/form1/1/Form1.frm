VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btnEnd 
      Caption         =   "종료"
      Height          =   855
      Left            =   2160
      TabIndex        =   5
      Top             =   2040
      Width           =   1575
   End
   Begin VB.CommandButton btnStart 
      Caption         =   "Today is..."
      Height          =   855
      Left            =   480
      TabIndex        =   4
      Top             =   2040
      Width           =   1455
   End
   Begin VB.TextBox txtTime 
      BackColor       =   &H00C0FFFF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1920
      TabIndex        =   3
      Text            =   "현재 시간 입니다"
      Top             =   1080
      Width           =   2295
   End
   Begin VB.TextBox txtToday 
      BackColor       =   &H00FF8080&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H008080FF&
      Height          =   615
      Left            =   1920
      TabIndex        =   2
      Text            =   "오늘 날짜 입니다"
      Top             =   360
      Width           =   2295
   End
   Begin VB.Label lblTime 
      Caption         =   "현재 시간"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   1
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Label lblToday 
      Caption         =   "오늘 날짜"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   480
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnEnd_Click()

    MsgBox "프로그램을 종료 합니다"
    End

End Sub

Private Sub btnStart_Click()

    txtToday.Text = Date
    txtTime.Text = Time

End Sub
