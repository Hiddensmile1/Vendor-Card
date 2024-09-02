tableextension 50241 "PurchaseInvoice Exts" extends "Purch. Rcpt. Header"
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