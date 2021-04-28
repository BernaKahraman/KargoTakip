unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage,
  Data.Win.ADODB;

type
  TForm4 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Button1: TButton;
    Label20: TLabel;
    Label21: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Image9: TImage;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBGrid1: TDBGrid;
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}
uses Unit3;

procedure TForm4.Button1Click(Sender: TObject);
var
adet,agirlik,sonuc:Double;
begin
    adet:= StrToFloat(DbEdit14.Text);
   agirlik:=StrToFloat(DbEdit15.Text);
   sonuc:= (0.90 * adet * agirlik);
   Label20.Caption:=FloatToStr(sonuc)+('TL');
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   application.Terminate;
end;

procedure TForm4.Image1Click(Sender: TObject);
begin
      AdoTable1.Prior;
end;

procedure TForm4.Image2Click(Sender: TObject);
begin
       AdoTable1.Next;
end;

procedure TForm4.Image3Click(Sender: TObject);
begin
      AdoTable1.Insert;
end;

procedure TForm4.Image4Click(Sender: TObject);
begin
       AdoTable1.Delete;
end;

procedure TForm4.Image5Click(Sender: TObject);
begin
     AdoTable1.Post;
    ShowMessage('Kargo Bilgileri Kaydedilmiþtir..');
end;

procedure TForm4.Image6Click(Sender: TObject);
begin
        AdoTable1.Cancel;
end;

procedure TForm4.Image7Click(Sender: TObject);
begin
    Form4.Hide;
    Form3.Show;
end;

procedure TForm4.Image9Click(Sender: TObject);
begin
    AdoTable1.Refresh;
end;

end.
