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
      Top             =   1200
      Width           =   1815
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
    
    Const FilePath As String = "C:\Users\517-12\Desktop\최정우\Visual Basic\0825\2\"
    
    Dim PrtDoc As PartDocument
    Set PrtDoc = CATIA.Documents.Open(FilePath & "Bolt.CATPart")
    
    Dim DrwDoc As DrawingDocument
    Set DrwDoc = CATIA.Documents.Open(FilePath & "TitleBlock.CATDrawing")
    
    Dim DrwRoot As DrawingRoot
    Set DrwRoot = DrwDoc.DrawingRoot
    
    Dim DrwSheets As DrawingSheets
    Set DrwSheets = DrwRoot.Sheets
    
    Dim DrwSheet As DrawingSheet
    Set DrwSheet = DrwSheets.Add("FirstSheet")
    
    Dim DrwViews As DrawingViews
    Set DrwViews = DrwSheet.Views
    
    'Front View
    Dim DrwView As DrawingView
    Set DrwView = DrwViews.Add("FrontView")
    
    Dim DrwViewGB As DrawingViewGenerativeBehavior
    Set DrwViewGB = DrwView.GenerativeBehavior
    
    DrwViewGB.DefineFrontView 1, 0, 0, 0, 1, 0
    DrwViewGB.Document = PrtDoc
    
    'Top View
    Dim TopView As DrawingView
    Set TopView = DrwViews.Add("TopView")
    
    Dim DrwViewTopGB As DrawingViewGenerativeBehavior
    Set DrwViewTopGB = TopView.GenerativeBehavior
    
    DrwViewTopGB.DefineProjectionView DrwViewGB, catTopView
    DrwViewTopGB.Document = PrtDoc
    
    DrwView.x = 300
    DrwView.y = 600
    
    TopView.x = 300
    TopView.y = 200
    
    DrwView.Activate
    DrwView.Factory2D.CreateClosedCircle 30, 30, 5
    
    TopView.Activate
    TopView.Factory2D.CreateClosedCircle 30, 30, 5
    
    DrwView.Texts.Add "선문대", 50, 50
    TopView.Tables.Add 50, 50, 5, 5, 10, 10
    
    DrwDoc.Update
    
End Sub

