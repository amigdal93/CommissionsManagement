tableextension 70103 TabExtSalesHeader extends "Sales Header"
{
    fields
    {
        field(70100; Salespersons; Integer)
        {
            Caption = 'Salespersons';
            //TableRelation = "F1 - Salespersons list"."No.";
            CalcFormula = Count("Salespersons list" WHERE("Customer No." = FIELD("Sell-to Customer No.")));
            Editable = false;
            FieldClass = FlowField;
        }
    }
}
