pageextension 70104 PagExtSalesInvoiceSubform extends "Sales Invoice Subform"
{
    actions
    {
        addfirst("&Line")
        {
            action("Sales Commission")
            {
                ApplicationArea = All;
                Caption = 'Sales Commission';
                Promoted = true;
                PromotedCategory = Category9;
                Image = Entry;
                ToolTip = 'Specifies the commission rates for the salespeople for this document line.';

                trigger OnAction()
                var
                    TabSalesCommissionLines: Record TabSalesCommissionLines;
                    PagSalesCommissionLines: Page PagSalesCommissionLines;
                begin
                    TabSalesCommissionLines.SetRange("Document No.", Rec."Document No.");
                    TabSalesCommissionLines.SetRange("Line No.", Rec."Line No.");
                    PagSalesCommissionLines.SetTableView(TabSalesCommissionLines);
                    Page.RunModal(Page::PagSalesCommissionLines);
                end;
            }
        }
    }
}