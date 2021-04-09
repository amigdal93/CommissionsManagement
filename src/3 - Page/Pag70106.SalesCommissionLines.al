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
                }
                field("Salesperson Name"; Rec."Salesperson Name")
                {
                    ApplicationArea = All;
                }
                field("Commission Rate"; Rec."Commission Rate")
                {
                    ApplicationArea = All;
                }
                field("Base %"; Rec."Base %")
                {
                    ApplicationArea = All;
                }
                field("Commissionable Amount"; Rec."Commissionable Amount")
                {
                    ApplicationArea = All;
                }
                field("Commission Amount"; Rec."Commission Amount")
                {
                    ApplicationArea = All;
                }
                field("Document Line Type"; Rec."Document Line Type")
                {
                    ApplicationArea = All;
                }
                field("Doc. Line Type No."; Rec."Doc. Line Type No.")
                {
                    ApplicationArea = All;
                }
                field("Commission Type"; Rec."Commission Type")
                {
                    ApplicationArea = All;
                }
                field("System Created"; Rec."System-Created")
                {
                    ApplicationArea = All;
                }
                field("Maximum Commission Limit"; Rec."Maximum Commission Limit")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}