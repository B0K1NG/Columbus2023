pageextension 50112 "Contract CustomerList" extends "Customer List"
{
    layout
    {
        addlast(Control1)
        {
            field("Contract Count"; Rec."Contract Count")
            {
                ToolTip = 'Contract Count';
                ApplicationArea = All;
            }
            field("Contract Amount"; Rec."Contract Amount")
            {
                ToolTip = 'Contract Amount';
                ApplicationArea = All;
            }
        }
    }
}