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
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub command1_click()
    Dim outputmsg
    Dim inputoId
    
    MsgBox "���� Ȩ������ �湮�� ȯ�� �մϴ�", vbOKOnly + vbCritical, "�Ķ� ����"
    
    inputold = InputBox("���ϸ� �Է��Ͻÿ� !!!", "�Ķ�����")
    
    If Val(inputold) < 18 Then
        If Val(inputold) <> 0 Then
            MsgBox "���� �о��� ������ ���� �Դϴ�", vbCritical, "�Ķ�����"
        Form1.BackColor = vbBlack
    End If
Else
        outputmsg = MsgBox("�� ����� 5���� �Դϴ�" & vbCrLf & "���� ���Áٽ��ϱ� ???", vbQuestion + vbYesNo, "�Ķ�����")
        Form1.BackColor = vbBlack
        If outputmsg = vbYes Then
            Form1.BackColor = vbRed
        Else
            MsgBox "�ȳ��� ���ʽÿ� !!!"
    End If
    
    
End Sub
