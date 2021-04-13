page 70108 "Commission Ledger Entries"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Commission Ledger Entry";

    layout
    {
        area(Content)
        {
            repeater(Control1)
            {
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                }
                field("Salesperson Code"; Rec."Salesperson Code")
                {
                    ApplicationArea = All;
                }
                field("Salesperson Name"; Rec."Salesperson Name")
                {
                    ApplicationArea = All;
                }
                field("Document Type"; Rec."Document Type")
                {
                    ApplicationArea = All;
                }
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                }
                field("Base Amount"; Rec."Base Amount")
                {
                    ApplicationArea = All;
                }
                field("Commission Amount"; Rec."Commission Amount")
                {
                    ApplicationArea = All;
                }
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}