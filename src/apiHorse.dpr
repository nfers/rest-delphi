program apiHorse;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, Horse;

var
  App: THorse;

  begin
  App := THorse.Create(9000);

  App.Get('/development',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
     Res.Send('em execucao');
    end);

  App.Start;
end.
