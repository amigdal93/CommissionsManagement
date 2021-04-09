page 70105 PageSalesLineCommission
{
    Caption = 'Sales Line Commission';
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Sales Line";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                Editable = false;
                group(Line)
                {
                    Caption = 'Line';
                    field(Type; Rec.Type)
                    {
                        ApplicationArea = All;
                        ToolTip = 'Displays the type of the line';
                    }
                    field("No."; Rec."No.")
                    {
                        ApplicationArea = All;
                        ToolTip = 'Displays the number of the G/L account, item, resource, or item charge';
                    }
                    field(ItemDescription; Rec.Description)
                    {
                        ApplicationArea = All;
                        ToolTip = 'Displays the line description';
                    }
                }
                group(Commission)
                {
                    Caption = 'Commission';
                    field(CommissionableAmount; SalesCommissionLines."Commissionable Amount")
                    {
                        Caption = 'Commissionable Amount';
                        ToolTip = 'Specifies the total commissionable amount for this document';
                        ApplicationArea = All;
                    }
                    field(CommissionAmount; SalesCommissionLines."Commission Amount")
                    {
                        Caption = 'Commission Amount';
                        ToolTip = 'Specifies the total commission amount for this document';
                        ApplicationArea = All;
                    }
                }
            }
            part(SalesCommissionLines; PagSalesCommissionLines)
            {
                Caption = 'Sales Commission Lines';
                ApplicationArea = Basic, Suite;
                Editable = true;
                SubPageLink = "Document No." = FIELD("Document No."), "Document Type" = FIELD("Document Type"), "Line No." = FIELD("Line No.");
                UpdatePropagation = Both;
            }
        }
    }
    var
        SalesCommissionLines: Record TabSalesCommissionLines;
}