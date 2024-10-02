page 50191 "Customer Sales History"
{
    PageType = CardPart;
    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            // Display Data as Cue tiles
            cuegroup(Overview)
            {
                field("No. of Quotes"; Rec."No. of Quotes")
                {
                    ApplicationArea = All;
                    // Make the cue interactive
                    DrillDownPageId = "Sales Quote";
                }
                field("No. of Orders"; Rec."No. of Orders")
                {
                    ApplicationArea = All;
                    // Make the cue interactive
                    DrillDownPageId = "Sales Order List";
                }
                field("No. of Invoices"; Rec."No. of Invoices")
                {
                    ApplicationArea = All;
                    // Make the cue interactive
                    DrillDownPageId = "Sales Invoice List";
                }
            }
        }
    }

}