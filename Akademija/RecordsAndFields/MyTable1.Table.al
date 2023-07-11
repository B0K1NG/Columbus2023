table 50101 MyTable1
{
    // Access = Public;
    // Caption = 'Table Caption';
    // CaptionML = nenaudojamas;
    // ColumnStoreIndex = MyField;
    // CompressionType = Unspecified;
    // DataCaptionFields = MyField;
    // DataClassification = ToBeClassified;
    // DataPerCompany = true;
    // Description = '';
    // DrillDownPageId = 0;
    // Extensible = true;
    // InherentEntitlements = rimdx;
    // InherentPermissions = rimdx;
    // LinkedInTransaction = true;
    // LinkedObject = true;
    // LookupPageId = 0;
    // ObsoleteReason = '';
    // ObsoleteState = No;
    // ObsoleteTag = ''
    // PasteIsValid = true;
    // Permissions = tabledata MyTable1 = imdr;
    // ReplicateData = true;
    // Scope = Cloud;
    // TableType = Normal;

    fields
    {
        field(1; MyFieldWithTriggers; Integer)
        {
            trigger OnLookup()
            begin

            end;

            trigger OnValidate()
            begin

            end;
        }

        field(2; MyFieldWithParameters; Integer)
        {
            //Access
            //AccessByPermission
            //AutoFormatExpression
            //AutoFormatType
            //AutoIncrement
            //BlankNumbers
            //BlankZero
            //CalcFormula
            //Caption
            //CaptionClass
            //CaptionML
            //CharAllowed
            //ClosingDates
            //Compressed
            //DataClassification
            //DateFormula
            //DecimalPlaces
            //Description
            //Editable
            //Enabled
            //ExtendedDatatype
            //ExternalAccess
            //ExternalName
            //ExternalType
            //FieldClass
            //InitValue
            //MaxValue
            //MinValue
            //NotBlank
            //Numeric
            //ObsoleteReason
            //ObsoleteState
            //ObsoleteTag
            //OptionCaption
            //OptionCaptionML
            //OptionMembers
            //OptionOrdinalValues
            //SignDisplacement
            //SqlDataType
            //SqlTimestamp
            //Subtype
            //TableRelation
            //TestTableRelation
            //ValidateTableRelation
            //Width           
        }
    }

    keys
    {
        // First Key - Primary Key
        key(Key1; MyFieldWithTriggers) { Clustered = true; }
        // Other Keys  - Secondaries
    }

    // Field Groups

    // Global Variables

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

    // Procedures
}