codeunit 50105 MyCodeunit6
{
    trigger OnRun()
    var
        MyCodeunit5: Codeunit MyCodeunit5;
        aVariable: Decimal;
        bVariable: Decimal;
        cVariable: Decimal;
    begin
        aVariable := 10;
        bVariable := 2;

        if not MyCodeunit5.MakeDivision(aVariable, bVariable, cVariable) then
            Error('Division by Zero');

        Message('The result of dividing %1 by %2 is %3', aVariable, bVariable, cVariable);
    end;

    procedure CallCOdeunitOnRun()
    var
        MyCodeunit5: Codeunit MyCodeunit5;
    begin
        MyCodeunit5.Run();
    end;
}