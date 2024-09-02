tableextension 50224 "Gen Jnl Line Ext" extends "Gen. Journal Line"
{
    fields
    {
        // Add changes to table fields here
        field(50220; "States"; code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = States;

        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}