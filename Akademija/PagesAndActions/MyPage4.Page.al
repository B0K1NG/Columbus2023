page 50104 MyPage4
{
    SourceTable = Integer;

    layout
    {
        area(Content)
        {
            field(NumberCtrl; Rec.Number) { }
        }
    }

    actions
    {
        area(Creation)
        {
            group(MyActionGroup)
            {
                action(MyActionRunObject)
                {
                    Caption = 'Action Caption';
                    ToolTip = 'Action Tooltip';
                    Image = Action;

                    RunObject = page MyPage;
                }

                action(MyActionTrigger)
                {
                    Caption = 'Action Caption';
                    ToolTip = 'Action Tooltip';
                    Image = Action;

                    trigger OnAction()
                    begin
                        Page.RunModal(Page::MyPage);
                    end;
                }

            }
        }
        area(Navigation) { }
        area(Processing) { }
        area(Reporting) { }
        area(Promoted) { }
    }

    var
        GlobalVariable: Integer;
}