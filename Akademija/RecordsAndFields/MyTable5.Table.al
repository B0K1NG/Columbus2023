table 50105 MyTable5
{
    fields
    {
        field(1; Code; Code[10]) { }
        field(2; Description; Text[50]) { }
        field(3; MyTable5_Type; Enum MyEnum) { }
    }

    keys { key(Key1; MyTable5_Type, Code) { } }
}

table 50106 MyTable6
{
    fields
    {
        field(1; Id; Integer) { }
        field(2; MyTable6_Type; Enum MyEnum) { }
        field(3; "Some Code"; Code[10])
        {
            TableRelation =
            if (MyTable6_Type = const(Type3)) MyTable3 else
            if (MyTable6_Type = const(Type5)) MyTable5.Code;
        }
    }

    keys { key(Key1; Id) { } }
}