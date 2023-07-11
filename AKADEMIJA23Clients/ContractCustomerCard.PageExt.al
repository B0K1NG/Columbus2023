pageextension 50110 "Contract CustomerCard" extends "Customer Card"
{
    layout
    {
        addlast(General)
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

    actions
    {
        addlast("&Customer")
        {
            action(ClientContracts)
            {
                Caption = 'Client Contracts';
                ToolTip = 'Client Contracts';
                Image = Action;

                ApplicationArea = All;

                RunObject = Page "Client Contract List";
                RunPageLink = "Client No." = field("No."), "Client Type" = const(Customer);
            }
        }
        addlast(Category_Category9)
        {
            actionref(ClientContracts_Promoted; ClientContracts) { }
        }
    }
}