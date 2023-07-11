table 50102 MyTable2
{
    Caption = 'Table Caption';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; MyFieldInteger; Integer) { }
        field(2; MyFieldCode; Code[10]) { }
        field(3; MyFieldText; Text[50]) { }
        field(4; MyFieldDecimal; Decimal) { }
        field(5; MyFieldBoolean; Boolean) { }
        field(6; MyFieldDate; Date) { }
        field(7; MyFieldTime; Time) { }
        field(8; MyFieldDateTime; DateTime) { }
        field(9; MyFieldMedia; Media) { }
        field(10; MyFieldBlob; Blob) { }
        field(11; MyFieldEnum; Enum "Summary Type") { }
    }

    keys
    {
        // First Key - Primary Key
        key(Key1; MyFieldInteger) { Clustered = true; }
        // Other Keys  - Secondaries
    }

    // Field Groups

    // Global Variables

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

    // Procedures
}