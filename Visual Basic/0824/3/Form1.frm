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
      Height          =   735
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
Private Sub command1_click()

    Dim CATIA As INFITF.Application
    
    On Error Resume Next
    
        Set CATIA = GetObject(, "CATIA.Application")
        
        If Err.Number <> 0 Then
            Set CATIA = CreateObject("CATIA.Application")
            CATIA.Visible = True
            
        End If
    
    On Error GoTo 0
    
    Dim PrdDoc As ProductDocument
    Set PrdDoc = CATIA.ActiveDocument
    
    Dim Prd As Product
    Set Prd = PrdDoc.Product
    
    Dim Prds As Products
    Set Prds = Prd.Products
    
    Prd.PartNumber = "Titanic"
    
    Dim ArrFilePath(1)
    ArrFilePath(0) = "C:\Users\517-12\Desktop\최정우\Visual Basic\0824\3\Hull.CATPart"
    
    Dim ob1 As Object
    Set ob1 = Prds
    
    ob1.AddComponentsFromFiles ArrFilePath, "*"
    
    Dim Assy1 As Product
    Set Assy1 = Prds.AddNewProduct("Assy1")
    
    Dim Assy1Prds As Products
    Set Assy1Prds = Assy1.Products
    
    Dim ArrFilePath2(1)
    ArrFilePath2(0) = "C:\Users\517-12\Desktop\최정우\Visual Basic\0824\3\Funnel.CATPart"
    ArrFilePath2(1) = "C:\Users\517-12\Desktop\최정우\Visual Basic\0824\3\Castle.CATPart"
    
    Dim ob2 As Object
    Set ob2 = Assy1Prds
    
    Call ob2.AddComponentsFromFiles(ArrFilePath2, "*")
    
    Dim Ass1RefPrd As Product
    Set Ass1RefPrd = Assy1.ReferenceProduct
    
    Dim Assy2 As Product
    Set Assy2 = Prds.AddComponent(Ass1RefPrd)
    
    Dim Assy3 As Product
    Set Assy3 = Prds.AddComponent(Ass1RefPrd)
    
    
    Dim ArrMove(11)
    ArrMove(0) = 1      'X 백터
    ArrMove(1) = 0
    ArrMove(2) = 0
    
    ArrMove(3) = 0      'Y 백터
    ArrMove(4) = 1
    ArrMove(5) = 0
    
    ArrMove(6) = 0      'Z 백터
    ArrMove(7) = 0
    ArrMove(8) = 1
    
    ArrMove(9) = 60     'X측 이동거리
    ArrMove(10) = 0     'Y측 이동거리
    ArrMove(11) = 0     'Z측 이동거리
    
    Dim obAssy2 As Object
    Set obAssy2 = Assy1
    
    obAssy2.Move.Apply ArrMove
    
    Dim obAssy3 As Object
    Set obAssy3 = Assy3
    
    ArrMove(9) = 120
    
    obAssy3.Move.Apply ArrMove
    
    Prd.ExtractBOM catFileTypeText, "C:\Users\517-12\Desktop\최정우\Visual Basic\0824\3\TitanicBOM.txt"
End Sub
