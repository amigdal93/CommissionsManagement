enum 70107 "Calculate Commissions On"
{
    Extensible = true;
    value(0; " ") { Caption = ' '; }
    value(1; "Gross Profit") { Caption = 'Gross Profit'; }
    // Commissions are calculated on the difference between Sales Amount and Cost.
    value(2; "Sales") { Caption = 'Sales'; }
    // Commissions are calculated on the sales amount.
    value(3; "Quantity") { Caption = 'Quantity'; }
    // The commissions are calculated based on the quantity that is sold. This is primarily important for royalty payments.
}