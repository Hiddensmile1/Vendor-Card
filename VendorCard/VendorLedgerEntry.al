pageextension 50221 VendorLedgerExt extends "Vendor Ledger Entries"
{
    layout
    {
        // Add changes to page layout here
        modify(Description)
        {
            Visible = false;
        }
        addafter("Document Type")
        {
            field(State; Rec.State)
            {
                ApplicationArea = All;
                Editable = false;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}