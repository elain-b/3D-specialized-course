VERSION 5.00
Begin VB.Form Form14 
   Caption         =   "Form14"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form14"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   735
      Left            =   1440
      TabIndex        =   2
      Top             =   1920
      Width           =   1815
   End
   Begin VB.TextBox Text2 
      Height          =   735
      Left            =   2280
      TabIndex        =   1
      Text            =   "Text2"
      Top             =   600
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      Height          =   735
      Left            =   720
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   600
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "���� ����"
      Height          =   255
      Left            =   2280
      TabIndex        =   4
      Top             =   240
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "���� ����"
      Height          =   255
      Left            =   480
      TabIndex        =   3
      Top             =   240
      Width           =   1455
   End
End
Attribute VB_Name = "Form14"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Private Sub command1_CLICK()
    Dim eng As Integer
    Dim mat As Integer
    
    eng = Val(Text1.Text)
    mat = Val(Text2.Text)
    
    
    If eng >= 80 Then   'eng�� 80�̻�
    
        If mat >= 80 Then   'mat�� 80�̻�
            MsgBox "���� �հ� / ���� �հ�"
        
        Else    'mat�� 80�̸�
            MsgBox "���� �հ� / ���� ���հ�"
        
        End If
        
    Else    'eng�� 80�̸�
    
        If mat >= 80 Then   'mat�� 80�̻�
            MsgBox "���� ���հ� / ���� �հ�"
        
        Else        'mat�� 80�̸�
            MsgBox "���� ���հ� / ���� ���հ�"
        
        End If
        
        
    End If
 
End Sub

