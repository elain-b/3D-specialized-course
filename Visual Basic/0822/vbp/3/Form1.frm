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
    
    MsgBox "저희 홈페이지 방문을 환영 합니다", vbOKOnly + vbCritical, "파랑 나비"
    
    inputold = InputBox("나일르 입력하시오 !!!", "파랑나비")
    
    If Val(inputold) < 18 Then
        If Val(inputold) <> 0 Then
            MsgBox "아직 학업에 열중할 나이 입니다", vbCritical, "파랑나비"
        Form1.BackColor = vbBlack
    End If
Else
        outputmsg = MsgBox("월 사용료는 5만원 입니다" & vbCrLf & "가입 히시곘습니까 ???", vbQuestion + vbYesNo, "파랑나비")
        Form1.BackColor = vbBlack
        If outputmsg = vbYes Then
            Form1.BackColor = vbRed
        Else
            MsgBox "안녕히 가십시오 !!!"
    End If
    
    
End Sub
