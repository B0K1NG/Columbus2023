table 50110 "Client Contract"
{
    Caption = 'Client Contract';
    DataClassification = CustomerContent;
    DrillDownPageId = "Client Contract List";

    fields
    {
        field(1; "Contract No."; Code[20])
        {
            Caption = 'Contract No.';
        }
        field(10; "Client No."; Code[20])
        {
            Caption = 'Client No.';
            TableRelation =
                if ("Client Type" = const(Customer)) Customer
            else
            if ("Client Type" = const(Vendor)) Vendor;

            trigger OnValidate()
            begin
                CheckStatusReleased();

                CheckClient();
            end;
        }
        field(11; "Client Type"; Enum "Client Contract Type")
        {
            trigger OnValidate()
            begin
                CheckStatusReleased();
            end;
        }
        field(12; "Contract Status"; Enum "Client Contract Status")
        {
            Editable = false;
        }

        field(20; "Contract Amount"; Decimal)
        {
            Caption = 'Contract Amount';

            trigger OnValidate()
            begin
                CheckStatusReleased();
            end;
        }
        field(21; "Contract Start Date"; Date)
        {
            Caption = 'Contract Start Date';

            trigger OnValidate()
            var
                BadDateErr: Label 'Prad=ios data negali b9ti v4lesn4 nei pabaigos data';
            begin
                CheckStatusReleased();

                if ("Contract End Date" <> 0D) and ("Contract Start Date" > "Contract End Date") then
                    Error(BadDateErr);
            end;
        }
        field(22; "Contract End Date"; Date)
        {
            Caption = 'Contract End Date';

            trigger OnValidate()
            var
                BadDateErr: Label 'Prad=ios data negali b9ti v4lesn4 nei pabaigos data';
            begin
                CheckStatusReleased();

                if ("Contract End Date" <> 0D) and ("Contract Start Date" > "Contract End Date") then
                    Error(BadDateErr);
            end;
        }
    }

    keys
    {
        key(Key1; "Contract No.") { Clustered = true; }
        key(Key2; "Contract Start Date", "Contract End Date") { }
    }

    trigger OnInsert()
    var
        ClientContractSetup: Record "Client Contract Setup";
        NoSeriesManagement: Codeunit NoSeriesManagement;
    begin
        //Message('Before %1', ClientContractSetup."Contract Nos");       
        //ClientContractSetup.Get();
        //Message('After %1', ClientContractSetup."Contract Nos");

        if "Contract No." = '' then begin
            ClientContractSetup.Get();
            ClientContractSetup.TestField("Contract Nos");
            "Contract No." := NoSeriesManagement.GetNextNo(ClientContractSetup."Contract Nos", WorkDate(), true);
        end;
    end;

    trigger OnModify()
    begin
        CheckStatusReleased();
    end;

    trigger OnRename()
    begin
        Error('Rename not allowed');
    end;

    local procedure CheckStatusReleased()
    begin
        if Rec."Contract Status" = Rec."Contract Status"::Released then
            Error('Contract Released');
    end;

    local procedure CheckClient()
    var
        Customer: Record Customer;
        Vendor: Record Vendor;
    begin
        case Rec."Client Type" of
            Rec."Client Type"::Customer:
                if Customer.Get(Rec."Client No.") then
                    Customer.TestField(Blocked, Customer.Blocked::" ");
            Rec."Client Type"::Vendor:
                if Vendor.Get(Rec."Client No.") then
                    Vendor.TestField(Blocked, Vendor.Blocked::" ");
        end;
    end;
}