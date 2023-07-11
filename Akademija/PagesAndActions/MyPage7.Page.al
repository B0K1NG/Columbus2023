page 50107 MyPage7
{
    Caption = 'AKADEMIJA LIST PAGE NEW';
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


    trigger OnAfterGetCurrRecord()
    begin
        Ok := Confirm('OnAfterGetCurrRecord()', true);
    end;

    trigger OnClosePage()
    begin
        Ok := Confirm('OnClosePage()', true);
    end;

    trigger OnAfterGetRecord()
    begin
        Ok := Confirm('OnAfterGetRecord()', true);
    end;

    // trigger OnDeleteRecord(): Boolean
    // begin
    //     Ok := Confirm('OnDeleteRecord()', true);
    // end;

    // trigger OnFindRecord(Which: Text): Boolean
    // begin
    //     Ok := Confirm('OnFindRecord() - %1', true, Which);
    // end;

    trigger OnInit()
    begin
        Ok := Confirm('OnInit()', true);
    end;

    // trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    // begin
    //     Ok := Confirm('OnInsertRecord() - %1', true, BelowxRec);
    // end;

    // trigger OnModifyRecord(): Boolean
    // begin
    //     Ok := Confirm('OnModifyRecord()', true);
    // end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Ok := Confirm('OnNewRecord() - %1', true, BelowxRec);
    end;

    // trigger OnNextRecord(Steps: Integer): Integer
    // begin
    //     Ok := Confirm('OnNextRecord() - %1', true, Steps);
    // end;

    trigger OnOpenPage()
    begin
        Ok := Confirm('OnOpenPage()', true);
    end;

    // trigger OnQueryClosePage(CloseAction: Action): Boolean
    // begin
    //     Ok := Confirm('OnQueryClosePage() - %1', true, CloseAction);
    // end;

    var
        Ok: Boolean;
}