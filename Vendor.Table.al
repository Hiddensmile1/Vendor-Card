tableextension 50220 "Vendor Ext" extends Vendor
{
    fields
    {
        // Add changes to table fields here
        field(50220; "State"; code[20])
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