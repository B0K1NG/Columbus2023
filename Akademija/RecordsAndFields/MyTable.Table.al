table 50100 MyTable
{
    // Table Parameters

    fields
    {
        field(1; MyField; Integer)
        {
            // Field Parameters and Triggers
        }
        // Other Fields
    }

    keys
    {
        // First Key - Primary Key
        key(Key1; MyField) { Clustered = true; }
        // Other Keys  - Secondaries
    }

    // Field Groups

    // Global Variables

    // Table Triggers

    // Procedures
}