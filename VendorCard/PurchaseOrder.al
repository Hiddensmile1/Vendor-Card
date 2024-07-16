tableextension 50230 "PurchaseOrder Ext" extends "Purchase Header"
{
    fields
    {
        // Add changes to table fields here
        field(50220; "State"; code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = States;
        }
        modify("Buy-from Vendor No.")
        {
            trigger OnAfterValidate()
            var
                Vendor: Record Vendor;
            begin
                if "Buy-from Vendor No." <> '' then begin
                    "State" := '';
                    if Vendor.Get("Buy-from Vendor No.") then begin
                        "State" := Vendor."State";
                    end;
                end;
            end;
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