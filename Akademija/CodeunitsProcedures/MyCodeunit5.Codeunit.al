codeunit 50104 MyCodeunit5
{
    trigger OnRun()
    var
        aVariable: Decimal;
        bVariable: Decimal;
        cVariable: Decimal;
    begin
        aVariable := 10;
        bVariable := 2;

        if not MakeDivision(aVariable, bVariable, cVariable) then
            Error('Division by Zero');

        Message('The result of dividing %1 by %2 is %3', aVariable, bVariable, cVariable);
    end;

    procedure MakeDivision(aVariable: Decimal; bVariable: Decimal; var cVariable: Decimal): Boolean
    begin
        if bVariable = 0 then
            exit(false);

        cVariable := aVariable / bVariable;
        exit(true);
    end;
}