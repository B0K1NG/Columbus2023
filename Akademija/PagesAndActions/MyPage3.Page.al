page 50103 MyPage3
{
    SourceTable = Integer;

    layout
    {
        area(Content)
        {
            field(NumberParameters; Rec.Number)
            {
                // AboutText
                // AboutTextML
                // AboutTitle
                // AboutTitleML
                // AccessByPermission               
                // ApplicationArea
                // AssistEdit
                // AutoFormatExpression
                // AutoFormatType
                // BlankNumbers
                // BlankZero               
                // Caption
                // CaptionClass
                // CaptionML
                // CharAllowed
                // ClosingDates
                // ColumnSpan
                // DateFormula
                // DecimalPlaces
                // Description
                // DrillDown
                // DrillDownPageId
                // Editable
                // Enabled
                // ExtendedDatatype
                // HideValue
                // Image
                // Importance
                // Lookup
                // LookupPageId
                // MaxValue
                // MinValue
                // MultiLine
                // NavigationPageId
                // NotBlank
                // Numeric
                // ObsoleteReason
                // ObsoleteState
                // ObsoleteTag
                // ODataEDMType
                // OptionCaption
                // OptionCaptionML
                // QuickEntry
                // RowSpan
                // ShowCaption
                // ShowMandatory
                // SignDisplacement
                // Style
                // StyleExpr
                // TableRelation
                // Title
                // ToolTip
                // ToolTipML
                // ValuesAllowed
                // Visible 
                // Width

            }
            field(NumberTriggers; Rec.Number)
            {
                // Field parameters

                trigger OnAfterLookup(Selected: RecordRef)
                begin
                end;

                trigger OnAssistEdit()
                begin
                end;

                trigger OnControlAddIn(Index: Integer; Data: Text)
                begin
                end;

                trigger OnDrillDown()
                begin
                end;

                trigger OnLookup(var Text: Text): Boolean
                begin
                end;

                trigger OnValidate()
                begin
                end;
            }

            field(NumberCtrl; Rec.Number)
            {
                // Field Parameters
                Caption = 'Number';
            }
            field(GlobalVariableCtrl; GlobalVariable)
            {
                // Field Parameters
                Caption = 'Global Variable';

                // Field Triggers
                trigger OnValidate()
                begin
                    Rec.Number := GlobalVariable;
                end;
            }
        }
    }

    var
        GlobalVariable: Integer;
}