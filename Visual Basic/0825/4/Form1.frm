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
      Left            =   1320
      TabIndex        =   0
      Top             =   1080
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
    
    Dim PrtDoc As PartDocument
    Set PrtDoc = CATIA.Documents.Add("Part")
    
    Dim Prt As Part
    Set Prt = PrtDoc.Part
    
    Dim oBodies As Bodies
    Set oBodies = Prt.Bodies
    
    Dim oBody As Body
    Set oBody = oBodies.Add()
    
    Dim oSketches As Sketches
    Set oSketches = oBody.Sketches
    
    Dim RefPlaneXY As Reference
    Set RefPlaneXY = Prt.OriginElements.PlaneXY
    
    Dim oSketch As Sketch
    Set oSketch = oBody.Sketches.Add(RefPlaneXY)
    
    Dim Fac2d As Factory2D
    Set Fac2d = oSketch.OpenEdition
    
        Dim Pt1 As Point2D
        Set Pt1 = Fac2d.CreatePoint(10, 10)
        
        Dim Pt2 As Point2D
        Set Pt2 = Fac2d.CreatePoint(90, 10)
    
        Dim Ln1 As Line2D
        Set Ln1 = fCreateLine(Fac2d, Pt1, Pt2)
        
        Dim Ref1 As Reference
        Set Ref1 = Prt.CreateReferenceFromObject(Ln1)
        
        oSketch.Constraints.AddMonoEltCst catCstTypeHorizontality, Ref1
        
    oSketch.CloseEdition
    
    Dim oHybodies As HybridBodies
    Set oHybodies = Prt.HybridBodies
    
    Dim Hybody As HybridBody
    Set Hybody = oHybodies.Add()
    
    Dim HyShpFac As HybridShapeFactory
    Set HyShpFac = Prt.HybridShapeFactory
    
    Dim HyPtCoord1 As HybridShapePointCoord
    Set HyPtCoord1 = HyShpFac.AddNewPointCoord(10, 10, 10)
    
    Dim HyPtCoord2 As HybridShapePointCoord
    Set HyPtCoord2 = HyShpFac.AddNewPointCoord(100, 30, 80)
    
    Hybody.AppendHybridShape HyPtCoord1
    Hybody.AppendHybridShape HyPtCoord2
    
    Dim HyLine As HybridShapeLinePtPt
    Set HyLine = HyShpFac.AddNewLinePtPt(HyPtCoord1, HyPtCoord2)
    
    Hybody.AppendHybridShape HyLine

End Sub

Function fCreateLine(Fac2d As Factory2D, Pt1 As Point2D, Pt2 As Point2D) As Line2D

    Dim ob1 As Object
    Dim ob2 As Object
    Dim Arr1(1)
    Dim Arr2(1)
    Dim Line As Line2D
    
    Set ob1 = Pt1
    Set ob2 = Pt2
    
    ob1.GetCoordinates Arr1
    ob2.GetCoordinates Arr2
    
    Set Line = Fac2d.CreateLine(Arr1(0), Arr1(1), Arr2(0), Arr2(1))
    
    Line.StartPoint = Pt1
    Line.EndPoint = Pt2
    
    Set fCreateLine = Line

End Function

