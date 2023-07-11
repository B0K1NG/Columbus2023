page 50105 MyPage5
{
    Caption = 'AKADEMIJA DEMO PAGE';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Tasks;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                Caption = 'My Field Group';
                field(MyTextVariableCtrl; MyTextVariable)
                {
                    Caption = 'My Text';

                    trigger OnValidate()
                    begin
                        MyProcedure();
                    end;
                }
                field(MyLongTextVariableCtrl; MyLongTextVariable)
                {
                    Caption = 'Long text';

                    MultiLine = true;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                Caption = 'My Action';
                ToolTip = '';
                Image = Action;

                trigger OnAction()
                begin
                    MyProcedure();
                end;
            }
            action(OpenListPage)
            {
                Caption = 'Open My LIST PAGE';
                ToolTip = '';
                Image = Action;

                //RunObject = page MyPage6;

                trigger OnAction()
                begin
                    if Confirm('Open page?', true) then
                        Page.RunModal(Page::MyPage6);
                end;
            }
        }
    }

    var
        Ok: Boolean;
        MyTextVariable: Text[100];
        MyLongTextVariable: Text;

    local procedure MyProcedure()
    begin
        MyLongTextVariable := MyTextVariable;
    end;
}