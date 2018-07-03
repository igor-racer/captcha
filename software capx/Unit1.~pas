unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, jpeg, OleCtrls, MODI_TLB, comobj, ComCtrls,
  AppEvnts, SHDocVw, ExtDlgs;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    Image3: TImage;
    Bevel1: TBevel;
    Image4: TImage;
    Bevel2: TBevel;
    BitBtn2: TBitBtn;
    Memo2: TMemo;
    Button1: TButton;
    Label1: TLabel;
    Image5: TImage;
    MiDocView1: TMiDocView;
    Edit1: TEdit;
    ApplicationEvents1: TApplicationEvents;
    Button2: TButton;
    WebBrowser1: TWebBrowser;
    Button3: TButton;
    Image6: TImage;
    BitBtn3: TBitBtn;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Button8: TButton;
    Bevel3: TBevel;
    Image7: TImage;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Shape1: TShape;
    Button13: TButton;
    Button14: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
  private
    { Private declarations }
  public


    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function shock3(pix,pix1,pix2,pix3,pix4,pix5,pix6,pix7,pix8,pix9,pix10,pix11,pix12 :tcolor): tcolor;
begin




end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
   n1, n2 : integer ;
   W1, W2: Word;
   b1 : byte ;
   x,y : Integer;
   line, line2 : tcolor ;

   cor : string ;


begin

       image3.Height := image1.Height ;
       image3.Width := image1.Width ;

  with Image3.Picture.Bitmap do
  begin

    PixelFormat := pf32bit;
    Width := Image1.Width;
    Height := Image1.Height;
    for x := 0 to Width - 1 do

      for y := 0 to Height - 1 do begin
        {
        trata pixel

        }
        line :=  image1.Canvas.Pixels[x,y] ;
        line2 := clWhite ;

        // showmessage(colortostring(Line));

        if (line = clBlack ) then begin   // $00363636 - clBlack

        Canvas.Pixels[x,y] := image1.Canvas.Pixels[x,y] ;

        end else begin

            Canvas.Pixels[x,y] := line2 ;

        end;

        memo1.lines.add(colortostring(Line)) ;

       end;

  end;

  Image1.Invalidate;

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var
   n1, n2 : integer ;
   W1, W2: Word;
   b1 : byte ;
   x,y : Integer;
   line, line2, line3 : tcolor ;

   cor : string ;


begin

       image4.Height := image3.Height ;
       image4.Width := image3.Width ;

  with Image4.Picture.Bitmap do
  begin

    PixelFormat := pf32bit;
    Width := Image3.Width;
    Height := Image3.Height;
    for x := 0 to Width - 1 do

      for y := 0 to Height - 1 do begin



        line :=  image3.Canvas.Pixels[x,y] ;
        line2 := clWhite ;
        line3 := image3.Canvas.Pixels[x + 1 , y ] ;

        {
        trata pixel === inicio
        }

        if (line = line3) then begin

        Canvas.Pixels[x,y] := image3.Canvas.Pixels[x,y] ;

        end else begin

          Canvas.Pixels[x,y] := line2 ;

        end;

        {
        trata pixel === fim
        }

       end;

  end;

  Image3.Invalidate;



end;

procedure TForm1.Button1Click(Sender: TObject);

Var
doc :IDocument;
Img :IImage;
Layout :ILayout;

begin


//prtscr e modi


//////////////////////
doc := IDispatch(CreateOleObject('MODI.Document')) as IDocument;
doc.create('melhorlance2.bmp'); //
doc.ocr(miLANG_ENGLISH,true,true);
Img := IDispatch(doc.Images[0]) as IImage;
Layout := IDispatch(Img.Layout) as ILayout;
//Memo1.Lines.Add(Layout.Text);

edit1.Text := Layout.Text;

MiDocView1.Document := doc;
doc.Close(false);
Img := nil;
Layout := nil;


// edit1.Text := FilterChars(edit1.Text,['0'..'9']) ;




end;

procedure TForm1.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
ShowMessage(e.Message);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
      // salva img
      Image4.Picture.Bitmap.SaveToFile('melhorlance2.bmp');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin

    WebBrowser1.Navigate('http://www4.receita.fazenda.gov.br/simulador/BuscaNCM.jsp');

end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin

      if (OpenPictureDialog1.Execute) then begin

          image6.Picture.LoadFromFile(OpenPictureDialog1.FileName);

      end;

end;

procedure TForm1.Button4Click(Sender: TObject);
var
   n1, n2 : integer ;
   W1, W2: Word;
   b1 : byte ;
   x,y : Integer;
   line, line2, line3 : tcolor ;

   cor : string ;


begin

       image4.Height := image3.Height ;
       image4.Width := image3.Width ;

  with Image4.Picture.Bitmap do
  begin

    PixelFormat := pf32bit;
    Width := Image3.Width;
    Height := Image3.Height;
    for x := 0 to Width - 1 do

      for y := 0 to Height - 1 do begin



        line :=  image3.Canvas.Pixels[x,y] ;
        line2 := clWhite ;
        line3 := image3.Canvas.Pixels[x  , y + 1] ;

        {
        trata pixel === inicio
        }

        if (line = line3) then begin

        Canvas.Pixels[x,y] := image3.Canvas.Pixels[x,y] ;

        end else begin

          Canvas.Pixels[x,y] := line2 ;

        end;

        {
        trata pixel === fim
        }

       end;

  end;

  Image3.Invalidate;




end;

procedure TForm1.Button5Click(Sender: TObject);
begin
      // salva img
      Image6.Picture.Bitmap.SaveToFile('melhorlance3.bmp');
end;

procedure TForm1.Button6Click(Sender: TObject);
Var
doc :IDocument;
Img :IImage;
Layout :ILayout;

begin


//prtscr e modi


