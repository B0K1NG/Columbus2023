pageextension 50111 "Contract VendorCard" extends "Vendor Card"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addlast("Ven&dor")
        {
            action(ClientContracts)
            {
                Caption = 'Client Contracts';
                ToolTip = 'Client Contracts';
                Image = Action;

                ApplicationArea = All;

                RunObject = Page "Client Contract List";
                RunPageLink = "Client No." = field("No."), "Client Type" = const(Vendor);
            }
        }
        addlast(Category_Category9)
        {
            actionref(ClientContracts_Promoted; ClientContracts) { }
        }
    }
}