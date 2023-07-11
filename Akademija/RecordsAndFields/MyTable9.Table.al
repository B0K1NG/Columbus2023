table 50109 MyTable9
{
    Caption = 'Mano Lentelė';
    DataClassification = CustomerContent;

    fields
    {
        field(1; MyField; Code[20])
        {
            Caption = 'Mano Laukas';
        }
        field(2; MyTextField; Text[50])
        {

        }
    }

    keys
    {
        key(Key1; MyField)
        {
            Clustered = true;
        }
        key(key2; MyTextField)
        {

        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        CheckBeforeInsert();
    end;

    procedure CheckBeforeInsert()
    begin
        Rec.MyTextField := 'Labas';

        //CheckBeforeInsert();
    end;
}