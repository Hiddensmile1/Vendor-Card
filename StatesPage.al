page 50220 "StatePage1"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = States;
    DataCaptionFields = "State Code", "State Description";


    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("State Code"; Rec."State Code")
                {
                    ApplicationArea = All;

                }
                field("State Description"; Rec."State Description")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }


    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}