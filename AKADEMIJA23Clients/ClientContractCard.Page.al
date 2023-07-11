page 50111 "Client Contract Card"
{
    Caption = 'Client Contract';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = "Client Contract";

    layout
    {
        area(Content)
        {
            group(Genaral)
            {
                Caption = 'General';
                field("Contract No."; Rec."Contract No.")
                {
                    ToolTip = 'Contract No.';
                    Editable = Rec."Contract Status" = Rec."Contract Status"::Open;
                }
                field("Client Type"; Rec."Client Type")
                {
                    ToolTip = 'Client Type';
                    Editable = Rec."Contract Status" = Rec."Contract Status"::Open;
                }
                field("Client No."; Rec."Client No.")
                {
                    ToolTip = 'Client No.';
                    Editable = Rec."Contract Status" = Rec."Contract Status"::Open;
                }
                field("Contract Amount"; Rec."Contract Amount")
                {
                    ToolTip = 'Contract Amount';
                    //Editable = Rec."Contract Status" = Rec."Contract Status"::Open;
                }
                field("Contract Start Date"; Rec."Contract Start Date")
                {
                    ToolTip = 'Contract Start Date';
                    Editable = Rec."Contract Status" = Rec."Contract Status"::Open;
                }
                field("Contract End Date"; Rec."Contract End Date")
                {
                    ToolTip = 'Contract End Date';
                    Editable = Rec."Contract Status" = Rec."Contract Status"::Open;
                }
                field("Contract Status"; Rec."Contract Status")
                {
                    ToolTip = 'Contract Status';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ReleaseContract)
            {
                Caption = 'Release';
                ToolTip = 'Release';

                trigger OnAction()
                begin
                    Codeunit.Run(Codeunit::"Client Contract - Release", Rec);
                end;
            }

            action(OpenContract)
            {
                Caption = 'Open';
                ToolTip = 'Open';

                trigger OnAction()
                var
                    ClientContractRelease: Codeunit "Client Contract - Release";
                begin
                    ClientContractRelease.OpenContract(Rec);
                end;
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    begin
        CurrPage.Editable := Rec."Contract Status" = Rec."Contract Status"::Open;
    end;
}