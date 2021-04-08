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
                    Rec.OpenSalespersonListEntries();
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
                Image = Entry;
                Description = 'Specifies one to many salespeople and the percentage of the sale the commission is calculaed on.';

                trigger OnAction()
                var

                begin

                end;
            }
            action("Commissions")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Commissions';
                Image = Entry;
                Description = 'Specifies the commission rates for different salespeople for this customer.';

                trigger OnAction()
                var
                    CommissionRateSpecPag: Page PagCommissionRateSpec;
                    CommissionRateSpecTab: Record TabCommissionRateSpec;
                    Customer: Record Customer;
                begin
                    CommissionRateSpecTab.SetRange("Customer No.", Rec."No.");
                    CommissionRateSpecPag.SetTableView(CommissionRateSpecTab);
                    Page.Run(Page::PagCommissionRateSpec, CommissionRateSpecTab);
                end;
            }
        }
    }
}