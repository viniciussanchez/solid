object FrmExemploSRP: TFrmExemploSRP
  Left = 0
  Top = 0
  Caption = 'Exemplo SRP'
  ClientHeight = 124
  ClientWidth = 359
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnCalcularSalarioErrado: TButton
    Left = 32
    Top = 24
    Width = 145
    Height = 25
    Caption = 'Calcular sal'#225'rio errado'
    TabOrder = 0
    OnClick = btnCalcularSalarioErradoClick
  end
  object btnSalvarFuncionarioErrado: TButton
    Left = 183
    Top = 24
    Width = 145
    Height = 25
    Caption = 'Salvar funcion'#225'rio errado'
    TabOrder = 1
    OnClick = btnSalvarFuncionarioErradoClick
  end
  object btnCalcularSalarioCerto: TButton
    Left = 32
    Top = 72
    Width = 145
    Height = 25
    Caption = 'Calcular sal'#225'rio certo'
    TabOrder = 2
    OnClick = btnCalcularSalarioCertoClick
  end
  object btnSalvarFuncionarioCerto: TButton
    Left = 183
    Top = 72
    Width = 145
    Height = 25
    Caption = 'Salvar funcion'#225'rio certo'
    TabOrder = 3
    OnClick = btnSalvarFuncionarioCertoClick
  end
end
