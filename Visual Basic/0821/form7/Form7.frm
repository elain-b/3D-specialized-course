VERSION 5.00
Begin VB.Form Form7 
   Caption         =   "Form7"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form7"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox List1 
      Height          =   1425
      Left            =   240
      TabIndex        =   5
      Top             =   1080
      Width           =   1575
   End
   Begin VB.CommandButton btnEnd 
      Caption         =   "����"
      Height          =   495
      Left            =   2040
      TabIndex        =   4
      Top             =   2040
      Width           =   975
   End
   Begin VB.CommandButton btnAlldelete 
      Caption         =   "��ü ����"
      Height          =   495
      Left            =   2040
      TabIndex        =   3
      Top             =   1440
      Width           =   975
   End
   Begin VB.CommandButton btnDelete 
      Caption         =   "����"
      Height          =   495
      Left            =   2040
      TabIndex        =   2
      Top             =   840
      Width           =   975
   End
   Begin VB.CommandButton btnAdd 
      Caption         =   "�߰�"
      Height          =   495
      Left            =   2040
      TabIndex        =   1
      Top             =   240
      Width           =   975
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   240
      Width           =   1575
   End
End
Attribute VB_Name = "Form7"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnAdd_Click()

    List1.AddItem Text1.Text
    txtItem.Text = ""
    txtItem.SetFocus
    '�ƾƾƾƾ�
    

End Sub

Private Sub btnAlldelete_Click()

    Text1.Text = ""
    List1.Clear

End Sub

Private Sub btnDelete_Click()

    If List1.ListIndex > -1 Then
        List1.RemoveItem List1.ListIndex
        
    Else
        MsgBox "������ �̸���" + vbCrLf + "�����ϼ���"
    End If

End Sub

Private Sub btnEnd_Click()

    MsgBox "���α׷��� ���� �մϴ�"
    End

End Sub
