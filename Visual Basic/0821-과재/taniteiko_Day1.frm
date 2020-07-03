VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5085
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4650
   LinkTopic       =   "Form1"
   ScaleHeight     =   5085
   ScaleWidth      =   4650
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   2280
      TabIndex        =   4
      Text            =   "Text1"
      Top             =   360
      Width           =   1575
   End
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   2280
      TabIndex        =   3
      Text            =   "Text2"
      Top             =   840
      Width           =   1575
   End
   Begin VB.TextBox Text3 
      Height          =   405
      Left            =   2280
      TabIndex        =   2
      Text            =   "Text3"
      Top             =   1680
      Width           =   1455
   End
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   2280
      TabIndex        =   1
      Text            =   "Text4"
      Top             =   2400
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "입력"
      Height          =   495
      Left            =   2280
      TabIndex        =   0
      Top             =   3120
      Width           =   1575
   End
   Begin VB.Label Label4 
      Caption         =   "수학"
      Height          =   255
      Left            =   480
      TabIndex        =   8
      Top             =   2640
      Width           =   975
   End
   Begin VB.Label Label3 
      Caption         =   "영어"
      Height          =   255
      Left            =   480
      TabIndex        =   7
      Top             =   1800
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "국어"
      Height          =   255
      Left            =   480
      TabIndex        =   6
      Top             =   1080
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "이름"
      Height          =   255
      Left            =   480
      TabIndex        =   5
      Top             =   360
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
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
    
    Form2.Show
End Sub

