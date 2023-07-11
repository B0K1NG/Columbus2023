page 50102 MyPage2
{
    SourceTable = Integer;

    layout
    {
        area(Content)
        {
            field(Number; Rec.Number) { }

            group(MyGroup)
            {
                field(GlobalVariableCtrl; GlobalVariable) { }
            }

            part(MyPageCtrl; MyPage) { }
        }
        area(FactBoxes)
        {
            part(MyFactBoxPageCtrl; MyPage) { }
            systempart(LinksCtrl; Links)
            {
                ApplicationArea = RecordLinks;
            }
        }
    }

    var
        GlobalVariable: Integer;
}