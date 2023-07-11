page 50108 MyPage8
{
    Caption = 'AKADEMIJA DEMO PAGE GROUP';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Tasks;

    layout
    {
        area(Content)
        {
            group(MyGroup1)
            {
                group(MyGroup2)
                {
                    field(MyInteger1; MyInteger1) { }
                    field(MyInteger2; MyInteger1) { }
                    field(MyInteger3; MyInteger1) { }
                    field(MyInteger4; MyInteger1) { }

                }
                group(MyGroup3)
                {
                    field(MyText1; MyText1) { }
                    field(MyText2; MyText1) { }
                    field(MyText3; MyText1) { }
                    field(MyText4; MyText1) { }
                }
            }
        }
    }

    var
        MyInteger1: Integer;
        MyInteger2: Integer;
        MyInteger3: Integer;
        MyInteger4: Integer;
        MyInteger5: Integer;
        MyInteger6: Integer;
        MyInteger7: Integer;
        MyInteger8: Integer;
        MyText1: Text;
        MyText2: Text;
        MyText3: Text;
        MyText4: Text;
        MyText5: Text;
        MyText6: Text;
        MyText7: Text;
        MyText8: Text;

}