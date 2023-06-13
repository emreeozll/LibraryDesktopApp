unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TForm7 = class(TForm)
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    procedure Edit2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
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

procedure TForm7.Edit2Click(Sender: TObject);
begin
             ShowMessage('Lütfen TC Kimlik numarasına göre arama yapınız !');
end;

procedure TForm7.SpeedButton1Click(Sender: TObject);
begin
        Form3.ADOTable1.Filtered := false;

              if (Edit2.Text = ' ') then begin
                      Form3.ADOTable1.Filtered := false;
              end
              else begin
                      Form3.ADOTable1.Filtered := true;
              end;
end;

procedure TForm7.SpeedButton2Click(Sender: TObject);
begin


          Label3.Visible := true;
          Label4.Visible := true;
          Form3.ADOTable1.Edit;

end;

procedure TForm7.SpeedButton3Click(Sender: TObject);
begin
               Form3.ADOTable1.Edit;
               Form3.ADOTable1.Post;
               ShowMessage('Kullanıcı düzenlendi.');
               Label3.Visible := false;
               Label4.Visible := false;

end;

end.
