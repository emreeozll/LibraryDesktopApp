﻿unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit3, Unit1;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
          if((Edit1.Text = 'admin')and (Edit2.Text='admin')) then begin

           ShowMessage('Giriş Başarılı');

             Form2.Hide;     // Form2'yi Gizle
             Form3.Show;     // Form3'ü Göster


          end else if (Edit1.Text <> 'admin') then begin

                ShowMessage('Kullanıcı Adı yanlış !');
          end else if (Edit2.Text <> 'admin') then begin

            ShowMessage('Kullanıcı Şifresi yanlış !');

          end;



end;

end.
