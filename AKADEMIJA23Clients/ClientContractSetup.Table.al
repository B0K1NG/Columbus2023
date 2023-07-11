table 50111 "Client Contract Setup"
{
    Caption = 'Contract Setup';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(10; "Contract Nos"; Code[20])
        {
            Caption = 'Contract NoSeries';
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; "Primary Key") { Clustered = true; }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Primary Key") { }
        fieldgroup(Brick; "Primary Key") { }
    }

    trigger OnInsert()
    begin
        InitDefaultValues();
    end;

    procedure InsertIfNotExists()
    begin
        Reset();
        if not Get() then begin
            Init();
            Insert(true);
        end;
    end;

    local procedure InitDefaultValues()
    begin
        // numatytų reikšmių kūrimas
    end;
}