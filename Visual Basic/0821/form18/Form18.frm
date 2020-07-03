VERSION 5.00
Begin VB.Form Form18 
   Caption         =   "Form18"
   ClientHeight    =   5730
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form18"
   ScaleHeight     =   5730
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "입력"
      Height          =   495
      Left            =   2520
      TabIndex        =   8
      Top             =   4680
      Width           =   1575
   End
   Begin VB.TextBox Text4 
      Height          =   615
      Left            =   2520
      TabIndex        =   7
      Text            =   "Text4"
      Top             =   3480
      Width           =   1455
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   2520
      TabIndex        =   6
      Text            =   "Text3"
      Top             =   2760
      Width           =   1695
   End
   Begin VB.TextBox Text2 
      Height          =   615
      Left            =   2520
      TabIndex        =   5
      Text            =   "Text2"
      Top             =   1560
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   2760
      TabIndex        =   4
      Text            =   "Text1"
      Top             =   720
      Width           =   1215
   End
   Begin VB.Label Label4 
      Caption         =   "수학"
      Height          =   495
      Left            =   240
      TabIndex        =   3
      Top             =   3360
      Width           =   1095
   End
   Begin VB.Label Label3 
      Caption         =   "영어"
      Height          =   495
      Left            =   360
      TabIndex        =   2
      Top             =   2520
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "국어"
      Height          =   615
      Left            =   360
      TabIndex        =   1
      Top             =   1560
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "름름"
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   720
      Width           =   975
   End
End
Attribute VB_Name = "Form18"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub command1_CLICK()
    Dim i As Integer
    
    na = txtName.Text
    
    For i = 0 To 2
        jum(i) = sung(i).Text
    Next i
    
    For i = 0 To 2
        tot = tot + jum(i)
    Next i
    
    avg = tot / 3
    
    Form19.Show
End Sub
