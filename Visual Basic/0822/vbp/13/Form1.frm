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
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   615
      Left            =   1440
      TabIndex        =   0
      Top             =   1080
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()

    Dim CATIA As INFITF.Application
    
    On Error Resume Next    '여기 밑에는 Err가 나도 무시해라
    
        Set CATIA = GetObject(, "CATIA.Application")
    
        If Err.Number <> 0 Then
        
            MsgBox "CATIA가 열려 있지 않습니다"
            Exit Sub
            'Set CATIA = CreateObject("CATIA.Application")
            'CATIA.Visible = True
            
        End If
        
    On Error GoTo 0 '이제 여기 부터는 Err가 발생하면 Error 메시지를 띄워라
    
End Sub
