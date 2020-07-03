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
      Height          =   495
      Left            =   1320
      TabIndex        =   0
      Top             =   960
      Width           =   1815
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
    
    On Error Resume Next
    
        Set CATIA = GetObject(, "CATIA.Application")
    
        If Err.Number <> 0 Then
        
            Set CATIA = CreateObject("CATIA.Application")
            CATIA.Visible = True
            
        End If
        
    On Error GoTo 0
    
            
    Set CATIA = GetObject(, "CATIA.Application")
    
    'Set CATIA = CreateObject("CATIA.Application")
    'CATIA.Visible = True

End Sub