//////////////////////
doc := IDispatch(CreateOleObject('MODI.Document')) as IDocument;
doc.create('melhorlance3.bmp'); //
doc.ocr(miLANG_ENGLISH,true,true);
Img := IDispatch(doc.Images[0]) as IImage;
Layout := IDispatch(Img.Layout) as ILayout;
//Memo1.Lines.Add(Layout.Text);

edit1.Text := Layout.Text;

MiDocView1.Document := doc;
doc.Close(false);
Img := nil;
Layout := nil;



end;

procedure TForm1.Button7Click(Sender: TObject);
begin

      IF OpenPictureDialog1.Execute THEN BEGIN

         IMAGE1.Picture.LoadFromFile(OpenPictureDialog1.FileName);

      END;

end;

procedure TForm1.Button8Click(Sender: TObject);
var nome : string;

begin
      nome := InputBox('qwe','wert','yrty');

      // salva img
      Image3.Picture.Bitmap.SaveToFile(nome);

end;

procedure TForm1.Button9Click(Sender: TObject);
var
   n1, n2, res1, res2 : integer ;
   W1, W2: Word;
   b1 : byte ;
   x,y : Integer;
   line, line2, cor_central, cor_cima, cor_baixo, cor_dir, cor_esq : tcolor ;

   cor : string ;


begin

res1 := 0;
res2 := 0;

       image7.Height := image3.Height ;
       image7.Width := image3.Width ;

  with Image7.Picture.Bitmap do
  begin

    PixelFormat := pf32bit;
    Width := Image3.Width;
    Height := Image3.Height;
    for x := 0 to Width - 1 do

      for y := 0 to Height - 1 do begin

        {
        trata pixel

        }


        line :=  image3.Canvas.Pixels[x,y] ;
        line2 := clWhite ;

        res1 := 0;

    // showmessage(colortostring(Line));

        if (line = $00363636) then begin   // $00363636 - clBlack

            res1 := res1 + 1 ;

            //
            Canvas.Pixels[x,y] := image3.Canvas.Pixels[x,y] ;

            cor_central := image3.Canvas.Pixels[x,y] ; // line <<<<<<<< tcolor

            cor_cima    := image3.Canvas.Pixels[x,y - 2] ;
            cor_baixo    := image3.Canvas.Pixels[x,y + 2] ;
            cor_esq    := image3.Canvas.Pixels[x-2,y] ;
            cor_dir    := image3.Canvas.Pixels[x+2,y] ;

              if (cor_cima = line) then begin

                  // pixel entre o central e o de cima
                  Canvas.Pixels[x,y -1] := line ;
                  res1 := res1 + 1 ;

              end;

              if (cor_baixo = line) then begin

                  // pixel entre o central e o de cima
                  Canvas.Pixels[x,y +1] := line;
                  res1 := res1 + 1 ;

              end;
              if (cor_esq = line) then begin

                  // pixel entre o central e o de cima
                  Canvas.Pixels[x-1,y ] := line  ;
                  res1 := res1 + 1 ;

              end;

              if (cor_dir = line) then begin

                  // pixel entre o central e o de cima
                  Canvas.Pixels[x+1,y ] := line  ;
                  res1 := res1 + 1 ;

              end;

              // preenchimento - filling
              if (res1 >= 2)then begin

                  Canvas.Pixels[x+1,y-1 ] := line ;
                  Canvas.Pixels[x+1,y ] := line ;
                  Canvas.Pixels[x+1,y+1 ] := line ;

                  Canvas.Pixels[x-1,y-1 ] := line ;
                  Canvas.Pixels[x-1,y ] := line  ;
                  Canvas.Pixels[x-1,y+1 ] := line ;

                  res1 := 0 ;
                  
              end;


        end else begin

          Canvas.Pixels[x,y] := line2 ;

        end;

        memo1.lines.add(colortostring(Line)) ;



       end;

  end;

  Image3.Invalidate;

end;

procedure TForm1.Button10Click(Sender: TObject);
var
   n1, n2, res1, res2 : integer ;
   W1, W2: Word;
   b1 : byte ;
   x,y : Integer;
   line, line2, cor_central, cor_cima, cor_baixo, cor_dir, cor_esq : tcolor ;

   cor : string ;


begin

res1 := 0;
res2 := 0;

       image7.Height := image3.Height ;
       image7.Width := image3.Width ;

  with Image7.Picture.Bitmap do
  begin

    PixelFormat := pf32bit;
    Width := Image3.Width;
    Height := Image3.Height;
    for x := 0 to Width - 1 do

      for y := 0 to Height - 1 do begin

        {
        trata pixel

        }


        line :=  image3.Canvas.Pixels[x,y] ;
        line2 := clWhite ;

        res1 := 0;

    // showmessage(colortostring(Line));

        if (line = $00363636) then begin   // $00363636 - clBlack

            res1 := res1 + 1 ;

            //
            Canvas.Pixels[x,y] := image3.Canvas.Pixels[x,y] ;

            cor_central := image3.Canvas.Pixels[x,y] ; // line <<<<<<<< tcolor

            cor_cima    := image3.Canvas.Pixels[x,y - 2] ;
            cor_baixo    := image3.Canvas.Pixels[x,y + 2] ;
            cor_esq    := image3.Canvas.Pixels[x-2,y] ;
            cor_dir    := image3.Canvas.Pixels[x+2,y] ;

              if (cor_cima = line) then begin

                  // pixel entre o central e o de cima
                  Canvas.Pixels[x,y -2] := line ;
                  res1 := res1 + 1 ;

              end;

              if (cor_baixo = line) then begin

                  // pixel entre o central e o de cima
                  Canvas.Pixels[x,y +2] := line;
                  res1 := res1 + 1 ;

              end;
              if (cor_esq = line) then begin

                  // pixel entre o central e o de cima
                  Canvas.Pixels[x-2,y ] := line  ;
                  res1 := res1 + 1 ;

              end;

              if (cor_dir = line) then begin

                  // pixel entre o central e o de cima
                  Canvas.Pixels[x+2,y ] := line  ;
                  res1 := res1 + 1 ;

              end;

              // preenchimento - filling
              if (res1 >= 2)then begin

                  Canvas.Pixels[x+1,y-2 ] := line ;
                  Canvas.Pixels[x+1,y-1 ] := line ;
                  Canvas.Pixels[x+1,y ] := line ;
                  Canvas.Pixels[x+1,y+1 ] := line ;
                  Canvas.Pixels[x+1,y+2 ] := line ;

                  Canvas.Pixels[x,y-2 ] := line ;
                  Canvas.Pixels[x,y-1 ] := line ;
                  Canvas.Pixels[x,y ] := line ;
                  Canvas.Pixels[x,y+1 ] := line ;
                  Canvas.Pixels[x,y+2 ] := line ;

                  Canvas.Pixels[x-1,y-2 ] := line ;
                  Canvas.Pixels[x-1,y-1 ] := line ;
                  Canvas.Pixels[x-1,y ] := line  ;
                  Canvas.Pixels[x-1,y+1 ] := line ;
                  Canvas.Pixels[x-1,y+2 ] := line ;

                  res1 := 0 ;

              end;


        end else begin

          Canvas.Pixels[x,y] := line2 ;

        end;

        memo1.lines.add(colortostring(Line)) ;



       end;

  end;

  Image3.Invalidate;


