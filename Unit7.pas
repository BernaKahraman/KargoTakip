unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.pngimage;

type
  TForm7 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    procedure FormClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}
uses Unit3;

procedure TForm7.FormClick(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm7.Image2Click(Sender: TObject);
begin
     AdoTable1.Prior;
end;

procedure TForm7.Image3Click(Sender: TObject);
begin
       AdoTable1.Next;
end;

procedure TForm7.Image4Click(Sender: TObject);
begin
     AdoTable1.Insert;
end;

procedure TForm7.Image5Click(Sender: TObject);
begin
AdoTable1.Delete;
end;

procedure TForm7.Image6Click(Sender: TObject);
begin
AdoTable1.Post;
end;

procedure TForm7.Image7Click(Sender: TObject);
begin
      AdoTable1.Cancel;
end;

procedure TForm7.Image8Click(Sender: TObject);
begin
    Form7.Hide;
    Form3.Show;
end;

procedure TForm7.Image9Click(Sender: TObject);
begin
       AdoTable1.Refresh;
end;

end.
