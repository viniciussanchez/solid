object FrmExemploOCP: TFrmExemploOCP
  Left = 0
  Top = 0
  Caption = 'Exemplo OCP'
  ClientHeight = 135
  ClientWidth = 690
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnCalcularPrecoErrado: TButton
    Left = 40
    Top = 32
    Width = 161
    Height = 25
    Caption = 'Calcular pre'#231'o errado'
    TabOrder = 0
    OnClick = btnCalcularPrecoErradoClick
  end
  object btnCalcularPrecoCerto: TButton
    Left = 40
    Top = 80
    Width = 161
    Height = 25
    Caption = 'Calcular pre'#231'o certo'
    TabOrder = 1
    OnClick = btnCalcularPrecoCertoClick
  end
  object btnCalcularAreaRetanguloErrado: TButton
    Left = 232
    Top = 32
    Width = 209
    Height = 25
    Caption = 'Calcular '#225'rea retangulo (errado)'
    TabOrder = 2
    OnClick = btnCalcularAreaRetanguloErradoClick
  end
  object btnCalcularAreaCirculoErrado: TButton
    Left = 447
    Top = 32
    Width = 209
    Height = 25
    Caption = 'Calcular '#225'rea circulo (errado)'
    TabOrder = 3
    OnClick = btnCalcularAreaCirculoErradoClick
  end
  object btnCalcularAreaCirculoCerto: TButton
    Left = 447
    Top = 80
    Width = 209
    Height = 25
    Caption = 'Calcular '#225'rea circulo (certo)'
    TabOrder = 4
    OnClick = btnCalcularAreaCirculoCertoClick
  end
  object btnCalcularAreaRetanguloCerto: TButton
    Left = 232
    Top = 80
    Width = 209
    Height = 25
    Caption = 'Calcular '#225'rea retangulo (certo)'
    TabOrder = 5
    OnClick = btnCalcularAreaRetanguloCertoClick
  end
end