end;


procedure TForm1.Button11Click(Sender: TObject);
var
   n1, n2, res1, res2 : integer ;
   W1, W2: Word;
   b1 : byte ;
   x,y : Integer;
   line, line2, cor_central, cor_cima, cor_cima1, cor_cima2, cor_cima3, cor_baixo1, cor_baixo2, cor_baixo3, cor_dir1,
   cor_dir2,cor_dir3, cor_esq1, cor_esq2, cor_esq3 : tcolor ;

   LCIMA, LBAIXO, LESQ, LDIR, RLINHA : INTEGER ;

   cor : string ;


begin

res1 := 0;
res2 := 0;

           LCIMA := 0;
   LBAIXO := 0;
   LESQ := 0;
   LDIR := 0;

       image7.Height := image3.Height ;
       image7.Width := image3.Width ;

  with Image7.Picture.Bitmap do
  begin

    PixelFormat := pf32bit;
    Width := Image3.Width;
    Height := Image3.Height;

    for x := 0 to Width - 1 do

      for y := 0 to Height - 1 do begin

        {
        trata pixel

        10 20 30 40 50
        
        x, y >>> 7 14 21 28 ...


        }


        line :=  image3.Canvas.Pixels[x,y] ;
        line2 := clWhite ;

        res1 := 0;

           LCIMA := 0;
   LBAIXO := 0;
   LESQ := 0;
   LDIR := 0;

    // showmessage(colortostring(Line));

        if (line = clBlack) then begin   // $00363636 - clBlack

            res1 := res1 + 1 ;

            //
            Canvas.Pixels[x,y] := image3.Canvas.Pixels[x,y] ;

            cor_central := image3.Canvas.Pixels[x,y] ; // line <<<<<<<< tcolor

            cor_cima3    := image3.Canvas.Pixels[x,y - 3] ;
            cor_cima2    := image3.Canvas.Pixels[x,y - 2] ;
            cor_cima1    := image3.Canvas.Pixels[x,y - 1] ;

            IF( (cor_cima1 = clBlack)AND(cor_cima2 = clBlack)AND(cor_cima3 = clBlack) )THEN BEGIN

            LCIMA := 1;

            END;

            cor_baixo1    := image3.Canvas.Pixels[x,y + 1] ;
            cor_baixo2    := image3.Canvas.Pixels[x,y + 2] ;
            cor_baixo3    := image3.Canvas.Pixels[x,y + 3] ;

            IF( (cor_baixo1 = clBlack)AND(cor_baixo2 = clBlack)AND(cor_baixo3 = clBlack) )THEN BEGIN

            LBAIXO := 1;

            END;

            cor_esq1    := image3.Canvas.Pixels[x-1,y] ;
            cor_esq2    := image3.Canvas.Pixels[x-2,y] ;
            cor_esq3    := image3.Canvas.Pixels[x-3,y] ;

            IF( (cor_esq1 = clBlack)AND(cor_esq2 = clBlack)AND(cor_esq3 = clBlack) )THEN BEGIN

            LESQ := 1;

            END;

            cor_dir1    := image3.Canvas.Pixels[x+1,y] ;
            cor_dir2    := image3.Canvas.Pixels[x+2,y] ;
            cor_dir3    := image3.Canvas.Pixels[x+3,y] ;

            IF( (cor_dir1 = clBlack)AND(cor_dir2 = clBlack)AND(cor_dir3 = clBlack) )THEN BEGIN

            LDIR := 1;

            END;

            RLINHA := LCIMA + LBAIXO + LESQ + LDIR ;

            IF(RLINHA = 0) THEN BEGIN

               Canvas.Pixels[x,y ] := CLWHITE ;

               Canvas.Pixels[x,y -3] := CLWHITE ;
               Canvas.Pixels[x,y -2] := CLWHITE ;
               Canvas.Pixels[x,y -1] := CLWHITE ;

               Canvas.Pixels[x,y +1] := CLWHITE ;
               Canvas.Pixels[x,y +2] := CLWHITE ;
               Canvas.Pixels[x,y +3] := CLWHITE ;

               Canvas.Pixels[x -1,y ] := CLWHITE ;
               Canvas.Pixels[x -2,y ] := CLWHITE ;
               Canvas.Pixels[x -3,y ] := CLWHITE ;

               Canvas.Pixels[x +1,y ] := CLWHITE ;
               Canvas.Pixels[x +2,y ] := CLWHITE ;
               Canvas.Pixels[x +3,y ] := CLWHITE ;





            END;





        end else begin

          Canvas.Pixels[x,y] := line2 ;

        end;

        memo1.lines.add(colortostring(Line)) ;



       end;

  end;

  Image3.Invalidate;



