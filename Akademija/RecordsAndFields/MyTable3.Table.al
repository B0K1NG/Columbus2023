table 50103 MyTable3
{
    fields
    {
        field(1; Code; Code[10]) { }
        field(2; Description; Text[50]) { }
    }

    keys { key(Key1; Code) { } }
}

table 50104 MyTable4
{
    fields
    {
        field(1; Id; Integer) { }
        field(2; "Some Code"; Code[10])
        {
            TableRelation = MyTable3;
        }
    }

    keys { key(Key1; Id) { } }
}