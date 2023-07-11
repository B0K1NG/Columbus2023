page 50106 MyPage6
{
    Caption = 'AKADEMIJA LIST PAGE';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = MyTable2;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(MyFieldInteger; Rec.MyFieldInteger) { }
                field(MyFieldCode; Rec.MyFieldCode) { }
                field(MyFieldDate; Rec.MyFieldDate) { }
                field(MyFieldText; Rec.MyFieldText) { }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }

    var
        Ok: Boolean;
}