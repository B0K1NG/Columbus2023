table 50107 MyTable7
{
    fields
    {
        field(1; Code; Code[10]) { }
        field(2; Description; Text[50]) { }
        field(3; MyTable7Type; Enum MyEnum) { }
    }

    keys { key(Key1; MyTable7Type, Code) { } }
}

table 50108 MyTable8
{
    fields
    {
        field(1; Id; Integer) { }
        field(2; Type; Enum MyEnum) { }
        field(3; "Some Code"; Code[10])
        {
            TableRelation =
            if (Type = const(Type3)) MyTable3 else
            if (Type = const(Type5)) MyTable5.Code else
            if (Type = const(Type7)) MyTable7.Code
                where(MyTable7Type = const(Type7));
        }
    }

    keys { key(Key1; Id) { } }
}