end;

      function TENSOR_START(X, Y:INTEGER; CENTRAL,
      CIMA1, CIMA1_1, CIMA1_2, CIMA1_3, CIMA1_E1, CIMA1_E2, CIMA1_E3,
      CIMA2, CIMA2_1, CIMA2_2, CIMA2_3, CIMA2_E1, CIMA2_E2, CIMA2_E3,
      CIMA3, CIMA3_1, CIMA3_2, CIMA3_3, CIMA3_E1, CIMA3_E2, CIMA3_E3,
      BAIXO1, BAIXO1_1, BAIXO1_2,BAIXO1_3, BAIXO1_E1, BAIXO1_E2, BAIXO1_E3,
      BAIXO2, BAIXO2_1, BAIXO2_2,BAIXO2_3, BAIXO2_E1, BAIXO2_E2, BAIXO2_E3,
      BAIXO3, BAIXO3_1, BAIXO3_2,BAIXO3_3, BAIXO3_E1, BAIXO3_E2, BAIXO3_E3,
      ESQ1, ESQ2, ESQ3,
      DIR1, DIR2, DIR3 :tcolor): TCOLOR ;
      begin
           IF (CENTRAL = CLBLACK) THEN BEGIN
                 IF (
                    (CIMA1 = CLBLACK)AND(CIMA1_1 = CLBLACK)AND(CIMA1_2 = CLBLACK)AND(CIMA1_3 = CLBLACK)AND(CIMA1_E1 = CLBLACK)AND(CIMA1_E2 = CLBLACK)AND(CIMA1_E3 = CLBLACK)AND
                    (CIMA2 = CLBLACK)AND(CIMA2_1 = CLBLACK)AND(CIMA2_2 = CLBLACK)AND(CIMA2_3 = CLBLACK)AND(CIMA2_E1 = CLBLACK)AND(CIMA2_E2 = CLBLACK)AND(CIMA2_E3 = CLBLACK)AND
                    (CIMA3 = CLBLACK)AND(CIMA3_1 = CLBLACK)AND(CIMA3_2 = CLBLACK)AND(CIMA3_3 = CLBLACK)AND(CIMA3_E1 = CLBLACK)AND(CIMA3_E2 = CLBLACK)AND(CIMA3_E3 = CLBLACK)AND

                    (BAIXO1 = CLBLACK)AND(BAIXO1_1 = CLBLACK)AND(BAIXO1_2 = CLBLACK)AND(BAIXO1_3 = CLBLACK)AND(BAIXO1_E1 = CLBLACK)AND(BAIXO1_E2 = CLBLACK)AND(BAIXO1_E3 = CLBLACK)AND
                    (BAIXO2 = CLBLACK)AND(BAIXO2_1 = CLBLACK)AND(BAIXO2_2 = CLBLACK)AND(BAIXO2_3 = CLBLACK)AND(BAIXO2_E1 = CLBLACK)AND(BAIXO2_E2 = CLBLACK)AND(BAIXO2_E3 = CLBLACK)AND
                    (BAIXO3 = CLBLACK)AND(BAIXO3_1 = CLBLACK)AND(BAIXO3_2 = CLBLACK)AND(BAIXO3_3 = CLBLACK)AND(BAIXO3_E1 = CLBLACK)AND(BAIXO3_E2 = CLBLACK)AND(BAIXO3_E3 = CLBLACK)
                        )
                 THEN BEGIN

                 // AREA TOTAL CLBLACK
                 {
                 FORM1.Shape1.Left := X;
                 FORM1.Shape1.TOP := Y;
                 }
                    with FORM1.Image1.Picture.Bitmap do
                    begin

                          FORM1.IMAGE1.Canvas.Pixels[X,Y] := CLYELLOW ;
                          // CIMA1
                          FORM1.IMAGE1.Canvas.Pixels[X,Y-1] := CLYELLOW ;
                          // SUPERIOR DIRETO
                          FORM1.IMAGE1.Canvas.Pixels[X+1,Y-1] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X+2,Y-1] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X+3,Y-1] := CLYELLOW ;

                          FORM1.IMAGE1.Canvas.Pixels[X+1,Y-2] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X+2,Y-2] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X+3,Y-2] := CLYELLOW ;

                          FORM1.IMAGE1.Canvas.Pixels[X+1,Y-3] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X+2,Y-3] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X+3,Y-3] := CLYELLOW ;


                          //////
                          // INFERIOR DIREITO
                          FORM1.IMAGE1.Canvas.Pixels[X+1,Y+1] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X+2,Y+1] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X+3,Y+1] := CLYELLOW ;

                          FORM1.IMAGE1.Canvas.Pixels[X+1,Y+2] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X+2,Y+2] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X+3,Y+2] := CLYELLOW ;

                          FORM1.IMAGE1.Canvas.Pixels[X+1,Y+3] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X+2,Y+3] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X+3,Y+3] := CLYELLOW ;
                          //
                          // INFERIOR ESQUERDO
                          FORM1.IMAGE1.Canvas.Pixels[X-1,Y+1] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X-2,Y+1] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X-3,Y+1] := CLYELLOW ;

                          FORM1.IMAGE1.Canvas.Pixels[X-1,Y+2] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X-2,Y+2] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X-3,Y+2] := CLYELLOW ;

                          FORM1.IMAGE1.Canvas.Pixels[X-1,Y+3] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X-2,Y+3] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X-3,Y+3] := CLYELLOW ;

                          // SUPERIOR ESQUERDO
                          FORM1.IMAGE1.Canvas.Pixels[X-1,Y-1] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X-2,Y-1] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X-3,Y-1] := CLYELLOW ;

                          FORM1.IMAGE1.Canvas.Pixels[X-1,Y-2] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X-2,Y-2] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X-3,Y-2] := CLYELLOW ;

                          FORM1.IMAGE1.Canvas.Pixels[X-1,Y-3] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X-2,Y-3] := CLYELLOW ;
                          FORM1.IMAGE1.Canvas.Pixels[X-3,Y-3] := CLYELLOW ;

                    END;


                 END;
           END;

      end;

