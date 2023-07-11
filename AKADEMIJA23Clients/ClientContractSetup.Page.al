
page 50112 "Client Contract Setup"
{
    Caption = 'Client Contract Setup';
    PageType = Card;
    UsageCategory = Administration;
    ApplicationArea = All;
    SourceTable = "Client Contract Setup";
    InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Contract Nos"; Rec."Contract Nos")
                {
                    ToolTip = 'Contract No Series';
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.InsertIfNotExists();
    end;
}