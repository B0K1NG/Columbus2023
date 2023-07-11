codeunit 50107 MyCodeunit8
{
    trigger OnRun()
    begin
        Message('GlobalValue = %1', GlobalValue);
    end;

    var
        GlobalValue: Integer;

    procedure SetGlobalValue(NewGlobalValue: Integer)
    begin
        GlobalValue := NewGlobalValue;
    end;

    procedure GetGlobalValue(): Integer
    begin
        exit(GlobalValue);
    end;
}