// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 50100 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    var
        MyCodeunit7: Codeunit MyCodeunit7;
        MyCodeunit8: Codeunit MyCodeunit8;
        ProcessStatus: Boolean;
    begin
        // Bandymas1();

        // MyCodeunit7.Run();

        // if MyCodeunit7.Run() then
        //     Message('Sekmingai')
        // else
        //     Message('Nesekmingai - %1', GetLastErrorText());

        //MyCodeunit7.MyProcedure();

        // turetu buti - 0
        //MyCodeunit8.Run();

        //MyCodeunit8.SetGlobalValue(10);
        // turetu buti - 10
        //MyCodeunit8.Run();


        // MyCodeunit8.SetGlobalValue(10);
        // MyProcedure(MyCodeunit8);

        // MyCodeunit8.Run();

        // MyProcedure(MyCodeunit8);

        // MyProcedure2();

        // MyProcedure2();

        MyCodeunit7.SetValue(30);
        ProcessStatus := MyCodeunit7.Run();

        if not ProcessStatus then
            Message('return after error - %1', MyCodeunit7.GetValue());

    end;

    var
        gMyCodeunit8: Codeunit MyCodeunit8;

    local procedure MyProcedure(MyCodeunit8: Codeunit MyCodeunit8)
    begin
        //Message('Get Value - %1', MyCodeunit8.GetGlobalValue());
        MyCodeunit8.Run();

        MyCodeunit8.SetGlobalValue(15);
    end;

    local procedure MyProcedure2()
    begin
        gMyCodeunit8.Run();

        gMyCodeunit8.SetGlobalValue(20);
    end;


    local procedure Bandymas1()
    var
        myInt: Integer;
        OutputText: Text;
        masyvas: array[10] of Integer;
        counter: Integer;


        TypeHelper: Codeunit "Type Helper";
    begin
        myInt := 120;

        OutputText := format(myInt) + ' value integer\nauja eilute';

        Message(OutputText);

        for counter := 1 to 10 do begin

        end;

        while counter < 15 do begin
            counter += 1;

        end;

        repeat begin
            counter += 1;

        end until counter < 20;

    end;


}