unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg;

type
  TExportSystem = class(TForm)
    ColorPanel: TPanel;
    Attribute: TPanel;
    Foooor: TPanel;
    Color: TComboBox;
    Atribute: TComboBox;
    Flor: TComboBox;
    Green: TImage;
    Yellow: TImage;
    Red: TImage;
    PersonL: TImage;
    personR: TImage;
    personU: TImage;
    void: TImage;
    PersonD: TImage;
    createPathBtn: TButton;
    timer: TTimer;
    person: TImage;
    procedure ColorChange(Sender: TObject);
    procedure FlorChange(Sender: TObject);
    procedure AtributeChange(Sender: TObject);
    procedure createPathBtnClick(Sender: TObject);
    procedure timerTimer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
    ExportSystem: TExportSystem;


implementation

{$R *.dfm}
Const
    REDR = 0;
    YELLOWR = 1;
    GREENR = 2;
    WOOD = 0;
    BRICK = 1;
    CARPET = 2;
    FLOWER = 0;
    MIRROR = 1;
    WINDOW = 2;
    NOTHING = 3;
var

    isR, isD, isL, isU: boolean;


procedure HidePictures;
begin
    ExportSystem.Green.Visible := false;
    ExportSystem.Yellow.Visible := false;
    ExportSystem.Red.Visible := false;
end;

procedure HideP;
begin
    With ExportSystem do
    begin
        PersonU.Visible := false;
        PersonL.Visible := false;
        PersonR.Visible := false;
    end;
end;

procedure PU;
begin

    ExportSystem.person.Height := 100;
    ExportSystem.person.Width := 100;
    ExportSystem.person.Picture := ExportSystem.personU.Picture;
    isU := true;
    isD := false;
    isR := false;
    isL := false;
end;

procedure PD;
begin

    ExportSystem.person.Height := 100;
    ExportSystem.person.Width := 100;
    ExportSystem.person.Picture := ExportSystem.personD.Picture;
    isU := false;
    isD := true;
    isR := false;
    isL := false;
end;

procedure PL;
begin

    ExportSystem.person.Height := 100;
    ExportSystem.person.Width := 100;
    ExportSystem.person.Picture := ExportSystem.personL.Picture;
    isU := false;
    isD := false;
    isR := false;
    isL := true;
end;

procedure PR;
begin

    ExportSystem.person.Height := 100;
    ExportSystem.person.Width := 100;
    ExportSystem.person.Picture := ExportSystem.personR.Picture;
    isU := false;
    isD := false;
    isR := true;
    isL := false;
end;

procedure P1;
begin
    ExportSystem.person.Left := 610;
    ExportSystem.person.Top := 400;
end;

procedure P2;
begin
    ExportSystem.person.Left := 480;
    ExportSystem.person.Top := 400;
end;

procedure P3;
begin
   ExportSystem.person.Left := 360;
    ExportSystem.person.Top := 400;
end;

procedure P4;
begin
    ExportSystem.person.Left := 360;
    ExportSystem.person.Top := 270;
end;

procedure P5;
begin
    ExportSystem.person.Left := 320;
    ExportSystem.person.Top := 270;
end;

procedure P6;
begin
    ExportSystem.person.Left := 320;
    ExportSystem.person.Top := 144;
end;

procedure P7;
begin
    ExportSystem.person.Left := 368;
    ExportSystem.person.Top := 120;
end;

procedure P8;
begin
    ExportSystem.person.Left := 470;
    ExportSystem.person.Top := 270;
end;

procedure P9;
begin
    ExportSystem.person.Left := 636;
    ExportSystem.person.Top := 224;
end;

procedure P10;
begin
    ExportSystem.person.Left := 636;
    ExportSystem.person.Top := 144;
end;

procedure P11;
begin
    ExportSystem.person.Left := 712;
    ExportSystem.person.Top := 23;
end;

procedure P12;
begin
    ExportSystem.person.Left := 256;
    ExportSystem.person.Top := 40;
end;

procedure P13;
begin
    ExportSystem.person.Left := 678;
    ExportSystem.person.Top := 470;
