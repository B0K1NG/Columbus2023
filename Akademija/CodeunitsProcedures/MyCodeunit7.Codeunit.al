codeunit 50106 MyCodeunit7
{
    trigger OnRun()
    begin
        GlobalVariable := 10;

        Error('Klaida');

        GlobalVariable := 20;
    end;

    var
        GlobalVariable: Integer;

    procedure GetValue(): Integer
    begin
        exit(GlobalVariable);
    end;


    procedure SetValue(NewValue: Integer)
    begin
        GlobalVariable := NewValue;
    end;

    procedure MyProcedure()
    var
        myInt: Integer;
    begin
        Message('MyProcedure');
    end;
}