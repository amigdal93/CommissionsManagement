page 70104 PagCommissionSplit
{
    Caption = 'Commission Split';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = TabCommissionSplit;

    layout
    {
        area(Content)
        {
            repeater(Control1)
            {
                field("Table No."; Rec."Table No.")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field(Subtype; Rec.Subtype)
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Sub Code"; Rec."Sub Code")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = All;
                }
                field("End Date"; Rec."End Date")
                {
                    ApplicationArea = All;
                }
                field("Salesperson Code"; Rec."Salesperson Code")
                {
                    ApplicationArea = All;
                }
                field(Split; Rec.Split)
                {
                    ApplicationArea = All;
                }
                field("Salesperson Name"; Rec."Salesperson Name")
                {
                    ApplicationArea = All;
                }
                field(Occurence; Rec.Occurence)
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Salesperson Enabled"; Rec."Salesperson Enabled")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
            }
        }
    }
}