end;

procedure P14;
begin
    ExportSystem.person.Left := 240;
    ExportSystem.person.Top := 350;
end;



procedure TExportSystem.AtributeChange(Sender: TObject);
begin
    person.Visible := true;

    person.Height := 120;
    person.Width := 80;
    if Color.ItemIndex = REDR then
    begin
        if Flor.ItemIndex = WOOD then
        begin
            if Atribute.ItemIndex = Nothing then
            begin p4; pu; end;
            if Atribute.ItemIndex = WINDOW then
            begin p3; pl; end;
            if Atribute.ItemIndex = FLOWER then
            begin p2; pd; end;
            if Atribute.ItemIndex = Mirror then
            begin p1; pr; end;
        end;

        if Flor.ItemIndex = BRICK then
        begin
            if Atribute.ItemIndex = Nothing then
            begin p6; pd; end;
            if Atribute.ItemIndex = WINDOW then
            begin p7; pu; end;
            if Atribute.ItemIndex = FLOWER then
            begin p7; pr; end;
            if Atribute.ItemIndex = Mirror then
            begin p7; pl; end;
        end;

        if Flor.ItemIndex = CARPET then
        begin
            if Atribute.ItemIndex = Nothing then
            begin p10; pd; end;
            if Atribute.ItemIndex = WINDOW then
            begin p10; pr; end;
            if Atribute.ItemIndex = FLOWER then
            begin p10; pl; end;
            if Atribute.ItemIndex = Mirror then
            begin p10; pu; end;
        end;
    end;


    if Color.ItemIndex = GREENR then
    begin
        if Flor.ItemIndex = WOOD then
        begin
            if Atribute.ItemIndex = Nothing then
            begin p2; pd; end;
            if Atribute.ItemIndex = WINDOW then
            begin p1; pr; end;
            if Atribute.ItemIndex = FLOWER then
            begin p3; pl; end;
            if Atribute.ItemIndex = Mirror then
            begin p3; pd; end;
        end;

        if Flor.ItemIndex = BRICK then
        begin
            if Atribute.ItemIndex = Nothing then
            begin p6; pd; end;
            if Atribute.ItemIndex = WINDOW then
            begin p7; pl; end;
            if Atribute.ItemIndex = FLOWER then
            begin p7; pr; end;
            if Atribute.ItemIndex = Mirror then
            begin p7; pu; end;
        end;

        if Flor.ItemIndex = CARPET then
        begin
            if Atribute.ItemIndex = Nothing then
            begin p10; pl; end;
            if Atribute.ItemIndex = WINDOW then
            begin p10; pu; end;
            if Atribute.ItemIndex = FLOWER then
            begin p10; pd; end;
            if Atribute.ItemIndex = Mirror then
            begin p10; pr; end;
        end;
    end;


    if Color.ItemIndex = YELLOWR then
    begin
        if Flor.ItemIndex = WOOD then
        begin
            if Atribute.ItemIndex = Nothing then
            begin p4; pu; end;
            if Atribute.ItemIndex = WINDOW then
            begin p1; pr; end;
            if Atribute.ItemIndex = FLOWER then
            begin p2; pd; end;
            if Atribute.ItemIndex = Mirror then
            begin p3; pl; end;
        end;

        if Flor.ItemIndex = BRICK then
        begin
            if Atribute.ItemIndex = Nothing then
            begin p6; pd; end;
            if Atribute.ItemIndex = WINDOW then
            begin p7; pu; end;
            if Atribute.ItemIndex = FLOWER then
            begin p7; pr; end;
            if Atribute.ItemIndex = Mirror then
            begin p7; pl; end;
        end;

        if Flor.ItemIndex = CARPET then
        begin
            if Atribute.ItemIndex = Nothing then
            begin p10; pd; end;
            if Atribute.ItemIndex = WINDOW then
            begin p10; pr; end;
            if Atribute.ItemIndex = FLOWER then
            begin p10; pu; end;
            if Atribute.ItemIndex = Mirror then
            begin p10; pl; end;
        end;
    end;

