pageextension 70103 PagExtSalesInvoice extends "Sales Invoice"
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
                    GenericCU.OpenSalespersonListEntries(Rec."Sell-to Customer No.");
                end;
            }
        }
    }

    actions
    {
        addafter("F&unctions")
        {
            group(Commissions)
            {
                /* action("Addition Salespersons/Purchasers")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Addition Salespersons/Purchasers';
                    Image = SalesPurchaseTeam;
                    RunObject = Page PagAdditionSalespersPurchaser;

                    trigger OnAction()
                    begin

                    end;
                } */
                action("Show Commissions")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Show Commissions';
                    Image = Percentage;
                    RunObject = Page "Commissions Lines";
                }
            }
        }
    }
    var
        GenericCU: Codeunit GenericCU;
}