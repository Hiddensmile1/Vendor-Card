pageextension 50230 PurchaseOrderExt extends "Purchase Order"
{
    layout
    {
        // Add changes to page layout here
        modify(General)
        {
            Visible = true;
        }

        addafter("Document Date")
        {
            field("State"; Rec.State)
            {
                ApplicationArea = All;
                Editable = true;
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