tableextension 50240 "PurchaseInvoice Ext" extends "Purch. Inv. Header"
{
    fields
    {
        // Add changes to table fields here
        field(50220; "State"; code[20])
        {
            DataClassification = ToBeClassified;
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