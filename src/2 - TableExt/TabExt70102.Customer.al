tableextension 70102 TabExtCustomer extends Customer
{
    fields
    {   // calculates how many Salespersons the customer have
        field(70100; Salespersons; Integer)
        {
            CalcFormula = Count("Salespersons list" WHERE("Customer No." = FIELD("No.")));
            Caption = 'Salespersons';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    procedure OpenSalespersonListEntries()
    var
        Salespersonlist: Record "Salespersons list";
    begin
        Salespersonlist.Reset();
        Salespersonlist.SetRange("Customer No.", "No.");
        if Salespersonlist.FindSet() then begin
            PAGE.Run(50502, Salespersonlist);
            Salespersonlist.SetCurrentKey("Customer No.");
        end else begin
            PAGE.Run(50502, Salespersonlist);
        end;
    end;
}