Attribute VB_Name = "Module6"
Sub CATMain()

    Dim PrtDoc As PartDocument
    'Set PrtDoc = CATIA.Documents.Item("Part1.CATPart")
    Set PrtDoc = CATIA.ActiveDocument
    
    Dim prt As Part
    Set prt = PrtDoc.Part
    
    Dim oBodies As Bodies
    Set oBodies = prt.Bodies
    
    'Dim oBody As Body
    'Set oBody = oBodies.Item(1)    'PartBody
    
    Dim oBody As Body
    Set oBody = prt.MainBody    'PartBody
    
    Dim oSketches As Sketches
    Set oSketches = oBody.Sketches
    
    Dim PlaneXY As Reference
    Set PlaneXY = prt.OriginElements.PlaneXY
    
    Dim oSketch As Sketch
    Set oSketch = oSketches.Add(PlaneXY)
    
    Dim Fac2D As Factory2D
    Set Fac2D = oSketch.OpenEdition
        
        'Dim x As Integer
        'x = Val(Text1.Text)
        
        'Point持失
        Dim Pt1 As Point2D
        Set Pt1 = Fac2D.CreatePoint(10, 10)
        
        Dim Pt2 As Point2D
        Set Pt2 = Fac2D.CreatePoint(10, 30)
        
        Dim Pt3 As Point2D
        Set Pt3 = Fac2D.CreatePoint(40, 30)
        
        Dim Pt4 As Point2D
        Set Pt4 = Fac2D.CreatePoint(40, 10)
        
        'Line持失
        Dim Ln1 As Line2D
        Set Ln1 = Fac2D.CreateLine(10, 10, 10, 30)
        
        Dim Ln2 As Line2D
        Set Ln2 = Fac2D.CreateLine(10, 30, 40, 30)
        
        Dim Ln3 As Line2D
        Set Ln3 = Fac2D.CreateLine(40, 30, 40, 10)
        
        Dim Ln4 As Line2D
        Set Ln4 = Fac2D.CreateLine(40, 10, 10, 10)
        
        'Angle持失

        
        Dim ob As Object
        Set ob = Fac2D
        
        Dim Ref1 As Reference
        Set Ref1 = prt.CreateReferenceFromObject(Ln1)
        
        Dim Ref2 As Reference
        Set Ref2 = prt.CreateReferenceFromObject(Ln2)
        
    oSketch.CloseEdition
    
    Dim oSketch2 As Sketch
    Set oSketch2 = oSketches.Add(PlaneXY)
    
    Dim Fac2D2 As Factory2D
    Set Fac2D2 = oSketch2.OpenEdition
    
         Dim Circle1 As Circle2D
         Set Circle1 = Fac2D2.CreateClosedCircle(40, 10, 10)
         
    oSketch.CloseEdition
    
    Dim ShapeFac As ShapeFactory
    Set ShapeFac = prt.ShapeFactory
    
    Dim oPad As Pad
    Set oPad = ShapeFac.AddNewPad(oSketch, 20)
    
    Dim oPocket As Pocket
    Set oPocket = ShapeFac.AddNewPocket(oSketch2, 20)
    
    oPocket.DirectionOrientation = catRegularOrientation
    
    
    
    
    prt.Update


End Sub
