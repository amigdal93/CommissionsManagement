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
}