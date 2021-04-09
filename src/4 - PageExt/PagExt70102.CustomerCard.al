pageextension 70102 PagExtCustomerCard extends "Customer Card"
{
    layout
    {
        modify("Salesperson Code")
        {
            Visible = false;
        }

        addafter("Salesperson Code")
        {
            field(Salespersons; Rec.Salespersons)
            {
                ApplicationArea = All;

                trigger OnDrillDown()
                begin
                    GenericCU.OpenSalespersonListEntries(Rec."No.");
                end;
            }
        }
    }

    actions
    {
        addlast("&Customer")
        {
            action("Salesperson Commission Split")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Salesperson Commission Split';
                Promoted = true;
                PromotedCategory = Category9;
                Image = Entry;
                Description = 'Specifies one to many salespeople and the percentage of the sale the commission is calculaed on.';

                trigger OnAction()
                var
                    CommissionSplitPag: Page PagCommissionSplit;
                    CommissionSplitTab: Record TabCommissionSplit;
                begin
                    CommissionSplitTab.SetRange("No.", Rec."No.");
                    CommissionSplitPag.SetTableView(CommissionSplitTab);
                    Page.Run(Page::PagCommissionSplit, CommissionSplitTab);
                end;
            }
            action("Commissions")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Commissions';
                Promoted = true;
                PromotedCategory = Category9;
                Image = Entry;
                Description = 'Specifies the commission rates for different salespeople for this customer.';

                trigger OnAction()
                var
                    CommissionRateSpecPag: Page PagCommissionRateSpec;
                    CommissionRateSpecTab: Record TabCommissionRateSpec;
                begin
                    CommissionRateSpecTab.SetRange("Customer No.", Rec."No.");
                    CommissionRateSpecTab.SetRange("Ship-to Code", Rec."Ship-to Code");
                    CommissionRateSpecPag.SetTableView(CommissionRateSpecTab);
                    Page.Run(Page::PagCommissionRateSpec, CommissionRateSpecTab);
                end;
            }
        }
    }
    var
        GenericCU: Codeunit GenericCU;
}