end;

procedure TExportSystem.ColorChange(Sender: TObject);
begin
    HidePictures;
    if Color.ItemIndex = 0 then
        Red.Visible := true
    else if Color.ItemIndex = 1 then
        Yellow.Visible := true
    else
        Green.Visible := true;

    AtributeChange(Sender);
    FlorChange(Sender);
end;


procedure TExportSystem.createPathBtnClick(Sender: TObject);
begin
    timer.Enabled := true;
    createPathBtn.Enabled := false;
    Color.Enabled := false;
    flor.Enabled := false;
    Atribute.Enabled := false;
end;

procedure TExportSystem.FlorChange(Sender: TObject);
begin
    if Flor.ItemIndex = 0 then
    begin
        person.Left := 376; person.Top := 408;
    end;

    if Flor.ItemIndex = 1 then
    begin
        person.Left := 376; person.Top := 120;
    end;

    if Flor.ItemIndex = 2 then
    begin
        person.Left := 650; person.Top := 120;
    end;
    AtributeChange(Sender);
end;

procedure TExportSystem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = 118 then
    begin
    createPathBtn.Enabled := true;
    Color.Enabled := true;
    flor.Enabled := true;
    Atribute.Enabled := true;
    timer.Enabled := false;
    end;

end;

function is1: boolean;
begin
    is1 := (ExportSystem.person.left = 610) and (ExportSystem.person.top = 400);
end;

function is2: boolean;
begin
    is2 := (ExportSystem.person.left = 480) and (ExportSystem.person.top = 400);
end;

function is3: boolean;
begin
    is3 := (ExportSystem.person.left = 360) and (ExportSystem.person.top = 400);
end;

function is4: boolean;
begin
    with ExportSystem do
    is4 := (ExportSystem.person.left = 360) and (person.top = 270);
end;

function is5: boolean;
begin
    with ExportSystem do
    is5 := (person.left = 320) and (person.top = 270);
end;

function is6: boolean;
begin
    with ExportSystem do
    is6 := (person.left = 320) and (person.top = 144);
end;

function is7: boolean;
begin
    with ExportSystem do
    is7 := (person.left = 368) and (person.top = 120);
end;

function is8: boolean;
begin
    with ExportSystem do
    is8 := (person.left = 470) and (person.top = 270);
end;

function is9: boolean;
begin
    with ExportSystem do
    is9 := (person.left = 636) and (person.top = 224);
end;

function is10: boolean;
begin
    with ExportSystem do
    is10 := (person.left = 636) and (person.top = 144);
end;

function is11: boolean;
begin
    with ExportSystem do
    is11 := (person.left = 712) and (person.top = 23);
end;

function is12: boolean;
begin
    with ExportSystem do
    is12 := (person.left = 256) and (person.top = 40);
end;

function is13: boolean;
begin
    with ExportSystem do
    is13 := (person.left = 678) and (person.top = 470);
end;

function is14: boolean;
begin
    with ExportSystem do
    is14 := (person.left = 240) and (person.top = 350);
end;


procedure TExportSystem.timerTimer(Sender: TObject);
var
  i: Integer;