// TENSOR VERDE MENOR

      function TENSOR_MENOR(X, Y:INTEGER; CENTRAL,
      CIMA1, CIMA1_1, CIMA1_2, CIMA1_3, CIMA1_E1, CIMA1_E2, CIMA1_E3,
      CIMA2, CIMA2_1, CIMA2_2, CIMA2_3, CIMA2_E1, CIMA2_E2, CIMA2_E3,
      CIMA3, CIMA3_1, CIMA3_2, CIMA3_3, CIMA3_E1, CIMA3_E2, CIMA3_E3,
      BAIXO1, BAIXO1_1, BAIXO1_2,BAIXO1_3, BAIXO1_E1, BAIXO1_E2, BAIXO1_E3,
      BAIXO2, BAIXO2_1, BAIXO2_2,BAIXO2_3, BAIXO2_E1, BAIXO2_E2, BAIXO2_E3,
      BAIXO3, BAIXO3_1, BAIXO3_2,BAIXO3_3, BAIXO3_E1, BAIXO3_E2, BAIXO3_E3,
      ESQ1, ESQ2, ESQ3,
      DIR1, DIR2, DIR3 :tcolor): TCOLOR ;
      begin
           IF (CENTRAL = CLBLACK) THEN BEGIN
                 IF (
                    (CIMA1 = CLBLACK)AND(CIMA1_1 = CLBLACK)AND(CIMA1_2 = CLBLACK)AND(CIMA1_3 = CLBLACK)AND(CIMA1_E1 = CLBLACK)AND(CIMA1_E2 = CLBLACK)AND
                    (CIMA2 = CLBLACK)AND(CIMA2_1 = CLBLACK)AND(CIMA2_2 = CLBLACK)AND(CIMA2_3 = CLBLACK)AND(CIMA2_E1 = CLBLACK)AND(CIMA2_E2 = CLBLACK)AND


                    (BAIXO1 = CLBLACK)AND(BAIXO1_1 = CLBLACK)AND(BAIXO1_2 = CLBLACK)AND(BAIXO1_3 = CLBLACK)AND(BAIXO1_E1 = CLBLACK)AND(BAIXO1_E2 = CLBLACK)AND
                    (BAIXO2 = CLBLACK)AND(BAIXO2_1 = CLBLACK)AND(BAIXO2_2 = CLBLACK)AND(BAIXO2_3 = CLBLACK)AND(BAIXO2_E1 = CLBLACK)AND(BAIXO2_E2 = CLBLACK)


                     )
                 THEN BEGIN

                 // AREA TOTAL CLBLACK
                 {
                 FORM1.Shape1.Left := X;
                 FORM1.Shape1.TOP := Y;
                 }
                    with FORM1.Image1.Picture.Bitmap do
                    begin

                          FORM1.IMAGE1.Canvas.Pixels[X,Y] := CLGREEN ;
                          // CIMA
                          FORM1.IMAGE1.Canvas.Pixels[X,Y-1] := CLGREEN ;
                          FORM1.IMAGE1.Canvas.Pixels[X,Y-2] := CLGREEN ;

                          // BAIXO
                          FORM1.IMAGE1.Canvas.Pixels[X,Y+1] := CLGREEN ;
                          FORM1.IMAGE1.Canvas.Pixels[X,Y+2] := CLGREEN ;

                          // ESQ
                          FORM1.IMAGE1.Canvas.Pixels[X-1,Y] := CLGREEN ;
                          FORM1.IMAGE1.Canvas.Pixels[X-2,Y] := CLGREEN ;

                          // DIR
                          FORM1.IMAGE1.Canvas.Pixels[X+1,Y] := CLGREEN ;
                          FORM1.IMAGE1.Canvas.Pixels[X+2,Y] := CLGREEN ;


                          // SUPERIOR DIRETO
                          FORM1.IMAGE1.Canvas.Pixels[X+1,Y-1] := CLGREEN ;
                          FORM1.IMAGE1.Canvas.Pixels[X+2,Y-1] := CLGREEN ;

                          FORM1.IMAGE1.Canvas.Pixels[X+1,Y-2] := CLGREEN ;
                          FORM1.IMAGE1.Canvas.Pixels[X+2,Y-2] := CLGREEN ;


                          //////
                          // INFERIOR DIREITO
                          FORM1.IMAGE1.Canvas.Pixels[X+1,Y+1] := CLGREEN ;
                          FORM1.IMAGE1.Canvas.Pixels[X+2,Y+1] := CLGREEN ;

                          FORM1.IMAGE1.Canvas.Pixels[X+1,Y+2] := CLGREEN ;
                          FORM1.IMAGE1.Canvas.Pixels[X+2,Y+2] := CLGREEN ;


                          //
                          // INFERIOR ESQUERDO
                          FORM1.IMAGE1.Canvas.Pixels[X-1,Y+1] := CLGREEN ;
                          FORM1.IMAGE1.Canvas.Pixels[X-2,Y+1] := CLGREEN ;

                          FORM1.IMAGE1.Canvas.Pixels[X-1,Y+2] := CLGREEN ;
                          FORM1.IMAGE1.Canvas.Pixels[X-2,Y+2] := CLGREEN ;




                          // SUPERIOR ESQUERDO
                          FORM1.IMAGE1.Canvas.Pixels[X-1,Y-1] := CLGREEN ;
                          FORM1.IMAGE1.Canvas.Pixels[X-2,Y-1] := CLGREEN ;

                          FORM1.IMAGE1.Canvas.Pixels[X-1,Y-2] := CLGREEN ;
                          FORM1.IMAGE1.Canvas.Pixels[X-2,Y-2] := CLGREEN ;




                    END;


                 END;
           END;

      end;

