pageextension 50241 PurchaseInvoiceExts extends "Purchase Invoice"
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