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
                    }
                    field("No."; Rec."No.")
                    {
                        ApplicationArea = All;
                    }
                    field(ItemDescription; Rec.Description)
                    {
                        ApplicationArea = All;
                    }
                }
                group(Commission)
                {
                    Caption = 'Commission';
                    field(CommissionableAmount; SalesCommissionLines."Commissionable Amount")
                    {
                        Caption = 'Commissionable Amount';
                        ApplicationArea = All;
                    }
                    field(CommissionAmount; SalesCommissionLines."Commission Amount")
                    {
                        Caption = 'Commission Amount';
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