// AZUL


      function TENSOR_MENOR_AZUL(X, Y:INTEGER; CENTRAL,
      CIMA1, CIMA1_1, CIMA1_2, CIMA1_3, CIMA1_E1, CIMA1_E2, CIMA1_E3,
      CIMA2, CIMA2_1, CIMA2_2, CIMA2_3, CIMA2_E1, CIMA2_E2, CIMA2_E3,
      CIMA3, CIMA3_1, CIMA3_2, CIMA3_3, CIMA3_E1, CIMA3_E2, CIMA3_E3,
      BAIXO1, BAIXO1_1, BAIXO1_2,BAIXO1_3, BAIXO1_E1, BAIXO1_E2, BAIXO1_E3,
      BAIXO2, BAIXO2_1, BAIXO2_2,BAIXO2_3, BAIXO2_E1, BAIXO2_E2, BAIXO2_E3,
      BAIXO3, BAIXO3_1, BAIXO3_2,BAIXO3_3, BAIXO3_E1, BAIXO3_E2, BAIXO3_E3,
      ESQ1, ESQ2, ESQ3,
      DIR1, DIR2, DIR3 :tcolor): TCOLOR ;
      begin
           IF (CENTRAL = CLBLACK) THEN BEGIN
                 IF (
                    (CIMA1 = CLBLACK)AND(CIMA1_1 = CLBLACK)AND(CIMA1_2 = CLBLACK)AND(CIMA1_E1 = CLBLACK)AND(CIMA1_E2 = CLBLACK)AND
                    (CIMA2 = CLBLACK)AND(CIMA2_1 = CLBLACK)AND(CIMA2_2 = CLBLACK)AND(CIMA2_E1 = CLBLACK)AND(CIMA2_E2 = CLBLACK)AND


                    (BAIXO1 = CLBLACK)AND(BAIXO1_1 = CLBLACK)AND(BAIXO1_2 = CLBLACK)AND(BAIXO1_E1 = CLBLACK)AND(BAIXO1_E2 = CLBLACK)AND
                    (BAIXO2 = CLBLACK)AND(BAIXO2_1 = CLBLACK)AND(BAIXO2_2 = CLBLACK)AND(BAIXO2_E1 = CLBLACK)AND(BAIXO2_E2 = CLBLACK)


                     )
                 THEN BEGIN

                 // AREA TOTAL CLBLACK
                 {
                 FORM1.Shape1.Left := X;
                 FORM1.Shape1.TOP := Y;
                 }
                    with FORM1.Image1.Picture.Bitmap do
                    begin

                          FORM1.IMAGE1.Canvas.Pixels[X,Y] := CLBLUE ;
                          // CIMA
                          FORM1.IMAGE1.Canvas.Pixels[X,Y-1] := CLBLUE ;
                          FORM1.IMAGE1.Canvas.Pixels[X,Y-2] := CLBLUE ;

                          // BAIXO
                          FORM1.IMAGE1.Canvas.Pixels[X,Y+1] := CLBLUE ;
                          FORM1.IMAGE1.Canvas.Pixels[X,Y+2] := CLBLUE ;

                          // ESQ
                          FORM1.IMAGE1.Canvas.Pixels[X-1,Y] := CLBLUE ;
                          FORM1.IMAGE1.Canvas.Pixels[X-2,Y] := CLBLUE ;

                          // DIR
                          FORM1.IMAGE1.Canvas.Pixels[X+1,Y] := CLBLUE ;
                          FORM1.IMAGE1.Canvas.Pixels[X+2,Y] := CLBLUE ;


                          // SUPERIOR DIRETO
                          FORM1.IMAGE1.Canvas.Pixels[X+1,Y-1] := CLBLUE ;
                          FORM1.IMAGE1.Canvas.Pixels[X+2,Y-1] := CLBLUE ;

                          FORM1.IMAGE1.Canvas.Pixels[X+1,Y-2] := CLBLUE ;
                          FORM1.IMAGE1.Canvas.Pixels[X+2,Y-2] := CLBLUE ;


                          //////
                          // INFERIOR DIREITO
                          FORM1.IMAGE1.Canvas.Pixels[X+1,Y+1] := CLBLUE ;
                          FORM1.IMAGE1.Canvas.Pixels[X+2,Y+1] := CLBLUE ;

                          FORM1.IMAGE1.Canvas.Pixels[X+1,Y+2] := CLBLUE ;
                          FORM1.IMAGE1.Canvas.Pixels[X+2,Y+2] := CLBLUE ;


                          //
                          // INFERIOR ESQUERDO
                          FORM1.IMAGE1.Canvas.Pixels[X-1,Y+1] := CLBLUE ;
                          FORM1.IMAGE1.Canvas.Pixels[X-2,Y+1] := CLBLUE ;

                          FORM1.IMAGE1.Canvas.Pixels[X-1,Y+2] := CLBLUE ;
                          FORM1.IMAGE1.Canvas.Pixels[X-2,Y+2] := CLBLUE ;




                          // SUPERIOR ESQUERDO
                          FORM1.IMAGE1.Canvas.Pixels[X-1,Y-1] := CLBLUE ;
                          FORM1.IMAGE1.Canvas.Pixels[X-2,Y-1] := CLBLUE ;

                          FORM1.IMAGE1.Canvas.Pixels[X-1,Y-2] := CLBLUE ;
                          FORM1.IMAGE1.Canvas.Pixels[X-2,Y-2] := CLBLUE ;




                    END;


                 END;
           END;

      end;





procedure TForm1.Button12Click(Sender: TObject);
var
   n1, n2 : integer ;
   W1, W2: Word;
   b1 : byte ;
   x,y  : Integer;
   line, line2, CENTRAL, CIMA1, CIMA2, CIMA3, CIMA4, CIMA5, BAIXO1, BAIXO2, BAIXO3, BAIXO4, BAIXO5,
   ESQ1, ESQ2, ESQ3, ES4, ESQ5, DIR1, DIR2, DIR3, DIR4, DIR5 : tcolor ;

   cor : string ;


