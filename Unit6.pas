unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, Data.Win.ADODB;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
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
    ADOQuery1: TADOQuery;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  Form6: TForm6;

implementation

{$R *.dfm}
            uses Unit3;
procedure TForm6.FormClick(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
Edit1.MaxLength:=4;
end;

procedure TForm6.Image1Click(Sender: TObject);
begin
    adoquery1.close;
    adoquery1.SQL.Clear;
    adoquery1.SQL.Add('select * from KargoEkle' );
    adoquery1.SQL.Add('where KargoNo=:2222');
    AdoQuery1.Parameters.ParamByName('2222').value:= Edit1.Text;
    AdoQuery1.Open;
    AdoQuery1.ExecSQL;

end;

procedure TForm6.Image2Click(Sender: TObject);
begin
AdoQuery1.Prior;

end;

procedure TForm6.Image3Click(Sender: TObject);
begin
AdoQuery1.Next;
end;

procedure TForm6.Image4Click(Sender: TObject);
begin
AdoQuery1.Insert;
end;

procedure TForm6.Image5Click(Sender: TObject);
begin
AdoQuery1.Delete;
end;

procedure TForm6.Image6Click(Sender: TObject);
begin
     AdoQuery1.Post;
end;

procedure TForm6.Image7Click(Sender: TObject);
begin
AdoQuery1.Cancel;
end;

procedure TForm6.Image8Click(Sender: TObject);
begin
Form6.Hide;
Form3.Show;
end;

procedure TForm6.Image9Click(Sender: TObject);
begin
       AdoQuery1.Refresh;
end;

end.
