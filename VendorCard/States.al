table 50220 "States"
{
    fields
    {
        field(1; "State Code"; Code[20])
        {
            NotBlank = true;


        }
        field(2; "State Description"; Text[600])
        {
            NotBlank = true;

        }
    }
    keys
    {
        key(PK; "State Code")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "State Code", "State Description")
        {

        }
    }
}