begin

  with Image1.Picture.Bitmap do
  begin

    PixelFormat := pf32bit;
    Width := Image1.Width;
    Height := Image1.Height;

    for x := 0 to Width - 1 do

      for y := 0 to Height - 1 do begin

        line :=  image1.Canvas.Pixels[x,y] ;

        if (line = clBlack ) then begin   // $00363636 - clBlack

            // CENTRAL
            // Canvas.Pixels[x,y] := image1.Canvas.Pixels[x,y] ;
      {
            function TENSOR_START(X, Y, CENTRAL,
            CIMA1, CIMA1_1, CIMA1_2, CIMA1_3, CIMA1_E1, CIMA1_E2, CIMA1_E3,
            CIMA2, CIMA2_1, CIMA2_2, CIMA2_3, CIMA2_E1, CIMA2_E2, CIMA2_E3,
            CIMA3, CIMA3_1, CIMA3_2, CIMA3_3, CIMA3_E1, CIMA3_E2, CIMA3_E3,
            BAIXO1, BAIXO1_1, BAIXO1_2,BAIXO1_3, BAIXO1_E1, BAIXO1_E2, BAIXO1_E3,
            BAIXO2, BAIXO2_1, BAIXO2_2,BAIXO2_3, BAIXO2_E1, BAIXO2_E2, BAIXO2_E3,
            BAIXO3, BAIXO3_1, BAIXO3_2,BAIXO3_3, BAIXO3_E1, BAIXO3_E2, BAIXO3_E3,
            ESQ1, ESQ2, ESQ3,
            DIR1, DIR2, DIR3 :tcolor): TCOLOR ;
      }

            // TENSOR_START
            TENSOR_START(
            X, Y, image1.Canvas.Pixels[x,y],
       {}   image1.Canvas.Pixels[x,y-1], image1.Canvas.Pixels[x+1,y-1], image1.Canvas.Pixels[x+2,y-1], image1.Canvas.Pixels[x+3,y-1], image1.Canvas.Pixels[x-1,y-1], image1.Canvas.Pixels[x-2,y-1], image1.Canvas.Pixels[x-3,y-1],
            image1.Canvas.Pixels[x,y-2], image1.Canvas.Pixels[x+1,y-2], image1.Canvas.Pixels[x+2,y-2], image1.Canvas.Pixels[x+3,y-2], image1.Canvas.Pixels[x-1,y-2], image1.Canvas.Pixels[x-2,y-2], image1.Canvas.Pixels[x-3,y-2],
            image1.Canvas.Pixels[x,y-3], image1.Canvas.Pixels[x+1,y-3], image1.Canvas.Pixels[x+2,y-3], image1.Canvas.Pixels[x+3,y-3], image1.Canvas.Pixels[x-1,y-3], image1.Canvas.Pixels[x-2,y-3], image1.Canvas.Pixels[x-3,y-3],

       {}   image1.Canvas.Pixels[x,y+1], image1.Canvas.Pixels[x+1,y+1], image1.Canvas.Pixels[x+2,y+1], image1.Canvas.Pixels[x+3,y+1], image1.Canvas.Pixels[x-1,y-1], image1.Canvas.Pixels[x-2,y-1], image1.Canvas.Pixels[x-3,y-1],
            image1.Canvas.Pixels[x,y+2], image1.Canvas.Pixels[x+1,y+2], image1.Canvas.Pixels[x+2,y+2], image1.Canvas.Pixels[x+3,y+2], image1.Canvas.Pixels[x-1,y-2], image1.Canvas.Pixels[x-2,y-2], image1.Canvas.Pixels[x-3,y-2],
            image1.Canvas.Pixels[x,y+3], image1.Canvas.Pixels[x+1,y+3], image1.Canvas.Pixels[x+2,y+3], image1.Canvas.Pixels[x+3,y+3], image1.Canvas.Pixels[x-1,y+3], image1.Canvas.Pixels[x-2,y+3], image1.Canvas.Pixels[x-3,y+3],

            image1.Canvas.Pixels[x-1,y], image1.Canvas.Pixels[x-2,y], image1.Canvas.Pixels[x-3,y],
            image1.Canvas.Pixels[x+1,y], image1.Canvas.Pixels[x+2,y], image1.Canvas.Pixels[x+3,y]

             );



        end else begin

            // Canvas.Pixels[x,y] := line2 ;

        end;

        memo1.lines.add(colortostring(Line)) ;

       end;

  end;

  Image1.Invalidate;


end;

procedure TForm1.Button13Click(Sender: TObject);
var
   n1, n2 : integer ;
   W1, W2: Word;
   b1 : byte ;
   x,y  : Integer;
   line, line2, CENTRAL, CIMA1, CIMA2, CIMA3, CIMA4, CIMA5, BAIXO1, BAIXO2, BAIXO3, BAIXO4, BAIXO5,
   ESQ1, ESQ2, ESQ3, ES4, ESQ5, DIR1, DIR2, DIR3, DIR4, DIR5 : tcolor ;

   cor : string ;


