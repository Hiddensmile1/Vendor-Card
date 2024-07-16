pageextension 50220 VendorCardExt extends "Vendor Card"
{
    layout
    {
        // Add changes to page layout here
        modify("Address & Contact")
        {
            Visible = true;
        }
        addafter("Country/Region Code")
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