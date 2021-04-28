unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    Image2: TImage;
    Image1: TImage;
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses Unit3,Unit5,Unit2;

procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_Return then speedbutton1.Click;
end;

procedure TForm1.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_Return then speedbutton1.Click;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
application.Terminate;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
     Form2.ShowModal;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var kadi,sifre,gka,gsifre: string;
begin
    adotable1.first;
    gka:=edit1.text;
    gsifre:=edit2.text;
    repeat
      kadi:=Adotable1.fieldByName('Kullanici').asstring;
      sifre:=Adotable1.fieldByName('Sifre').asstring;
      if(kadi=gka) and (sifre=gsifre) then
      begin
        form3.show;
        form1.hide;
        exit;
      end;
      adotable1.next;

    until(adotable1.EOF);

    application.MessageBox('Hatalý Giriþ','HATA');
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
form5.show;
end;

end.
