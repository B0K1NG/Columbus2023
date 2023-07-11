page 50110 "Client Contract List"
{
    Caption = 'Client Contracts';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Client Contract";

    CardPageId = "Client Contract Card";
    InsertAllowed = false;
    ModifyAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Contract No."; Rec."Contract No.")
                {
                    ToolTip = 'Contract No.';
                }
                field("Client Type"; Rec."Client Type")
                {
                    ToolTip = 'Client Type';
                }
                field("Client No."; Rec."Client No.")
                {
                    ToolTip = 'Client No.';
                }
                field("Contract Amount"; Rec."Contract Amount")
                {
                    ToolTip = 'Contract Amount';
                    BlankZero = true;
                }
                field("Contract Start Date"; Rec."Contract Start Date")
                {
                    ToolTip = 'Contract Start Date';
                }
                field("Contract End Date"; Rec."Contract End Date")
                {
                    ToolTip = 'Contract End Date';
                }
                field("Contract Status"; Rec."Contract Status")
                {
                    ToolTip = 'Contract Status';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ReleaseContract)
            {
                Caption = 'Release';
                ToolTip = 'Release';

                trigger OnAction()
                begin
                    Codeunit.Run(Codeunit::"Client Contract - Release", Rec);
                end;
            }

            action(OpenContract)
            {
                Caption = 'Open';
                ToolTip = 'Open';

                trigger OnAction()
                var
                    ClientContractRelease: Codeunit "Client Contract - Release";
                begin
                    ClientContractRelease.OpenContract(Rec);
                end;
            }
            action(ActionName)
            {
                Caption = 'Mano bandymas 1';

                trigger OnAction()
                begin
                    //Bandymas1();
                    //Bandymas2();
                    //Bandymas3();
                    //Bandymas4();
                    //Bandymas5();
                end;
            }
        }
    }

    local procedure Bandymas1()
    var
        ClientContract: Record "Client Contract";
    begin
        Message('1 - %1', ClientContract."Contract Amount");

        ClientContract.Get('CON00001');

        Message('2 - %1', ClientContract."Contract Amount");

        ClientContract.Get('CON00003');

        Message('3 - %1', ClientContract."Contract Amount");

        if not ClientContract.Get('ABC') then
            ClientContract.Init();

        Message('4 - %1', ClientContract."Contract Amount");
    end;

    local procedure Bandymas2()
    var
        Customer: Record Customer;
        Vendor: Record Vendor;
    begin
        Message('Current Record - %1', Rec."Contract No.");

        if Rec."Client Type" = Rec."Client Type"::Customer then begin
            if not Customer.Get(Rec."Client No.") then
                Customer.Init();
            Message('Customer Name %1', Customer.Name);
        end;

        if Rec."Client Type" = Rec."Client Type"::Vendor then begin
            if not Vendor.Get(Rec."Client No.") then
                Vendor.Init();
            Message('Vendor Name %1', Vendor.Name);
        end;
    end;

    local procedure Bandymas3()
    var
        ClientContract: Record "Client Contract";
        TotalAmount: Decimal;
    begin
        ClientContract.Reset();
        //ClientContract.SetRange("Contract Start Date", DMY2Date(1, 1, 2023), DMY2Date(31, 1, 2023));
        ClientContract.SetFilter("Contract Start Date", '%1..', DMY2Date(1, 2, 2023));
        if ClientContract.FindSet() then
            repeat
                Message('Contract %1', ClientContract."Contract No.");
                TotalAmount += ClientContract."Contract Amount";
            until ClientContract.Next() = 0;

        Message('TotalAmount %1', TotalAmount);
    end;

    local procedure Bandymas4()
    var
        ClientContract: Record "Client Contract";
    begin
        ClientContract.SetCurrentKey("Contract Start Date", "Contract End Date");

        ClientContract.FindFirst();
        Message('FindFirst - %1', ClientContract."Contract No.");

        ClientContract.FindLast();
        Message('FindLast - %1', ClientContract."Contract No.");
    end;

    local procedure Bandymas5()
    var
        ClientContract: Record "Client Contract";
        Customer: Record Customer;
    begin
        if not Customer.FindFirst() then
            Customer.Init();

        Randomize();

        ClientContract.Init();
        ClientContract.Insert(true);

        ClientContract."Client Type" := "Client Contract Type"::Customer;
        ClientContract."Client No." := Customer."No.";
        ClientContract."Contract Amount" := Random(100);
        ClientContract.Modify(true);


        // ClientContract.SetRange("Contract Start Date", 0D);
        // ClientContract.DeleteAll();


        // Randomize();

        // if ClientContract.FindSet() then
        //     repeat
        //         ClientContract."Contract Amount" := Random(10000);
        //         ClientContract.Modify();
        //     until ClientContract.Next() = 0;


        // ClientContract.Get(Rec."Contract No.");
        // ClientContract."Contract Amount" := 0;
        // ClientContract.Modify();
    end;

    local procedure Bandymas6()
    var
        ClientContract: Record "Client Contract";
        TotalAmount: Decimal;
    begin
        ClientContract.Reset();
        //ClientContract.SetRange("Contract Start Date", DMY2Date(1, 1, 2023), DMY2Date(31, 1, 2023));
        ClientContract.SetFilter("Contract Start Date", '%1..', DMY2Date(1, 2, 2023));
        ClientContract.CalcSums("Contract Amount");
        TotalAmount := ClientContract."Contract Amount";

        Message('TotalAmount %1', TotalAmount);
    end;
}