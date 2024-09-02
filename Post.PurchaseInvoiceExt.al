pageextension 50240 PurchaseInvoiceExt extends "Posted Purchase Invoice"
{
    layout
    {
        // Add changes to page layout here
        modify(General)
        {
            Visible = true;
        }

        addbefore("Document Date")
        {
            field("State"; Rec.State)
            {
                ApplicationArea = All;
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