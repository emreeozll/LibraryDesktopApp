﻿unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton5: TSpeedButton;
    Button1: TButton;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ADOTable1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ADOTable2FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit2, Unit5, Unit6, Unit7, Unit8, Unit9;

procedure TForm3.ADOTable1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
var
tc : String;

begin
                 tc:= AnsiUpperCase(Form7.Edit2.Text);
                 if (tc = Copy(AnsiUpperCase(ADOTable1.FieldByName('TC_No').AsString),1,tc.Length)) then begin

                     Accept := true;

                 end else begin

                     Accept := false;
                 end;

end;

procedure TForm3.ADOTable2FilterRecord(DataSet: TDataSet; var Accept: Boolean);
var
     kitapAdi : String;
begin
                  kitapAdi := AnsiUpperCase(Form8.Edit1.Text);

                  if (kitapAdi = Copy(AnsiUpperCase(ADOTable2.FieldByName('Kitap_Adi').AsString),1,kitapAdi.Length)) then
                  begin
                     Accept := true;

                  end else

                  begin
                     Accept := false;
                  end;

end;

procedure TForm3.Button1Click(Sender: TObject);
var
deger,topKisiSayisi : Integer;
begin
         topKisiSayisi := 0;

        ADOTable1.Refresh;
        ADOTable1.Last;

        Label1.Caption := 'Toplam kişi sayısı '+ IntToStr(AdoTable1.RecordCount);
        Label1.Show;


end;

procedure TForm3.Button2Click(Sender: TObject);
var
topKitapSayisi : Integer;
begin

topKitapSayisi := 0;

               ADOTable2.Refresh;
               ADOTable2.Last;

               Label2.Caption:=  'Toplam Kitap Sayısı: ' + IntToStr(AdoTable2.RecordCount);
               Label2.Show;


end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
               Form2.Close;         //OnClose özelliği üzerine Anaform olan Form2Yi kapat
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
           Form3.scaleBy(1280,1080);

end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
               Form5.Show;   // Form5 ' yı göster
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
               Form6.Show;  // Form6 'i göster
end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
begin
               Form7.Show;  // Form7 'i göster
end;

procedure TForm3.SpeedButton4Click(Sender: TObject);
begin
               Form8.Show;  // Form8'i göster
end;

procedure TForm3.SpeedButton5Click(Sender: TObject);
begin
             Form9.Show;    // Form9'u göster
end;

end.
