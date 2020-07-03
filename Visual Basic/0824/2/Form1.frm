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
      Left            =   1200
      TabIndex        =   0
      Top             =   1200
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
Set PrtDoc = CATIA.Documents.Add("Part")
    
Dim Prt As Part
Set Prt = PrtDoc.Part

Dim oHybodies As HybridBodies
Set oHybodies = Prt.HybridBodies

Dim Hybody As HybridBody
Set Hybody = oHybodies.Add()

Dim HyShpFac As HybridShapeFactory
Set HyShpFac = Prt.HybridShapeFactory

Dim HyPtCoord1 As HybridShapePointCoord
Set HyPtCoord1 = HyShpFac.AddNewPointCoord(10, 60, 30)

Dim HyPtCoord2 As HybridShapePointCoord
Set HyPtCoord2 = HyShpFac.AddNewPointCoord(70, 75, 35)

Dim HyPtCoord3 As HybridShapePointCoord
Set HyPtCoord3 = HyShpFac.AddNewPointCoord(100, 80, 30)

Dim HyPtCoord4 As HybridShapePointCoord
Set HyPtCoord4 = HyShpFac.AddNewPointCoord(100, 80, 40)

Dim HyPtCoord5 As HybridShapePointCoord
Set HyPtCoord5 = HyShpFac.AddNewPointCoord(95, 20, 45)

Dim HyPtCoord6 As HybridShapePointCoord
Set HyPtCoord6 = HyShpFac.AddNewPointCoord(100, 10, 50)

Hybody.AppendHybridShape HyPtCoord1
Hybody.AppendHybridShape HyPtCoord2
Hybody.AppendHybridShape HyPtCoord3
Hybody.AppendHybridShape HyPtCoord4
Hybody.AppendHybridShape HyPtCoord5
Hybody.AppendHybridShape HyPtCoord6

Dim RefPt1 As Reference
Set RefPt1 = Prt.CreateReferenceFromGeometry(HyPtCoord1)

Dim RefPt2 As Reference
Set RefPt2 = Prt.CreateReferenceFromGeometry(HyPtCoord2)

Dim RefPt3 As Reference
Set RefPt3 = Prt.CreateReferenceFromGeometry(HyPtCoord3)

Dim RefPt4 As Reference
Set RefPt4 = Prt.CreateReferenceFromGeometry(HyPtCoord4)

Dim RefPt5 As Reference
Set RefPt5 = Prt.CreateReferenceFromGeometry(HyPtCoord5)

Dim RefPt6 As Reference
Set RefPt6 = Prt.CreateReferenceFromGeometry(HyPtCoord6)

Dim HySpline1 As HybridShapeSpline
Set HySpline1 = HyShpFac.AddNewSpline

HySpline1.AddPoint RefPt1
HySpline1.AddPoint RefPt2
HySpline1.AddPoint RefPt3

Hybody.AppendHybridShape HySpline1

Dim HySpline2 As HybridShapeSpline
Set HySpline2 = HyShpFac.AddNewSpline

HySpline2.AddPoint RefPt4
HySpline2.AddPoint RefPt5
HySpline2.AddPoint RefPt6

Hybody.AppendHybridShape HySpline2

Dim RefSpline1 As Reference
Set RefSpline1 = Prt.CreateReferenceFromGeometry(HySpline1)

Dim RefSpline2 As Reference
Set RefSpline2 = Prt.CreateReferenceFromGeometry(HySpline2)

Dim HySweepExplicit As HybridShapeSweepExplicit
Set HySweepExplicit = HyShpFac.AddNewSweepExplicit(RefSpline1, RefSpline2)

Hybody.AppendHybridShape HySweepExplicit

'Project를 하기 위한 포인트 생성
Dim HyProjectPt1 As HybridShapePointCoord
Set HyProjectPt1 = HyShpFac.AddNewPointCoord(50, 30, 100)

Hybody.AppendHybridShape HyProjectPt1

Dim RefProjectPt As Reference
Set RefProjectPt = Prt.CreateReferenceFromGeometry(HyProjectPt1)

Dim RefSweep As Reference
Set RefSweep = Prt.CreateReferenceFromGeometry(HySweepExplicit)

Dim HyProjectPt As HybridShapeProject
Set HyProjectPt = HyShpFac.AddNewProject(RefProjectPt, RefSweep)

Hybody.AppendHybridShape HyProjectPt

Prt.Update

End Sub

