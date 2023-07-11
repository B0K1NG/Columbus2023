codeunit 50100 MyCodeunit
{
    trigger OnRun()
    begin
        // programinis kodas       
        MyProcedure(GlobalVariable);
    end;

    var
        GlobalVariable: Integer;

    local procedure MyProcedure(var ParamName: integer)
    var
        LocalVariable: Integer;
    begin
        // programinis kodas
        LocalVariable := ParamName;
    end;
}