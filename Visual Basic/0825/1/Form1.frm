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
      Height          =   855
      Left            =   1440
      TabIndex        =   0
      Top             =   960
      Width           =   1935
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
    Set PrtDoc = CATIA.Documents.Item("Part1.CATPart")  '.Open("")
    
    Dim DrwDoc As DrawingDocument
    Set DrwDoc = CATIA.Documents.Add("Drawing")
    
    Dim DrwRoot As DrawingRoot
    Set DrwRoot = DrwDoc.DrawingRoot
    
    Dim DrwSheets As DrawingSheets
    Set DrwSheets = DrwRoot.Sheets
    
    Dim DrwSheet As DrawingSheet
    Set DrwSheet = DrwSheets.Add("FirstSheet")
    
    Dim DrwViews As DrawingViews
    Set DrwViews = DrwSheet.Views
    
    Dim DrwView As DrawingView
    Set DrwView = DrwViews.Add("FirstView")
    
    Dim DrwViewGB As DrawingViewGenerativeBehavior
    Set DrwViewGB = DrwView.GenerativeBehavior
    
    DrwViewGB.DefineFrontView 0, 1, 0, 0, 0, 1
    
    DrwViewGB.Document = PrtDoc
    
    'Dim DrwViewGB2 As DrawingViewGenerativeBehavior
    'Set DrwViewGB2 = DrwView.GenerativeBehavior
    
    'DrwViewGB2.DefineProjectionView DrwViewGB, catTopView
    
End Sub