begin

  with Image1.Picture.Bitmap do
  begin

    PixelFormat := pf32bit;
    Width := Image1.Width;
    Height := Image1.Height;

    for x := 0 to Width - 1 do

      for y := 0 to Height - 1 do begin

        line :=  image1.Canvas.Pixels[x,y] ;

        if (line = clBlack ) then begin   // $00363636 - clBlack

            // TENSOR_MENOR

            TENSOR_MENOR(
            X, Y, image1.Canvas.Pixels[x,y],
            image1.Canvas.Pixels[x,y-1], image1.Canvas.Pixels[x+1,y-1], image1.Canvas.Pixels[x+2,y-1], image1.Canvas.Pixels[x+3,y-1], image1.Canvas.Pixels[x-1,y-1], image1.Canvas.Pixels[x-2,y-1], image1.Canvas.Pixels[x-3,y-1],
            image1.Canvas.Pixels[x,y-2], image1.Canvas.Pixels[x+1,y-2], image1.Canvas.Pixels[x+2,y-2], image1.Canvas.Pixels[x+3,y-2], image1.Canvas.Pixels[x-1,y-2], image1.Canvas.Pixels[x-2,y-2], image1.Canvas.Pixels[x-3,y-2],
            image1.Canvas.Pixels[x,y-3], image1.Canvas.Pixels[x+1,y-3], image1.Canvas.Pixels[x+2,y-3], image1.Canvas.Pixels[x+3,y-3], image1.Canvas.Pixels[x-1,y-3], image1.Canvas.Pixels[x-2,y-3], image1.Canvas.Pixels[x-3,y-3],

            image1.Canvas.Pixels[x,y+1], image1.Canvas.Pixels[x+1,y+1], image1.Canvas.Pixels[x+2,y+1], image1.Canvas.Pixels[x+3,y+1], image1.Canvas.Pixels[x-1,y-1], image1.Canvas.Pixels[x-2,y-1], image1.Canvas.Pixels[x-3,y-1],
            image1.Canvas.Pixels[x,y+2], image1.Canvas.Pixels[x+1,y+2], image1.Canvas.Pixels[x+2,y+2], image1.Canvas.Pixels[x+3,y+2], image1.Canvas.Pixels[x-1,y-2], image1.Canvas.Pixels[x-2,y-2], image1.Canvas.Pixels[x-3,y-2],
            image1.Canvas.Pixels[x,y+3], image1.Canvas.Pixels[x+1,y+3], image1.Canvas.Pixels[x+2,y+3], image1.Canvas.Pixels[x+3,y+3], image1.Canvas.Pixels[x-1,y+3], image1.Canvas.Pixels[x-2,y+3], image1.Canvas.Pixels[x-3,y+3],

            image1.Canvas.Pixels[x-1,y], image1.Canvas.Pixels[x-2,y], image1.Canvas.Pixels[x-3,y],
            image1.Canvas.Pixels[x+1,y], image1.Canvas.Pixels[x+2,y], image1.Canvas.Pixels[x+3,y]

             );



        end else begin

            // Canvas.Pixels[x,y] := line2 ;

        end;

        memo1.lines.add(colortostring(Line)) ;

       end;

  end;

  Image1.Invalidate;


end;

procedure TForm1.Button14Click(Sender: TObject);
var
   n1, n2 : integer ;
   W1, W2: Word;
   b1 : byte ;
   x,y  : Integer;
   line, line2, CENTRAL, CIMA1, CIMA2, CIMA3, CIMA4, CIMA5, BAIXO1, BAIXO2, BAIXO3, BAIXO4, BAIXO5,
   ESQ1, ESQ2, ESQ3, ES4, ESQ5, DIR1, DIR2, DIR3, DIR4, DIR5 : tcolor ;

   cor : string ;


begin

  with Image1.Picture.Bitmap do
  begin

    PixelFormat := pf32bit;
    Width := Image1.Width;
    Height := Image1.Height;

    for x := 0 to Width - 1 do

      for y := 0 to Height - 1 do begin

        line :=  image1.Canvas.Pixels[x,y] ;

        if (line = clBlack ) then begin   // $00363636 - clBlack

            // TENSOR_MENOR

            TENSOR_MENOR_AZUL(
            X, Y, image1.Canvas.Pixels[x,y],
            image1.Canvas.Pixels[x,y-1], image1.Canvas.Pixels[x+1,y-1], image1.Canvas.Pixels[x+2,y-1], image1.Canvas.Pixels[x+3,y-1], image1.Canvas.Pixels[x-1,y-1], image1.Canvas.Pixels[x-2,y-1], image1.Canvas.Pixels[x-3,y-1],
            image1.Canvas.Pixels[x,y-2], image1.Canvas.Pixels[x+1,y-2], image1.Canvas.Pixels[x+2,y-2], image1.Canvas.Pixels[x+3,y-2], image1.Canvas.Pixels[x-1,y-2], image1.Canvas.Pixels[x-2,y-2], image1.Canvas.Pixels[x-3,y-2],
            image1.Canvas.Pixels[x,y-3], image1.Canvas.Pixels[x+1,y-3], image1.Canvas.Pixels[x+2,y-3], image1.Canvas.Pixels[x+3,y-3], image1.Canvas.Pixels[x-1,y-3], image1.Canvas.Pixels[x-2,y-3], image1.Canvas.Pixels[x-3,y-3],

            image1.Canvas.Pixels[x,y+1], image1.Canvas.Pixels[x+1,y+1], image1.Canvas.Pixels[x+2,y+1], image1.Canvas.Pixels[x+3,y+1], image1.Canvas.Pixels[x-1,y-1], image1.Canvas.Pixels[x-2,y-1], image1.Canvas.Pixels[x-3,y-1],
            image1.Canvas.Pixels[x,y+2], image1.Canvas.Pixels[x+1,y+2], image1.Canvas.Pixels[x+2,y+2], image1.Canvas.Pixels[x+3,y+2], image1.Canvas.Pixels[x-1,y-2], image1.Canvas.Pixels[x-2,y-2], image1.Canvas.Pixels[x-3,y-2],
            image1.Canvas.Pixels[x,y+3], image1.Canvas.Pixels[x+1,y+3], image1.Canvas.Pixels[x+2,y+3], image1.Canvas.Pixels[x+3,y+3], image1.Canvas.Pixels[x-1,y+3], image1.Canvas.Pixels[x-2,y+3], image1.Canvas.Pixels[x-3,y+3],

            image1.Canvas.Pixels[x-1,y], image1.Canvas.Pixels[x-2,y], image1.Canvas.Pixels[x-3,y],
            image1.Canvas.Pixels[x+1,y], image1.Canvas.Pixels[x+2,y], image1.Canvas.Pixels[x+3,y]

             );



        end else begin

            // Canvas.Pixels[x,y] := line2 ;

        end;

        memo1.lines.add(colortostring(Line)) ;

       end;

  end;

  Image1.Invalidate;


end;

end.
