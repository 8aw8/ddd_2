unit Unit11;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TQuickReport11 = class(TQuickRep)
    QRBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel7: TQRLabel;
    procedure QRDBText6Print(sender: TObject; var Value: String);
  private

  public

  end;

var
  QuickReport11: TQuickReport11;

implementation

{$R *.DFM}

procedure TQuickReport11.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  value:='  '+value;
end;

end.
