unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnSimpan: TButton;
    btnReset: TButton;
    cbKota: TComboBox;
    cbxFoto: TCheckBox;
    cbxKTP: TCheckBox;
    cbxIjazah: TCheckBox;
    Edit1: TEdit;
    Memo1: TMemo;
    rgJenisKelamin: TRadioGroup;
    procedure btnSimpanClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure cbxFotoChange(Sender: TObject);
    procedure cbxKTPChange(Sender: TObject);
    procedure cbxIjazahChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure fromShow(Sender: TObject; var DragObject: TDragObject);
    procedure Memo1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnSimpanClick(Sender: TObject);
begin
 Memo1.lines.add(Edit1.text);

 if (rgJenisKelamin.Itemindex=0) then
 begin
   Memo1.lines.add('Laki-laki');
 end
 else if (rgJenisKelamin.Itemindex=1) then
 begin
   Memo1.lines.add('Perempuan');
 end;

 Memo1.Lines.add(cbKota.Text);

 if (cbxFoto.checked)then
    memo1.lines.add('Foto Ada');

  if (cbxKTP.checked)then
    memo1.lines.add('KTP Ada');

   if (cbxIjazah.checked)then
    memo1.lines.add('Ijazah Ada');
end;

procedure TForm1.btnResetClick(Sender: TObject);
begin
    Edit1.text:=' ';
    Memo1.clear;
    rgJenisKelamin.ItemIndex:=-1;
    cbKota.itemindex:=-1;
    cbKota.Text:=' ';
    cbxFoto.checked:= false;
    cbxKTP.checked:= false;
    cbxIjazah.checked:= false;
end;

procedure TForm1.cbxFotoChange(Sender: TObject);
begin

end;

procedure TForm1.cbxKTPChange(Sender: TObject);
begin

end;

procedure TForm1.cbxIjazahChange(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.fromShow(Sender: TObject; var DragObject: TDragObject);
begin
  //btnReset.Click;
  btnReset.Click(Sender);
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

end.

