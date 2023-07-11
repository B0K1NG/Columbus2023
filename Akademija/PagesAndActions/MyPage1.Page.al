page 50101 MyPage1
{
    // AboutText
    // AboutTextML
    // AboutTitle
    // AboutTitleML
    // AccessByPermission
    // AdditionalSearchTerms
    // AdditionalSearchTermsML
    // APIGroup
    // APIPublisher
    // APIVersion
    // ApplicationArea
    // AutoSplitKey
    // Caption
    // CaptionML
    // CardPageId
    // ChangeTrackingAllowed
    // ContextSensitiveHelpPage
    // DataAccessIntent
    // DataCaptionExpression
    // DataCaptionFields
    // DelayedInsert
    // DeleteAllowed
    // Description
    // Editable
    // EntityCaption
    // EntityCaptionML
    // EntityName
    // EntitySetCaption
    // EntitySetCaptionML
    // EntitySetName
    // Extensible
    // HelpLink
    // InherentEntitlements
    // InherentPermissions
    // InsertAllowed
    // InstructionalText
    // InstructionalTextML
    // LinksAllowed
    // ModifyAllowed
    // MultipleNewLines
    // ObsoleteReason
    // ObsoleteState
    // ObsoleteTag
    // ODataKeyFields
    // PageType
    // Permissions
    // PopulateAllFields
    // PromotedActionCategories
    // PromotedActionCategoriesML
    // QueryCategory
    // RefreshOnActivate
    // SaveValues
    // ShowFilter
    // SourceTable
    // SourceTableTemporary
    // SourceTableView
    // UsageCategory

    // Page Layout - Fields and Parts
    layout
    {
        area(Content)
        {
            field(Name; 'MyField') { }
            // Other Fields and Parts
        }
    }

    // Page Actions
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                // Do Something
            }
        }
    }
    // Page Triggers

    trigger OnAfterGetCurrRecord()
    begin
    end;

    trigger OnClosePage()
    begin
    end;

    trigger OnAfterGetRecord()
    begin
    end;

    trigger OnDeleteRecord(): Boolean
    begin
    end;

    trigger OnFindRecord(Which: Text): Boolean
    begin
    end;

    trigger OnInit()
    begin
    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
    end;

    trigger OnModifyRecord(): Boolean
    begin
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
    end;

    trigger OnNextRecord(Steps: Integer): Integer
    begin
    end;

    trigger OnOpenPage()
    begin
    end;

    trigger OnPageBackgroundTaskCompleted(TaskId: Integer; Results: Dictionary of [Text, Text])
    begin
    end;

    trigger OnPageBackgroundTaskError(TaskId: Integer; ErrorCode: Text; ErrorText: Text; ErrorCallStack: Text; var IsHandled: Boolean)
    begin
    end;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
    end;

    // Page Global Variables

    // Page Procedures
}
