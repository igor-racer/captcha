unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AppEvnts, ExtCtrls, ExtDlgs;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ApplicationEvents1: TApplicationEvents;
    CheckBox1: TCheckBox;
    Timer1: TTimer;
    Image1: TImage;
    Button2: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    CONT: INTEGER ;
    
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

  CONT := CONT + 1 ;


      SetCursorPos(left -20, top);

            mouse_event(MOUSEEVENTF_LEFTDOWN,0,0,0,0);
            mouse_event(MOUSEEVENTF_LEFTUP,0,0,0,0);


      sleep(300);


      SetCursorPos(left -45, top + 20 );

            mouse_event(MOUSEEVENTF_RIGHTDOWN,0,0,0,0);
            mouse_event(MOUSEEVENTF_RIGHTUP,0,0,0,0);

      sleep(300);

             keybd_event(VK_DOWN, 0, 0, 0);
                   sleep(100);
             keybd_event(VK_down, 0, 0, 0);
            //       sleep(100);
            // keybd_event(VK_down, 0, 0, 0);

      sleep(300);



 keybd_event(VK_RETURN, 0, 0, 0);

      sleep(1000);

 // digita
 Button3.click ;





end;

procedure TForm1.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin

      ShowMessage(e.Message);
      

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin

      IF(CheckBox1.Checked = TRUE) THEN BEGIN

      BUTTON1.Click ;

      END ELSE BEGIN

      Timer1.Enabled := FALSE ;


      END;


end;

procedure TForm1.Button2Click(Sender: TObject);
begin

      IF OpenPictureDialog1.Execute THEN BEGIN

          Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);


      END;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
      CONT := 0 ;
      
end;

procedure TForm1.Button3Click(Sender: TObject);
var
   Str: string;

  Inp: TInput; 
  I: Integer;
begin

 Str := 'img'+ inttostr(cont) ;

 // Edit1.SetFocus;
  for I := 1 to Length(Str) do    // Str
  begin
    Inp.Itype := INPUT_KEYBOARD; 
    Inp.ki.wVk := Ord(UpCase(Str[i])); 
    Inp.ki.dwFlags := 0;
    SendInput(1, Inp, SizeOf(Inp)); 
    Inp.Itype := INPUT_KEYBOARD; 
    Inp.ki.wVk := Ord(UpCase(Str[i])); 
    Inp.ki.dwFlags := KEYEVENTF_KEYUP; 
    SendInput(1, Inp, SizeOf(Inp)); 
    Application.ProcessMessages; 
    Sleep(80); 
  end;



   sleep(300);
   keybd_event(VK_RETURN, 0, 0, 0);

end;

end.
