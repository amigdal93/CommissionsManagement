page 70106 PagSalesCommissionLines
{
    Caption = 'Sales Commission Lines';
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = TabSalesCommissionLines;

    layout
    {
        area(Content)
        {
            repeater(Control1)
            {
                field("Salesperson Code"; Rec."Salesperson Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'The salesperson receiving this commission';
                }
                field("Salesperson Name"; Rec."Salesperson Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'The name of the salesperson';
                }
                field("Commission Rate"; Rec."Commission Rate")
                {
                    ApplicationArea = All;
                    ToolTip = 'The commission rate for this sale';
                }
                field("Base %"; Rec."Base %")
                {
                    ApplicationArea = All;
                    ToolTip = 'The percentage of the total profit that is used to calculate the permission for this salesperson';
                }
                field("Commissionable Amount"; Rec."Commissionable Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'The base amount to calculate commission from';
                }
                field("Commission Amount"; Rec."Commission Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'The commission that is calculated to be due to the salesperson';
                }
                field("Document Line Type"; Rec."Document Line Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'The type of the line of the original transaction';
                }
                field("Doc. Line Type No."; Rec."Doc. Line Type No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'The number of the G/L account, item, resource, or item charge';
                }
                field("Commission Type"; Rec."Commission Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the commission type for the rate used';
                }
                field("System Created"; Rec."System-Created")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if this commission entry is a manual setup or a calculated commission';
                }
                field("Maximum Commission Limit"; Rec."Maximum Commission Limit")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies whether the commission was reduced due to reaching the commission limit for the period.';
                }
            }
        }
    }
}