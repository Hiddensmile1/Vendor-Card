page 50190 RoleCenterName
{
    PageType = RoleCenter;
    Caption = 'My Role Center';

    actions
    {
        area(Sections)
        {

            group(PostedInvoices)
            {
                Caption = 'Posted Invoices';
                Image = RegisteredDocs;

                action(PostedServiceInvoice)
                {
                    Caption = 'Posted Service Invoices';
                    RunObject = Page "Posted Service Invoices";
                    ApplicationArea = All;
                }

                action(PostedPurchaseInvoice)
                {
                    Caption = 'Posted Purchase Invoices';
                    RunObject = Page "Posted Purchase Invoice";
                    ApplicationArea = All;
                }

                group(PurchaseDocument)
                {
                    Caption = 'Purchase Document';

                    action(PurchaseOrder)
                    {
                        Caption = 'Purchase Order';
                        RunObject = Page "Purchase Order";
                        ApplicationArea = All;
                    }
                    action(PurchaseInvoice)
                    {
                        Caption = 'Purchase Invoice';
                        RunObject = Page "Purchase Invoice";
                        ApplicationArea = All;
                    }
                }
            }
        }
        area(Embedding)
        {
            action(Purchase)
            {
                Caption = 'Purchase Lists';
                RunObject = Page "Purchase List";
                ApplicationArea = All;
            }
            action(Sales)
            {
                Caption = 'Sales Lists';
                RunObject = Page "Sales List";
                ApplicationArea = All;
            }
            action(Services)
            {
                Caption = 'Service Lists';
                RunObject = Page "Service List";
                ApplicationArea = All;
            }
            action(Inventory)
            {
                Caption = 'Inventory Lists';
                RunObject = Page "Inventory Comment List";
                ApplicationArea = All;
            }
        }

        area(Creation)
        {
            action(AddPurchaseOrder)
            {
                Caption = 'Add Purchase Order';
                RunObject = Page "Purchase Order";
                ApplicationArea = All;
                RunPageMode = Create;
            }
            action(AddPurchaseInvoice)
            {
                Caption = 'Add Purchase Invoice';
                RunObject = Page "Purchase Invoice";
                ApplicationArea = All;
                RunPageMode = Create;
            }
            action(AddPurchaseQuote)
            {
                Caption = 'Add Purchase Quote';
                RunObject = Page "Purchase Quote";
                ApplicationArea = All;
                RunPageMode = Create;
            }
        }

        area(Processing)
        {
            action(PurchaseInvoiceProcess)
            {
                Caption = 'Purchase Invoice';
                RunObject = Page "Purchase Invoice";
                ApplicationArea = All;
            }
        }
        area(Reporting)
        {
            action(PurchaseInvoiceReport)
            {
                Caption = 'Purchase Invoice Report';
                RunObject = Report "Purchase - Invoice";
                ApplicationArea = All;
                Image = Report;
            }
        }
    }
}
profile DemoProfile
{
    ProfileDescription = 'Demo Profile';
    RoleCenter = RoleCenterName;
    Caption = 'Demo Profile';
}