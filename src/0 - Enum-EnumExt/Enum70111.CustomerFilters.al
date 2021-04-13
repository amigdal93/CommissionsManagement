enum 70111 "Customer Filters"
{
    Extensible = true;

    value(0; " ") { Caption = ' '; }
    value(1; "Customer") { Caption = 'Customer'; } // The rate applies to a particular customer
    value(2; "Customer Group") { Caption = 'Customer Group'; } // The commission will apply to all customers assigned to a particular Customer Commission Group
    value(3; "All Customers") { Caption = 'All Customers'; } //  This rate will apply to all customers
}