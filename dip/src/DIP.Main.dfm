object FrmExemploDIP: TFrmExemploDIP
  Left = 0
  Top = 0
  Caption = 'Exemplo DIP'
  ClientHeight = 111
  ClientWidth = 413
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnLigarComputadorErrado: TButton
    Left = 24
    Top = 24
    Width = 177
    Height = 25
    Caption = 'Ligar computador (errado)'
    TabOrder = 0
    OnClick = btnLigarComputadorErradoClick
  end
  object btnLigarComputadorCerto: TButton
    Left = 24
    Top = 64
    Width = 177
    Height = 25
    Caption = 'Ligar computador (certo)'
    TabOrder = 1
    OnClick = btnLigarComputadorCertoClick
  end
  object btnLigarCelularCerto: TButton
    Left = 207
    Top = 64
    Width = 177
    Height = 25
    Caption = 'Ligar certo (certo)'
    TabOrder = 2
    OnClick = btnLigarCelularCertoClick
  end
  object btnLigarCelularErrado: TButton
    Left = 207
    Top = 24
    Width = 177
    Height = 25
    Caption = 'Ligar celular (errado)'
    TabOrder = 3
    OnClick = btnLigarCelularErradoClick
  end
end
