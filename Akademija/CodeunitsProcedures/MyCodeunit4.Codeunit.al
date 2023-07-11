codeunit 50103 MyCodeunit4
{
    procedure MyProcedureReturnVariable() ReturnVariable: Integer
    begin
        // priskiriame reikšmę kintamąjam
        ReturnVariable := 10;
    end;

    procedure MyProcedureReturnValue(): Integer
    begin
        // grąžiname konkrečią reikšmę
        exit(10);
    end;

    procedure MyProcedureReturn(): Integer
    var
        LocalVariable: Integer;
    begin
        LocalVariable := 10;
        // grąžiname kintamąjį
        exit(LocalVariable);
    end;

    procedure MyProcedureReturnParameter(var ParamVariable: Integer)
    begin
        // grąžiname parametrą
        ParamVariable := 10;
    end;
}