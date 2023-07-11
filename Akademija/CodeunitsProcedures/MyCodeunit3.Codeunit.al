codeunit 50102 MyCodeunit3
{
    trigger OnRun()
    var
        MyCodeunit3: Codeunit MyCodeunit3;
    begin
        MyCodeunit3.MyPublicProcedure();

        // Negalime naudoti lokalios funkcijos "išorėje"
        //MyCodeunit3.MyLocalProcedure();
    end;

    local procedure MyLocalProcedure()
    begin
        MyPublicProcedure();
        /* programinis kodas */
    end;

    procedure MyPublicProcedure()
    begin
        MyLocalProcedure();
        /* programinis kodas */
    end;
}