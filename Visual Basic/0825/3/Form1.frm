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
      Left            =   1440
      TabIndex        =   0
      Top             =   1080
      Width           =   1575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Sub command1_click()

    Dim CATIA As INFITF.Application
    
    On Error Resume Next
    
        Set CATIA = GetObject(, "CATIA.Application")
        
        If Err.Number <> 0 Then
            
            Set CATIA = CreateObject("CATIA.Application")
            CATIA.Visible = True
            
        End If
    
    On Error GoTo 0
    
    Dim PrtDoc As PartDocument
    Set PrtDoc = CATIA.ActiveDocument
    
    Dim Sel As Selection
    Set Sel = PrtDoc.Selection
    
    Dim oSketch As Sketch
    Set oSketch = PrtDoc.Part.MainBody.Sketches.Item(1)
    
    'Sel.Add oSketch
    
    Dim oType(0)
    oType(0) = "AnyObject"
    
    Dim ob1 As Object
    Set ob1 = Sel
    
    ob1.SelectElement2 oType, "Selection", True
    
    MsgBox Sel.Item(1).Value.Name

End Sub
