tableextension 50110 "Contract Customer" extends Customer
{
    fields
    {
        field(50110; "Contract Count"; Integer)
        {
            Caption = 'Contract Count';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula =
                count("Client Contract"
                    where("Client No." = field("No."),
                        "Client Type" = const(Customer),
                        "Contract Start Date" = field("Date Filter")
                        ));
        }
        field(50111; "Contract Amount"; Decimal)
        {
            Caption = 'Contract Amount';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula =
                sum("Client Contract"."Contract Amount"
                    where("Client No." = field("No."),
                        "Client Type" = const(Customer),
                        "Contract Start Date" = field("Date Filter")
                        ));
        }
    }
}