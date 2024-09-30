page 50210 RoleCenterHeadline
{
    PageType = HeadlinePart;

    layout
    {
        area(Content)
        {
            group(General)
            {
                ShowCaption = false;

                field(Welcome; Welcome)
                {
                    ApplicationArea = All;
                }
                field(Awesome; DynamicsIsAwesomeLbl)
                {
                    ApplicationArea = All;

                    trigger OnDrillDown()
                    begin
                        Hyperlink('https://learn.microsoft.com/en-us/training/browse/?expanded=dynamics');
                    end;
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        Welcome := StrSubstNo(WelcomeLbl, UserId)
    end;

    var
        WelcomeLbl: Label 'Welcome Hidden Smile';

        DynamicsIsAwesomeLbl: Label '<qualifier>Microsoft Learn</qualifier><payload>Headlines in <emphasize>Business Central</emphasize> are awesome!</payload>';

        Welcome: Text;
}