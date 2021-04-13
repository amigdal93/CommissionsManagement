enum 70110 "Salesperson Filters"
{
    Extensible = true;

    value(0; " ") { Caption = ' '; }
    value(1; "Salesperson") { Caption = 'Salesperson'; } // The rate applies to a particular salesperson
    value(2; "Salesperson Group") { Caption = 'Salesperson Group'; } // The commission will apply to all salespeople assigned to a particular Salespeople Commission Group
    value(3; "All Salespeople") { Caption = 'All Salespeople'; } //  This rate will apply to all salespeople
}