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
   Begin VB.TextBox txtDown 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   240
      TabIndex        =   3
      Text            =   "Test For TextBox !!!"
      Top             =   1920
      Width           =   3735
   End
   Begin VB.TextBox txtUp 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   240
      TabIndex        =   2
      Text            =   "Test For TextBox !!!"
      Top             =   240
      Width           =   3855
   End
   Begin VB.CommandButton btnOrver 
      Caption         =   "위로"
      Height          =   615
      Left            =   2280
      TabIndex        =   1
      Top             =   1200
      Width           =   1215
   End
   Begin VB.CommandButton btnAnder 
      Caption         =   "아래로"
      Height          =   615
      Left            =   840
      TabIndex        =   0
      Top             =   1200
      Width           =   1095
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnOrver_Click()

    txtUp.Text = txtDown.Text
    txtDown.Text = ""

End Sub

Private Sub btnAnder_Click()

    txtDown.Text = txtUp.Text
        txtUp.Text = ""

End Sub