begin
    if Color.ItemIndex = REDR then
        for i := 0 to 0 do
        begin
            if is1 and isR then begin pd; break; end;
            if is1 and isD then begin pL; break; end;
            if is1 and isL then begin p2; break; end;
            if is2 and isD then begin pL; break; end;
            if is2 and isL then begin p3; break; end;
            if is3 and isD then begin pL; break; end;
            if is3 and isR then begin pu; break; end;
            if is3 and isL then begin pU; break; end;
            if is3 and isU then begin p4; break; end;
            if is4 and isD then begin pr; break; end;
            if is4 and isU then begin pr; break; end;
            if is4 and isR then begin p8; break; end;
            if is7 and isU then begin pL; break; end;
            if is7 and isL then begin pD; break; end;
            if is7 and isR then begin pD; break; end;
            if is7 and isD then begin p6; break; end;
            if is6 and isD then begin p5; break; end;
            if is5 and isD then begin pR; break; end;
            if is5 and isR then begin p4; break; end;
            if is4 and isD then begin pR; break; end;
            if is8 and isR then begin p9; break; end;
            if is9 and isR then begin pU; break; end;
            if is9 and isD then begin pR; break; end;
            if is9 and isU then begin p10; break; end;
            if is10 and isD then begin pR; break; end;
            if is10 and isL then begin pU; break; end;
            if is10 and isR then begin pU; break; end;
            if is10 and isU then begin p11;  break; end;
            if is11 and isU then begin pR; break; end;
            if is11 and isR then
            begin
                color.ItemIndex := yellowR;
                yellow.Visible := true;
                red.Visible := false;
                green.Visible := false;
                p13; pl; break
            end;
        end;
    if color.ItemIndex = yellowr then
        for i := 0 to 0 do
        begin
            if is13 and isL then begin pu; break; end;
            if is13 and isU then begin p1; break; end;
            if is1 and isR then begin pd; break; end;
            if is1 and isD then begin pL; break; end;
            if is1 and isU then begin pL; break; end;
            if is1 and isL then begin p2; break; end;
            if is2 and isD then begin pL; break; end;
            if is2 and isL then begin p3; break; end;
            if is3 and isD then begin pL; break; end;
            if is3 and isL then begin p14; break; end;
            if is3 and isU then begin pL; break; end;
            if is3 and isR then begin pU; break; end;
            if is10 and isU then begin pL; break; end;
            if is10 and isL then begin pD; break; end;
            if is10 and isR then begin pD; break; end;
            if is10 and isD then begin p9; break; end;
            if is9 and isD then begin pL; break; end;
            if is9 and isL then begin p8; break; end;
            if is8 and isL then begin p4; break; end;
            if is4 and isL then begin pD; break; end;
            if is4 and isU then begin pL; break; end;
            if is4 and isR then begin pD; break; end;
            if is4 and isD then begin p3; break; end;
            if is7 and isU then begin pL; break; end;
            if is7 and isL then begin pD; break; end;
            if is7 and isR then begin pD; break; end;
            if is7 and isD then begin p6; break; end;
            if is6 and isD then begin p5; break; end;
            if is5 and isD then begin p4; break; end;
            if is12 then begin p7; break; end;
            
        end;

        if color.ItemIndex = greenR then
        for i := 0 to 0 do
        begin
            if is7 and isL then begin pD; break; end;
            if is7 and isR then begin pD; break; end;
            if is7 and isD then begin p6; break; end;
            if is6 and isD then begin p5; break; end;
            if is5 and isD then begin p4; break; end;
            if is10 and isU then begin pL; break; end;
            if is10 and isR then begin pD; break; end;
            if is10 and isL then begin pD; break; end;
            if is10 and isD then begin p9; break; end;
            if is9 and isD then begin pL; break; end;
            if is9 and isL then begin p8; break; end;
            if is8 and isL then begin p5; break; end;
            if is5 and isL then begin pD; break; end;
            if is5 and isD then begin p4; break; end;
            if is4 and isD then begin p3; break; end;
            if is3 and isL then begin pd; break; end;
            if is3 and isU then begin pL; break; end;
            if is3 and isD then begin pR; break; end;
            if is3 and isR then begin p2; break; end;
            if is2 and isL then begin pd; break; end;
            if is2 and isU then begin pr; break; end;
            if is2 and isd then begin pr; break; end;
            if is2 and isR then begin p1; break; end;
            if is1 and isR then begin pd; break; end;
            if is1 and isL then begin pd; break; end;
            if is1 and isD then begin p13; break; end;
            if is13 and isD then begin pR; break; end;
            if is13 and isR then
            begin
                color.ItemIndex := yellowr;
                yellow.Visible := true;
                green.Visible := false;
                p12; break;
            end;




        end;



        if is14 and isL then
        begin
            person.top := person.top + 1;
            color.Enabled := true;
            flor.Enabled := true;
            Atribute.Enabled := true;
            createPathBtn.Enabled := true;
            timer.Enabled := false;
        end;
end;

end.

