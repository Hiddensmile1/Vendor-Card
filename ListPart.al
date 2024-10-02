page 50192 "Pending Shipments"
{
    PageType = ListPart;
    SourceTable = "Sales Header";
    //filter on the sales orders that are pending completion.
    SourceTableView = WHERE("Completely Shipped" = CONST(false));
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Sales Order";
                }
                field("Order Date"; Rec."Order Date")
                {
                    ApplicationArea = All;
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}