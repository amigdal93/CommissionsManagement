pageextension 70100 PagExtUserSetup extends "User Setup"
{
    layout
    {
        addlast(content)
        {
            field("Commission Manager"; Rec."Commission Manager")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies whether the user is a commission manager. Only commission managers can make changes to rates and see the total commission calculation for a transaction.';
            }
        }
    }
}